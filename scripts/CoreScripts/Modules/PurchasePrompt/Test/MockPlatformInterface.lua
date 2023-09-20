--[[
	Mocks calls to certain platform-specific functions so that we can
	ensure they're being called properly by our thunks.
]]
local Root = script.Parent.Parent

local PlatformInterface = require(Root.Services.PlatformInterface)
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.JestGlobals)
local jest = JestGlobals.jest

local MockPlatformInterface = {}

function MockPlatformInterface.new()
	local platformInterface = PlatformInterface.new()

	local mockService = {}
	local spies = {}

	for k, v in pairs(platformInterface) do
		local spy, spyFunc = jest.fn()
		mockService[k] = spyFunc
		spies[k] = spy
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
