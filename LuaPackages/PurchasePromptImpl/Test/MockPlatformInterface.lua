--[[
	Mocks calls to certain platform-specific functions so that we can
	ensure they're being called properly by our thunks.

	This mock service has some ad hoc mechanisms to introspect into it,
	but we should create an actual spy pattern to use with it in the future
]]
local MockPlatformInterface = {}

function MockPlatformInterface.new()
	local service = {
		startRobuxUpsellWeb_callCount = 0,
		startBuildersClubUpsellWeb_callCount = 0,
		promptNativePurchase_callCount = 0,
	}

	setmetatable(service, {
		__tostring = function()
			return "Service(MockPlatformInterface)"
		end,
	})

	function service.startRobuxUpsellWeb()
		service.startRobuxUpsellWeb_callCount = service.startRobuxUpsellWeb_callCount + 1
	end

	function service.startBuildersClubUpsellWeb()
		service.startBuildersClubUpsellWeb_callCount = service.startBuildersClubUpsellWeb_callCount + 1
	end

	function service.promptNativePurchase(player, mobileProductId)
		service.promptNativePurchase_callCount = service.promptNativePurchase_callCount + 1
	end

	return service
end

return MockPlatformInterface