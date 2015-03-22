class KwStruct < Struct
  VERSION = '0.1.0'

  def self.new(*members)
    class_eval <<-RUBY
      def initialize(#{members.map{|m| "#{m}: nil"}.join(', ')})
        super(#{members.join(', ')})
      end
    RUBY
    super
  end
end
