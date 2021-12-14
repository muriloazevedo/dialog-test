module Users
  class Index
    include ::HasContract
    include ::Validations::Model

    contract_class Users::IndexContract

    def initialize(params = {})
      create_contract(params.to_h)
    end

    def call
      check_contract!
      process
    end

    def process
      users = User.all
      if contract.values[:q]
        search = contract.values[:q]
        users = users.where('name ILIKE ?', "%#{search}%")
        users = users.or(User.where('company ILIKE ?', "%#{search}%"))
        users = users.or(User.where('email ILIKE ?', "%#{search}%"))
      end
      users
    end
  end
end