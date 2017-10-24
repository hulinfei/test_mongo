class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  
  # 标题
  field :title, type: String
  field :content, type: String
  field :age, type: Integer, default: 13
  field :started_at, type: DateTime, default: -> { Time.now }
  field :comments_count, type: Integer


  index age: 1

  validates_presence_of :title

  has_many :comments
  accepts_nested_attributes_for :comments


end
