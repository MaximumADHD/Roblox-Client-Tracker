--[[
	Mocks some external settings so we can test the purchase prompt's
	behavior under various external circumstances.
]]
local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Cryo = require(LuaPackages.Cryo)

local DEFAULT_FLAG_STATES = {
	-- Allow restriction of third-party sales. Was never properly turned on in
	-- the old prompt. We should change this if it defaults to on.
	RestrictSales2 = false,
	-- Disables all in-game purchasing. A kill-switch for emergency purposes
	Order66 = false,
}

local MockExternalSettings = {}

function MockExternalSettings.new(isStudio, isTenFoot, flags, platform)
	local service = {}

	flags = Cryo.Dictionary.join(DEFAULT_FLAG_STATES, flags)

	local function getMockFlag(mockFlag, systemFlag)
		if mockFlag ~= nil then
			return mockFlag
		end
		return systemFlag
	end

	function service.getPlatform()
		return platform
	end

	function service.isStudio()
		return isStudio
	end

	function service.getFlagRestrictSales2()
		return flags.RestrictSales2
	end

	function service.getFlagOrder66()
		return flags.Order66
	end

	function service.isTenFootInterface()
		return isTenFoot
	end

	return service
end

return MockExternalSettings
