class KwStruct < Struct
  VERSION = '0.2.0'

  def self.new(*members, &block)
    super.tap do |struct_class|
      struct_class.class_eval <<-RUBY
        def initialize(#{members.map{|m| "#{m}: nil"}.join(', ')})
          super(#{members.join(', ')})
        end
      RUBY
    end
  end
end

