local Root = script.Parent.Parent
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local GetFFlagLuaUseThirdPartyPermissions = require(Root.Flags.GetFFlagLuaUseThirdPartyPermissions)
local GetFFlagHideThirdPartyPurchaseFailure = require(Root.Flags.GetFFlagHideThirdPartyPurchaseFailure)

local ExternalSettings = {}

function ExternalSettings.new()
	local service = {}

	setmetatable(service, {
		__tostring = function()
			return "Service(ExternalSettings)"
		end,
	})

	function service.getPlatform()
		return UserInputService:GetPlatform()
	end

	function service.isStudio()
		return RunService:IsStudio()
	end

	function service.isThirdPartyPurchaseAllowed()
		-- If PermissionsService is not created (flag is not enabled), don't fail.
		local result = true
		pcall(function()
			result = game:GetService("PermissionsService"):GetIsThirdPartyPurchaseAllowed()
		end)
		return result
	end

	function service.getLuaUseThirdPartyPermissions()
		return GetFFlagLuaUseThirdPartyPermissions()
	end

	function service.getFlagHideThirdPartyPurchaseFailure()
		return GetFFlagHideThirdPartyPurchaseFailure()
	end

	-- TODO(DEVTOOLS-4227): Remove this flag
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
