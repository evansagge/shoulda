require 'shoulda/active_model/helpers'
module Shoulda # :nodoc:
  module ActiveRecord # :nodoc:
    module Helpers
      include Shoulda::ActiveModel::Helpers
      def pretty_error_messages(obj) # :nodoc:
        obj.errors.map do |a, m| 
          msg = "#{a} #{m}" 
          msg << " (#{obj.send(a).inspect})" unless a.to_sym == :base
        end
      end
    end
  end
end
