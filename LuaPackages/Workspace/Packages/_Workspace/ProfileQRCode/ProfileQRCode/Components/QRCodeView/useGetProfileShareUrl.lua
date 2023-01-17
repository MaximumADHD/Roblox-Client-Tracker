local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)
local RoactUtils = require(Packages.RoactUtils)
local useAnalytics = require(ProfileQRCode.Analytics.useAnalytics)
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local useDispatch = RoactUtils.Hooks.RoactRodux.useDispatch

return function()
	local analytics = useAnalytics()
	local dispatch = useDispatch()
	local payload, setPayload = React.useState({
		linkId = "",
		shortUrl = "",
	})

	React.useEffect(function()
		dispatch(createOrGetProfileShareUrl.API())
			:andThen(function(response: { responseBody: { linkId: string, shortUrl: string } })
				setPayload(response.responseBody)
				analytics.fireEvent(EventNames.QRPageLoad, {
					shareLinkId = response.responseBody.linkId,
				})
			end)
			:catch(function(_errorInfo)
				analytics.fireEvent(EventNames.QRPageLoadFailed)
			end)
	end, {})

	return {
		linkId = payload.linkId,
		shortUrl = payload.shortUrl,
	}
end
