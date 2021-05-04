FactoryBot.define do
  factory :user do
    # association :order, factory: :order
    login { 'Login' }
  end
end
