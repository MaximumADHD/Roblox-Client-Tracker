--!nonstrict
--[[
	deviation: Our constructors currently have no notion of 'super' so any
	such behavior in upstream JS must be implemented manually by setting fields

	A constructor passed to this class would typically look along the lines of:
	function(self, arg, otherArg)
		self.arg = arg
		self.otherArg = otherArg
	end

	But even something like function() end can be passed in as the constructor
	if no fields need to be set. In upstream JS, the equivalent would be
	returning an empty object from the constructor.
]]
return function(parent, childName, constructor)
	local Child = {}
	Child.__index = Child
	Child.__tostring = function(self)
		return getmetatable(parent).__tostring(self)
	end

	local mt = {}

	Child.new = function(...)
		local self = {}
		constructor(self, ...)
		return setmetatable(self, Child)
	end

	if typeof(getmetatable(parent)) == "table" and getmetatable(parent).__call then
		mt.__call = function(_, ...)
			return Child.new(...)
		end
	end

	mt.__index = parent
	mt.__tostring = function(self)
		-- Printing class name
		if self == Child then
			return tostring(childName)
		end
		return getmetatable(parent).__tostring(self)
	end

	setmetatable(Child, mt)

	return Child
end
