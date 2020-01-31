class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :editable
  belongs_to :user, :through => :list 
  def editable
    scope == object.user
  end
end
