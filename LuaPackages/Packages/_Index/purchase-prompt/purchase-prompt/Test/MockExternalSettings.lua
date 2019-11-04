--[[
	Mocks some external settings so we can test the purchase prompt's
	behavior under various external circumstances.
]]
local join = require(script.Parent.Parent.join)

local DEFAULT_FLAG_STATES = {
	-- Newly added premium feature, to replace builders club. Makes differently-priced
	-- upsell products available when user does not have enough Robux.
	PurchasePromptPremiumEnabled = true,
	-- Allow restriction of third-party sales. Was never properly turned on in
	-- the old prompt. We should change this if it defaults to on.
	RestrictSales2 = false,
	-- Disables all in-game purchasing. A kill-switch for emergency purposes
	Order66 = false,
}

local MockExternalSettings = {}

function MockExternalSettings.new(isStudio, isTenFoot, flags)
	local service = {}

	flags = join(DEFAULT_FLAG_STATES, flags)

	function service.isStudio()
		return isStudio
	end

	function service.getFlagPurchasePromptPremiumEnabled()
		return flags.PurchasePromptPremiumEnabled
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