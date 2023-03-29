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

local ModalWindow = UIBlox.App.Dialog.Modal.ModalWindow

local getFFlagAddFriendsQRCodeAnalytics = require(Packages.SharedFlags).getFFlagAddFriendsQRCodeAnalytics
local getFFlagProfileQRCodeFixDistanceFromTop = require(Packages.SharedFlags).getFFlagProfileQRCodeFixDistanceFromTop

export type Props = {
	analyticsService: any?,
	distanceFromTop: number?,
	onClose: () -> (),
	profileQRCodeFriendRequestAlertsEnabled: boolean?,
	robloxEventReceiver: any?,
	source: string?,
}

local ProfileQRCodeEntryPoint = function(props: Props)
	return React.createElement(ProfileQRCodeAnalytics.Context.Provider, {
		value = {
			fireEvent = ProfileQRCodeAnalytics.setupFireEvent({
				analytics = if props.analyticsService then props.analyticsService else AnalyticsService,
				infoForAllEvents = {
					uid = useLocalUserId(),
					source = if getFFlagAddFriendsQRCodeAnalytics() then props.source else nil,
				},
			}),
		},
	}, {
		Window = React.createElement(ModalWindow, {
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
