class ListSerializer < ActiveModel::Serializer
  attributes :id, :name :editable
  belongs_to :user
  def editable
    scope == object.user
  end
end
