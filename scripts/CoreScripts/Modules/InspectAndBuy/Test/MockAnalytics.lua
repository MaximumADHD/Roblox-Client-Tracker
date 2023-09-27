--[[
	Mocks our analytics interface so we can make sure certain thunks
	trigger analytics calls without actually calling the real ones.

	This mock service has some ad hoc mechanisms to introspect into it,
	but we should create an actual spy pattern to use with it in the future
]]
local MockAnalytics = {}

local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.JestGlobals)
local jest = JestGlobals.jest

function MockAnalytics.new()
	local service = {
		reportOpenInspectMenu = jest.fn(),
		reportTryOnButtonClicked = jest.fn(),
		reportFavoriteItem = jest.fn(),
		reportPurchaseAttempt = jest.fn(),
		reportPurchaseSuccess = jest.fn(),
	}

	setmetatable(service, {
		__tostring = function()
			return "Service(MockAnalytics)"
		end,
	})

	return service
end

return MockAnalytics
