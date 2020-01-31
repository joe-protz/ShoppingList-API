class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :editable
  belongs_to :list
  def editable
    scope == object.list.user
  end
end
