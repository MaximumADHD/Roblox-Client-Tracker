local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules
local InGameMenu = Modules.InGameMenuV3
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local PolicyProvider = InGameMenuDependencies.PolicyProvider

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local InGameMenuPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

local GetFIntEducationalPopupDisplayMaxCount = require(
	script.Parent.Parent.Flags.GetFIntEducationalPopupDisplayMaxCount
)

local isSubjectToDesktopPolicies = require(script.Parent.isSubjectToDesktopPolicies)

local FFlagUseGUACforDUARPolicy = game:DefineFastFlag("UseGUACforDUARPolicy", false)
local FFlagUseGUACforFullscreenTitleBar = game:DefineFastFlag("UseGUACforFullscreenTitleBar", false)
local GetFFlagShareInviteLinkContextMenuV3CopiedTooltipEnabled =
	require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3CopiedTooltipEnabled)
local GetFFlagShareInviteLinkContextMenuV3CopiedTextEnabled =
	require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3CopiedTextEnabled)

InGameMenuPolicy.Mapper = function(policy)
	return {
		enableInGameHomeIcon = function()
			if FFlagUseGUACforDUARPolicy then
				return policy.EnableInGameHomeIcon or false
			else
				return isSubjectToDesktopPolicies()
			end
		end,

		enableEducationalPopup = function()
			local isNativeCloseIntercept = game:GetEngineFeature("NativeCloseIntercept")
			if isSubjectToDesktopPolicies() and isNativeCloseIntercept then
				return true
			end
			return false
		end,

		educationalPopupMaxDisplayCount = function()
			return isSubjectToDesktopPolicies() and GetFIntEducationalPopupDisplayMaxCount() or 0
		end,

		enableFullscreenTitleBar = function()
			if FFlagUseGUACforFullscreenTitleBar then
				return policy.FullscreenTitleBarEnabled or false
			else
				if isSubjectToDesktopPolicies() then
					return true
				end
			end
			return false
		end,

		inGameMenuPortraitThreshold = function()
			return policy.InGameMenuPortraitThreshold or 550
		end,

		enableCopiedFeedback = if GetFFlagShareInviteLinkContextMenuV3CopiedTooltipEnabled()
			or GetFFlagShareInviteLinkContextMenuV3CopiedTextEnabled()
			then
				function()
					return isSubjectToDesktopPolicies()
				end
			else nil
	}
end

return InGameMenuPolicy
