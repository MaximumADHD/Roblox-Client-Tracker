--[[
	Mocks calls to certain platform-specific functions so that we can
	ensure they're being called properly by our thunks.
]]
local Root = script.Parent.Parent

local createSpy = require(Root.Test.createSpy)
local PlatformInterface = require(Root.Services.PlatformInterface)

local MockPlatformInterface = {}

function MockPlatformInterface.new()
	local platformInterface = PlatformInterface.new()

	local mockService = {}
	local spies = {}

	for k, v in pairs(platformInterface) do
		local spyFunc = createSpy()
		mockService[k] = spyFunc.value
		spies[k] = spyFunc
	end

	setmetatable(mockService, {
		__tostring = function()
			return "Service(MockPlatformInterface)"
		end,
	})

	return {
		spies = spies,
		mockService = mockService,
	}
end

return MockPlatformInterface
