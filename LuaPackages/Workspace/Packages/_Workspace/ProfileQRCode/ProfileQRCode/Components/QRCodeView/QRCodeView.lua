local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local useGetProfileShareUrl = require(ProfileQRCode.Networking.useGetProfileShareUrl)
local useAnalytics = require(ProfileQRCode.Analytics.useAnalytics)
local useShortUrl = require(ProfileQRCode.Rodux.useShortUrl)
local useHasLoadedSuccessfully = require(script.Parent.useHasLoadedSuccessfully)
local useLoadingState = require(ProfileQRCode.Networking.useLoadingState)
local configuredRoduxNetworking = require(ProfileQRCode.Networking.configuredRoduxNetworking)
local NetworkStatus = configuredRoduxNetworking.Enum.NetworkStatus
local QRCodeFailedView = require(script.Parent.QRCodeFailedView)
local QRCodeSucceededView = require(script.Parent.QRCodeSucceededView)
local QRCodeLoadingView = require(script.Parent.QRCodeLoadingView)
local RoactUtils = require(Packages.RoactUtils)
local useEffectOnce = RoactUtils.Hooks.useEffectOnce
local getFFlagProfileQRCodeEnabledShortMode = require(ProfileQRCode.Flags.getFFlagProfileQRCodeEnabledShortMode)

local useHasFailedToLoad = require(script.Parent.useHasFailedToLoad)

local QR_CODE_SIZE = 200
local PADDING = 24
local OFFSET = 80

export type Props = {
	layoutOrder: number,
	isSmallScreen: boolean?,
}

local QRCodeView = function(props: Props)
	local analytics = useAnalytics()
	local loadingState = useLoadingState()
	local getProfileShareUrl = useGetProfileShareUrl()

	local shortUrl = useShortUrl()
	local hasLoaded = shortUrl ~= nil
	local hasFailedToLoad = loadingState == NetworkStatus.Failed

	useEffectOnce(getProfileShareUrl, not hasLoaded)
	useHasLoadedSuccessfully(analytics, hasLoaded)
	useHasFailedToLoad(analytics, hasFailedToLoad)

	local viewToUse: React.ReactElement<any, any>
	if hasLoaded then
		viewToUse = React.createElement(QRCodeSucceededView, {
			url = shortUrl,
			qrCodeLength = QR_CODE_SIZE,
			padding = PADDING,
			isSmallScreen = if getFFlagProfileQRCodeEnabledShortMode() then props.isSmallScreen else nil,
		})
	elseif hasFailedToLoad then
		viewToUse = React.createElement(QRCodeFailedView, {
			onActivated = getProfileShareUrl,
			padding = PADDING,
		})
	else
		viewToUse = React.createElement(QRCodeLoadingView)
	end

	local viewHeight = QR_CODE_SIZE + PADDING + OFFSET
	if getFFlagProfileQRCodeEnabledShortMode() then
		if props.isSmallScreen then
			viewHeight = QR_CODE_SIZE + OFFSET
		else
			viewHeight = QR_CODE_SIZE + PADDING + OFFSET
		end
	end
	return React.createElement("Frame", {
		Size = UDim2.new(0, QR_CODE_SIZE + PADDING + OFFSET, 0, viewHeight),
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
	}, {
		View = viewToUse,
	})
end

return QRCodeView
