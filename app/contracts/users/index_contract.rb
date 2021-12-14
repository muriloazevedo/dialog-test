# frozen_string_literal: true

module Users
  class IndexContract < Dry::Validation::Contract
    params do
      optional(:q).maybe(:string)
    end
  end
end
