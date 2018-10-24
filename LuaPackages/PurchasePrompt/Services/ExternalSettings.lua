local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")

local ExternalSettings = {}

function ExternalSettings.new()
	local service = {}

	setmetatable(service, {
		__tostring = function()
			return "Service(ExternalSettings)"
		end,
	})

	function service.isStudio()
		return RunService:IsStudio()
	end

	function service.getFlagRestrictSales2()
		return settings():GetFFlag("RestrictSales2")
	end

	function service.getFlagOrder66()
		return settings():GetFFlag("Order66")
	end

	function service.isTenFootInterface()
		return GuiService:IsTenFootInterface()
	end

	return service
end

return ExternalSettings