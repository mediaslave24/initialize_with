module InitializeWith
  def initialize_with(*args)
    case a = args.shift
    when Array then h = args.pop || {}
    when Hash then h, a = [], h
    end

    unless a.is_a?(Array) && h.is_a?(Hash)
      raise TypeError,
        "wrong type of arguments for initialize_with" <<
        " expected [Array, Hash], but have [#{a.class}, #{h.class}]"
    end

    h.reject! { |k,_| a.any? { |name| name.to_s == k.to_s} }

    required = a.join(', ')

    optional = h.map do |k, v|
      "#{k} = #{v.to_s}"
    end.join(', ')

    optional = ", #{optional}" unless optional.empty?

    assign = (a + h.keys).map do |name|
      "@#{name} = #{name}"
    end.join("\n")

    class_eval <<-MTD, __FILE__, __LINE__
      def initialize(#{required}#{optional})    #   def initialize(a, b, c = 1, d = 2)
        #{assign}                                 #     @a = a
      end                                         #     @b = b
                                                  #     @c = c
                                                  #     @d = d
                                                  #   end
    MTD
  end
end
