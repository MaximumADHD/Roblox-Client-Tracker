local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local RoactUtils = require(Packages.RoactUtils)
local useEffectOnce = RoactUtils.Hooks.useEffectOnce
local useAnalytics = require(ProfileQRCode.Analytics.useAnalytics)

-- TODO add logging for retries: https://jira.rbx.com/browse/SACQ-343
return function(analytics: useAnalytics.Analytics, hasFailed: boolean)
	useEffectOnce(function()
		analytics.fireEvent(EventNames.QRPageLoadFailed)
	end, hasFailed)
end
