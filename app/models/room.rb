class Room < ActiveRecord::Base
	has_many :lights
	accepts_nested_attributes_for :lights, allow_destroy: true, reject_if: lambda {|attributes| attributes['kind'].blank?}
end
