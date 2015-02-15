class TestInitializeWith < Minitest::Test
  class Foo
    extend ::InitializeWith
    initialize_with [:a, :b], c: 1, d: 2, b: 42
    attr_reader :a, :b, :c, :d
  end

  def setup
    @foo = Foo.new('foo', 'bar')
  end

  def test_args
    assert_equal(@foo.a, 'foo')
    assert_equal(@foo.b, 'bar')
    assert_equal(@foo.c, 1)
    assert_equal(@foo.d, 2)
  end

  def test_exception
    assert_raises(ArgumentError) { Foo.new }
    assert_raises(ArgumentError) { Foo.new(1) }
  end
end
