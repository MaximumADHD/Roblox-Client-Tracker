local Root = script.Parent.Parent
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local GetFFlagDisableRobuxUpsell = require(Root.Flags.GetFFlagDisableRobuxUpsell)
local GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt
	= require(Root.Flags.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt)

local FFlagPPXboxPromptNative = game:DefineFastFlag("PPXboxPromptNative", false)

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
		return true
	end

	function service.getFlagBypassThirdPartySettingForRobloxPurchase()
		return true
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

	function service.getFFlagDisableRobuxUpsell()
		return GetFFlagDisableRobuxUpsell()
	end

	function service.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt()
		return GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt()
	end

	function service.FFlagPPXboxPromptNative()
		return FFlagPPXboxPromptNative
	end

	return service
end

return ExternalSettings
