local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local PolicyProvider = InGameMenuDependencies.PolicyProvider
local SharedFlags = CorePackages.Workspace.Packages.SharedFlags
local GetFFlagUseVoiceExitBetaLanguage = require(SharedFlags).GetFFlagUseVoiceExitBetaLanguage
local GetFFlagGateEducationalPopupVisibilityViaGUAC = require(SharedFlags).GetFFlagGateEducationalPopupVisibilityViaGUAC

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local InGameMenuPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

local GetFIntEducationalPopupDisplayMaxCount =
	require(script.Parent.Parent.Flags.GetFIntEducationalPopupDisplayMaxCount)

local isSubjectToDesktopPolicies = require(CorePackages.Workspace.Packages.SharedFlags).isSubjectToDesktopPolicies

InGameMenuPolicy.Mapper = function(policy)
	return {
		enableInGameHomeIcon = function()
			return isSubjectToDesktopPolicies()
		end,

		enableEducationalPopup = function()
			local isNativeCloseIntercept = game:GetEngineFeature("NativeCloseIntercept")
			if isSubjectToDesktopPolicies() and isNativeCloseIntercept then
				if GetFFlagGateEducationalPopupVisibilityViaGUAC() then
					return if policy.InExperienceCanViewEducationalPopup == nil
						then true
						else policy.InExperienceCanViewEducationalPopup
				end
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

		getDisplayCheckboxInVoiceConsent = function()
			-- Default to showing the checkbox in voice consent modal
			if policy.DisplayCheckboxInVoiceConsent == nil then
				return true
			end
			return policy.DisplayCheckboxInVoiceConsent
		end,
	}
end

return InGameMenuPolicy
