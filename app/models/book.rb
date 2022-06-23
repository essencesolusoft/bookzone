require 'elasticsearch/model'


class Book < ApplicationRecord
	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks

    # index_name [Rails.env, Rails.application.class.module_parent_name.underscore, self.name.downcase].join('_')

 #    settings index: { number_of_shards: 1 } do
	#     mappings do
	#         indexes :id, type: 'integer'
	#     end
	# end
	
end
