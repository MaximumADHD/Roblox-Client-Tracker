--[[
	Mocks our analytics interface so we can make sure certain thunks
	trigger analytics calls without actually calling the real ones.
]]
local Root = script.Parent.Parent

local createSpy = require(Root.Test.createSpy)
local Analytics = require(Root.Services.Analytics)

local MockAnalytics = {}

function MockAnalytics.new()
	local analytics = Analytics.new()

	local mockService = {}
	local spies = {}

	for k, v in pairs(analytics) do
		local spyFunc = createSpy()
		mockService[k] = spyFunc.value
		spies[k] = spyFunc
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
