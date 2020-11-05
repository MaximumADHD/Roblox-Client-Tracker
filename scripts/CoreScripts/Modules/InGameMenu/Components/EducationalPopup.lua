local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Constants = require(InGameMenu.Resources.Constants)
local CloseNativeClosePrompt = require(InGameMenu.Actions.CloseNativeClosePrompt)
local SetMenuIconTooltipOpen = require(InGameMenu.Actions.SetMenuIconTooltipOpen)
local OpenMenu = require(InGameMenu.Thunks.OpenMenu)

local EducationalPopupDialog = require(script.Parent.EducationalPopupDialog)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagInGameMenuIconTooltip = require(RobloxGui.Modules.Flags.GetFFlagInGameMenuIconTooltip)

local NotificationType = GuiService:GetNotificationTypeList()

local EducationalAnalytics = {
	EventContext = "educational_popup",
	ConfirmName = "educational_confirmed",
	CancelName = "educational_close_app",
	DismissName = "educational_dismiss_prompt",
}

local EducationalPopup = Roact.PureComponent:extend("EducationalPopup")

EducationalPopup.validateProps = t.strictInterface({
	screenSize = t.Vector2,
	onDismiss = t.callback,
	onConfirm = t.callback,
	isClosingApp  = t.boolean,
})

function EducationalPopup:init()
	self.onCancel = function()
		SendAnalytics(EducationalAnalytics.EventContext, EducationalAnalytics.CancelName, {})
		GuiService:BroadcastNotification("", NotificationType.NATIVE_EXIT)
	end
end

function EducationalPopup:render()
	return withLocalization({
		bodyTextLn1 = "CoreScripts.InGameMenu.EducationalPopup.BodyTextOpenSystemMenu",
		bodyTextLn2 = "CoreScripts.InGameMenu.EducationalPopup.BodyTextClickHome",
		bodyTextLn3 = "CoreScripts.InGameMenu.EducationalPopup.BodyTextPlayMore",
		titleText = "CoreScripts.InGameMenu.EducationalPopup.Title",
		confirmText = "CoreScripts.InGameMenu.Ok",
		cancelText = "CoreScripts.InGameMenu.EducationalPopup.LeaveRoblox",
	})(function(localized)
		return Roact.createElement(EducationalPopupDialog, {
			bodyContents = {
				{
					icon = Images["icons/logo/block"],
					text = localized.bodyTextLn1,
					layoutOrder = 1,
					isSystemMenuIcon = true,
				},
				{
					icon = Images["icons/menu/home_off"],
					text = localized.bodyTextLn2,
					layoutOrder = 2,
				},
				{
					icon = Images["icons/menu/games_off"],
					text = localized.bodyTextLn3,
					layoutOrder = 3,
				},
			},
			cancelText = localized.cancelText,
			confirmText = localized.confirmText,
			titleText = localized.titleText,
			titleBackgroundImageProps = {
				image = "rbxasset://textures/ui/LuaApp/graphic/EducationalBackground.png",
				imageHeight = 261,
			},
			screenSize = self.props.screenSize,

			onDismiss = self.props.onDismiss,
			onCancel = self.onCancel,
			onConfirm = self.props.onConfirm,

			blurBackground = true,
			visible = self.props.isClosingApp,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isClosingApp = state.nativeClosePrompt.closingApp,
		screenSize = state.screenSize,
	}
end, function(dispatch)
	return {
		onDismiss = function()
			dispatch(CloseNativeClosePrompt())
			RbxAnalyticsService:ReportCounter("EducationalPopup_Dismiss", 1)
			SendAnalytics(EducationalAnalytics.EventContext, EducationalAnalytics.DismissName, {})
		end,
		onConfirm = function()
			dispatch(CloseNativeClosePrompt())

			if GetFFlagInGameMenuIconTooltip() then
				dispatch(SetMenuIconTooltipOpen(true))
			else
				dispatch(OpenMenu(Constants.AnalyticsMenuOpenTypes.EducationalMenuTriggered))
			end

			RbxAnalyticsService:ReportCounter("EducationalPopup_Confirm", 1)
			SendAnalytics(EducationalAnalytics.EventContext, EducationalAnalytics.ConfirmName, {})
		end,
	}
end)(EducationalPopup)
