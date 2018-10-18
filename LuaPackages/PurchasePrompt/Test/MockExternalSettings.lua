--[[
	Mocks some external settings so we can test the purchase prompt's
	behavior under various external circumstances.
]]
local MockExternalSettings = {}

function MockExternalSettings.new(isStudio, isTenFoot, restrictSales, disablePurchases)
	local service = {}

	function service.isStudio()
		return isStudio
	end

	function service.getFlagRestrictSales2()
		return restrictSales
	end

	function service.getFlagOrder66()
		return disablePurchases
	end

	function service.isTenFootInterface()
		return isTenFoot
	end

	return service
end

return MockExternalSettings