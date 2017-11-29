class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :editable
  def editable
    scope == object.user
  end
end
