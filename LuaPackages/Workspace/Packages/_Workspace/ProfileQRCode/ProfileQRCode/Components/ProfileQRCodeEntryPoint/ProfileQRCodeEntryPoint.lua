local UserInputService = game:GetService("UserInputService")
local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local AnalyticsService = require(ProfileQRCode.Analytics.AnalyticsService)
local ProfileQRCodeAnalytics = require(ProfileQRCode.Analytics)
local ProfileQRCodePage = require(ProfileQRCode.Components.ProfileQRCodePage)

local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local useLocalUserId = require(Packages.RobloxAppHooks).useLocalUserId
local useScreenSize = require(Packages.RobloxAppHooks).useScreenSize
local ProfileQRCodePageV2 = require(ProfileQRCode.Components.ProfileQRCodePage.ProfileQRCodePageV2)
local useEffectOnce = require(Packages.RoactUtils).Hooks.useEffectOnce
local ModalWindow = UIBlox.App.Dialog.Modal.ModalWindow
local EventNames = require(ProfileQRCode.Analytics.EventNames)
local profileQRCode3DAvatarIXP = require(ProfileQRCode.Experiments.profileQRCode3DAvatarIXP)
local getFFlagProfileQRCodeFixDistanceFromTop = require(Packages.SharedFlags).getFFlagProfileQRCodeFixDistanceFromTop
local getFFlagProfileQRCodeEnable3DAvatarExperiment =
	require(ProfileQRCode.Flags.getFFlagProfileQRCodeEnable3DAvatarExperiment)

export type Props = {
	analyticsService: any?,
	distanceFromTop: number?,
	profileQRCodeFriendRequestAlertsEnabled: boolean?,
	onClose: () -> (),
	robloxEventReceiver: any?,
	isProfile3DAvatarEnabled: boolean?,
	source: string?,
}

local ProfileQRCodeEntryPoint = function(props: Props)
	local fireEvent = ProfileQRCodeAnalytics.setupFireEvent({
		analytics = if props.analyticsService then props.analyticsService else AnalyticsService,
		infoForAllEvents = {
			uid = useLocalUserId(),
			source = props.source,
		},
	})
	local isProfile3DAvatarEnabled

	if getFFlagProfileQRCodeEnable3DAvatarExperiment() then
		isProfile3DAvatarEnabled = profileQRCode3DAvatarIXP.useIsExperimentEnabled({ enableExposureEvent = true })

		useEffectOnce(function()
			fireEvent(EventNames.QRCode3DAvatarLoad)
		end, isProfile3DAvatarEnabled)
	end

	return React.createElement(ProfileQRCodeAnalytics.Context.Provider, {
		value = {
			fireEvent = fireEvent,
		},
	}, {
		Window = if getFFlagProfileQRCodeEnable3DAvatarExperiment() and isProfile3DAvatarEnabled
			then React.createElement(ProfileQRCodePageV2, {
				robloxEventReceiver = props.robloxEventReceiver,
				onClose = props.onClose,
				isProfile3DAvatarEnabled = isProfile3DAvatarEnabled,
			})
			else React.createElement(ModalWindow, {
				isFullHeight = true,
				screenSize = useScreenSize(),
				distanceFromTop = if getFFlagProfileQRCodeFixDistanceFromTop()
					then (props.distanceFromTop or 0)
					else UserInputService.StatusBarSize.Y,
			}, {
				View = React.createElement(ProfileQRCodePage, props),
			}),
	})
end

return ProfileQRCodeEntryPoint
