require 'helper'

class TestApp < Minitest::Should::TestCase

  context "with an application instance" do
    setup do
      @app = App.new
    end

    should "have a proper greeting" do
      assert_equal "hello", @app.greeting
    end
  end
end