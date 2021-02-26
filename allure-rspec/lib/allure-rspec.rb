# rubocop:disable Naming/FileName
# frozen_string_literal: true

require "allure-ruby-commons"

require_rel "allure_rspec/**/*.rb"

module AllureRspec
  class << self
    # Get allure cucumber configuration
    # @return [RspecConfig]
    def configuration
      RspecConfig.instance
    end

    # Set allure configuration
    # @yieldparam [RspecConfig]
    # @yieldreturn [void]
    # @return [void]
    def configure
      yield(configuration)
    end
  end
end

# Rspec formatter class shorthand
AllureRspecFormatter = AllureRspec::RSpecFormatter
# rubocop:enable Naming/FileName
