class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :msg, type: String
  field :name, type: String
  belongs_to :post, counter_cache: true

end
