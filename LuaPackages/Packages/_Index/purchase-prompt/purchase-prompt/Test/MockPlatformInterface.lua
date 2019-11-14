--[[
	Mocks calls to certain platform-specific functions so that we can
	ensure they're being called properly by our thunks.
]]
local createSpy = require(script.Parent.createSpy)

local MockPlatformInterface = {}

function MockPlatformInterface.new()
	local startRobuxUpsellWeb = createSpy()
	local promptNativePurchase = createSpy()

	local mockService = {
		startRobuxUpsellWeb = startRobuxUpsellWeb.value,
		promptNativePurchase = promptNativePurchase.value,
	}

	local spies = {
		startRobuxUpsellWeb = startRobuxUpsellWeb,
		promptNativePurchase = promptNativePurchase,
	}

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