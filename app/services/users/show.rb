module Users
  class Show
    include ::HasContract
    include ::Validations::Model

    contract_class Users::ShowContract

    def initialize(params)
      create_contract(params.to_h)
    end

    def call
      check_contract!
      process
    end

    def process
      User.find(contract.values[:id])
    end
  end
end