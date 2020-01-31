# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :items,:through => :list
  has_many :lists , dependent: :destroy
  
end
