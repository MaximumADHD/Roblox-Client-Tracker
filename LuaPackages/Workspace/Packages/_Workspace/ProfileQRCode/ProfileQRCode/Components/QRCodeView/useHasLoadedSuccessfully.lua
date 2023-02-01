local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local RoactUtils = require(Packages.RoactUtils)
local useEffectOnce = RoactUtils.Hooks.useEffectOnce
local useShareLinkId = require(ProfileQRCode.Rodux.useShareLinkId)
local useAnalytics = require(ProfileQRCode.Analytics.useAnalytics)

return function(analytics: useAnalytics.Analytics, hasLoaded: boolean)
	local shareLinkId = useShareLinkId()
	local fireEvent = function()
		analytics.fireEvent(EventNames.QRPageLoad, {
			shareLinkId = shareLinkId,
		})
	end

	useEffectOnce(fireEvent, hasLoaded)
end
