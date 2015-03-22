$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'kwstruct'
require 'test/unit'

class TestKwstruct < Test::Unit::TestCase
  Person = KwStruct.new(:name, :age)

  def test_accepts_no_arguments
    anonymous = Person.new
    assert_nil anonymous.name
    assert_nil anonymous.age
  end

  def test_accepts_kw_arguments
    sammy = Person.new(name: 'Sammy', age: 30)
    assert_equal 'Sammy', sammy.name
    assert_equal 30, sammy.age
  end

  def test_accepts_partial_kw_arguments
    sammy = Person.new(name: 'Sammy')
    assert_equal 'Sammy', sammy.name
    assert_nil sammy.age
  end

  def test_prohibits_undefined_kw_arguments
    error = assert_raises ArgumentError do
      Person.new(job: 'dev')
    end

    assert_match /unknown keyword: job/, error.message
  end

  def test_prohibits_regular_arguments
    error = assert_raises ArgumentError do
      Person.new('Sammy', 30)
    end

    assert_match /wrong number of arguments/, error.message
  end

  def test_works_with_inheritance
    struct = Class.new(KwStruct.new(:foo, :bar))
    struct_obj = struct.new(foo: 'foo', bar: 'bar')
    assert_equal 'foo', struct_obj.foo
    assert_equal 'bar', struct_obj.bar
  end
end
