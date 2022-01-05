local LSC = {}
LSC.__index = LSC

function LSC.new(fullName : string) 
	local self = {}
	self.fullName = fullName
	setmetatable(self, LSC)
	return self
end

function LSC:GetFullName()
	return self.fullName
end

return LSC
