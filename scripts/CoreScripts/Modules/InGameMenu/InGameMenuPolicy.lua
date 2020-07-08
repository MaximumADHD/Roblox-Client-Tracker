local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local PolicyProvider = InGameMenuDependencies.PolicyProvider

local implementation = PolicyProvider.GetPolicyImplementations.MemStorageService("app-policy")
local InGameMenuPolicy = PolicyProvider.withGetPolicyImplementation(implementation)

local GetFFlagEducationalPopupOnNativeClose = require(script.Parent.Parent.Flags.GetFFlagEducationalPopupOnNativeClose)
local GetFIntEducationalPopupDisplayMaxCount = require(
	script.Parent.Parent.Flags.GetFIntEducationalPopupDisplayMaxCount)
local GetFFlagInGameHomeIcon = require(script.Parent.Flags.GetFFlagInGameHomeIcon)

InGameMenuPolicy.Mapper = function(policy)
	local UniversalAppOnWindows = game:GetEngineFeature("UniversalAppOnWindows")
	return {
		enableInGameHomeIcon = function()
			return GetFFlagInGameHomeIcon() and UniversalAppOnWindows
		end,

		enableEducationalPopup = function()
			local isNativeCloseIntercept = game:GetEngineFeature("NativeCloseIntercept")
			return UniversalAppOnWindows and isNativeCloseIntercept and GetFFlagEducationalPopupOnNativeClose()
		end,

		educationalPopupMaxDisplayCount = function()
			return UniversalAppOnWindows and GetFIntEducationalPopupDisplayMaxCount() or 0
		end,
	}
end

return InGameMenuPolicy
