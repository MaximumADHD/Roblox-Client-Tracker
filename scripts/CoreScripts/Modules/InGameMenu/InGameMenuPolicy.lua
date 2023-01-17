local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local PolicyProvider = InGameMenuDependencies.PolicyProvider
local SharedFlags = CorePackages.Workspace.Packages.SharedFlags
local GetFFlagUseVoiceExitBetaLanguage = require(SharedFlags).GetFFlagUseVoiceExitBetaLanguage

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local InGameMenuPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

local GetFIntEducationalPopupDisplayMaxCount = require(
	script.Parent.Parent.Flags.GetFIntEducationalPopupDisplayMaxCount)

local isSubjectToDesktopPolicies = require(
	script.Parent.isSubjectToDesktopPolicies)

local FFlagUseGUACforDUARPolicy = game:DefineFastFlag("UseGUACforDUARPolicy", false)

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

		getGameInfoShowChatFeatures = function()
			if GetFFlagUseVoiceExitBetaLanguage() then
				return policy.GameInfoShowChatFeatures or false
			end
			return false
		end,

		enableFullscreenTitleBar = function()
			return policy.FullscreenTitleBarEnabled or false
		end,
	}
end

return InGameMenuPolicy
