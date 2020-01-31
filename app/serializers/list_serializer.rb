class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :editable
  belongs_to :user
  has_many :items 
  def editable
    scope == object.user
  end
end
