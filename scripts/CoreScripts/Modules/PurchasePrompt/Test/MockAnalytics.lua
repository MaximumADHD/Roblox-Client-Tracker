--[[
	Mocks our analytics interface so we can make sure certain thunks
	trigger analytics calls without actually calling the real ones.
]]
local Root = script.Parent.Parent

local Analytics = require(Root.Services.Analytics)

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local jest = JestGlobals.jest

local MockAnalytics = {}

function MockAnalytics.new()
	local analytics = Analytics.new()

	local mockService = {}
	local spies = {}

	for k, v in pairs(analytics) do
		local spy, spyFunc = jest.fn()
		mockService[k] = spyFunc
		spies[k] = spy
	end

	setmetatable(mockService, {
		__tostring = function()
			return "Service(MockAnalytics)"
		end,
	})

	return {
		spies = spies,
		mockService = mockService,
	}
end

return MockAnalytics
