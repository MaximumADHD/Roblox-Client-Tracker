MockStudioService = {}
MockStudioService.__index = MockStudioService
function MockStudioService.new()
	local self = {}
	setmetatable(self, MockStudioService)

	self.localUserId = 0

	self.GetUserId = function()
		return self.localUserId
	end

	return self
end

return MockStudioService