module RailsControllerResource
  class Base
    class << self
      def collection_scope(collection_name)
        define_method collection_name do
          yield
        end
      end
    end
  end
end
