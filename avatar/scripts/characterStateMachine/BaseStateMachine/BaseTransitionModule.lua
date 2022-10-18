local BaseTransition = {}
BaseTransition.__index = BaseTransition
BaseTransition.name = script.Name
BaseTransition.destinationName = ""
BaseTransition.sourceName = ""
BaseTransition.priority = ""

function BaseTransition.new(...)
	local self = {
		class = BaseTransition,
		destination = nil
	}
	setmetatable(self, BaseTransition)
	self:OnCreate(...)
	return self
end

function BaseTransition:extend()	
	local derivedTransition = setmetatable({
		baseClass = self 
	}, self)
	derivedTransition.__index = derivedTransition

	function derivedTransition.new(...)
		local self = setmetatable(self.new(...), derivedTransition)		
		self:OnCreate(...)
		return self
	end

	return derivedTransition	
end

function BaseTransition:OnCreate(...)

end

function BaseTransition:Test(stateMachine)
	return false
end

return BaseTransition


