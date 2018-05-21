require 'spec_helper'

RSpec.describe 'Using the collection_scope method' do
  let!(:user1) { User.create!(name: 'User One') }
  let!(:user2) { User.create!(name: 'User Two') }
  let(:collection_name) { 'users' }
  let(:controller_resource_class) do
    coll_name = collection_name
    Class.new(RailsControllerResource::Base) do
      collection_scope coll_name.to_sym do
        User.all
      end
    end
  end

  subject { controller_resource_class.new }

  it 'provides a method with the collection name' do
    expect(subject).to respond_to(collection_name)
  end

  describe 'when calling the collection name method' do
    subject { super().public_send(collection_name) }

    it 'returns the value provided by the collection_scope block' do
      expect(subject).to eq(User.all)
    end
  end
end
