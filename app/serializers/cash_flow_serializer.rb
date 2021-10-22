class CashFlowSerializer
  include JSONAPI::Serializer
  attributes :title, :is_income, :price, :user, :created_at
end
