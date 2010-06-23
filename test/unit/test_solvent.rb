require File.join(File.dirname(__FILE__), 'test_helper')

class SolventTest < Test::Unit::TestCase

  context "Solvent" do
    should "have .expires that creates new instance" do
      url = "oh hi"
      ve_stub = stub('VeStub', :expire => "1")
      Solvent.expects(:new).with(url).returns ve_stub

      assert_equal "1", Solvent.expire(url)
    end
  end

  context "A Solvent" do
    setup do
      @url = "my url"
      @ve = Solvent.new(@url)
    end

    should "create a new Typhoeus::Easy and set method to purge" do
      Typhoeus::Easy.any_instance.expects('method=').with(:purge).once
      Typhoeus::Easy.any_instance.expects('perform').once.returns 200

      assert_nil @ve.status
      assert_equal true, @ve.expire
      assert_equal 200, @ve.status
    end

    should "return false when expire does not expire" do
      Typhoeus::Easy.any_instance.expects('perform').once.returns 404

      assert_equal false, @ve.expire
    end
  end
end
