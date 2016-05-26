require 'test_helper'
require 'generators/loco/controller/controller_generator'

module Loco
  class Loco::ControllerGeneratorTest < Rails::Generators::TestCase
    tests Loco::ControllerGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
