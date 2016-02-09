## MiniTest::Unit::TestCase

use __assert__ for positive assertions and __refute__ for negative assertions

| Assertion | Example |
------------------
| __assert__ | assert @subject.any?, "empty subjects"  |
| __assert_block__ | assert_block { @subject.any? }  |
| __assert_empty__ | assert_empty @list  |
| __assert_equal__ | assert_equal 2, @subject.size  |
| __assert_in_delta__ | assert_in_delta @subject.size, 1,1  |
| __assert_in_epsilon__ | assert_in_epsilon @subject.size, 1, 1  |
| __assert_includes__ | assert_includes @subject, "skinny jeans"  |
| __assert_instance_of__ | assert_instance_of Array, @list  |
| __assert_kind_of__ | assert_kind_of Enumerable, @list  |
| __assert_match__ | assert_match @subject.first, /silly/  |
| __assert_nil__ | assert_nil @list.first  |
| __assert_operator__ | assert_operator @list.size, :== , 0  |
| __assert_output__ | assert_output("Size: 2") { print "Size: #{@subject.size}"}  |
| __assert_raises__ | assert_raises(NoMethodError) { @subject.foo }  |
| __assert_respond_to__ | assert_respond_to @subject, :count  |
| __assert_same__ | assert_same @subject, @subject, "It's the same object silly"  |
| __assert_send__ | assert_send [@subject, :values_at, 0]  |
| __assert_silent__ | assert_silent { "no stdout or stderr" }  |
| __assert_throws__ | assert_throws(:error,'is empty') {throw :error if @subject. any?} |


Example test `hipster_test.rb`:

```ruby
require 'minitest/autorun'
require_relative '../lib/hipster'

class TestHipster < MiniTest::Unit::TestCase
  def setup
    @hipster = Hipster.new
    @list    = Array.new
    @subject = ["silly hats", "skinny jeans"]
  end

  def teardown
    @hipster.destroy!
  end

  def test_for_helvetica_font
    assert_equal "helvetica!", @hipster.preferred_font
  end

  def test_not_mainstream
    refute @hipster.mainstream?
  end
end
```

Install the `minitest` gem via

```bash
$ gem install minitest
```


Run the test above with

```bash
$ ruby hipster_test.rb
```


## MiniTest::Mock

There two essential methods at our disposal: `expect` and `verify`

```ruby
class Twipster
  def initialize(twitter)
    # A Ruby wrapper for the Twitter API
    @twitter = twitter
  end

  def submit(tweet)
    @twitter.update("#{tweet} #lolhipster")
  end
end

require 'minitest/autorun'

class TestTwipster < MiniTest::Unit::TestCase
  before do
    @twitter  = MiniTest::Mock.new
    @twipster = Twipster.new(@twitter)
  end

  def teardown
    @hipster.destroy!
  end

  def test_appends_a_lolhipster_hashtag_and_updates_twitter_with_our_status
    tweet = "Skyrim? Too mainstream."
    @twitter.expect :update, true, ["#{tweet} #lolhipster"]
    @twipster.submit(tweet)
    assert @twitter.verify # verifies tweet and hashtag was passed to `@twitter.update`
  end
end
```

___

###### Credits

This is slightly __modified__ version of [@mattsears](https://twitter.com/mattsears)'s article <http://mattsears.com/articles/2011/12/10/minitest-quick-reference/> and https://gist.github.com/rastasheep/4248006