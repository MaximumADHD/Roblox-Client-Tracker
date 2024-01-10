--!nonstrict
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local CloseNativeClosePrompt = require(InGameMenu.Actions.CloseNativeClosePrompt)
local LeaveGame = require(InGameMenu.Utility.LeaveGame)

local EducationalPopupDialog = require(script.Parent.EducationalPopupDialog)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

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
		title = "CoreScripts.InGameMenu.ExitModal.Title",
		subtitle = "CoreScripts.InGameMenu.ExitModal.Subtitle",
		bodyTextOpenMenu = "CoreScripts.InGameMenu.ExitModal.BodyTextOpenMenu",
		bodyTextClickHome = "CoreScripts.InGameMenu.ExitModal.BodyTextClickHome",
		actionExit = "CoreScripts.InGameMenu.ExitModal.ActionExit",
		actionHome = "CoreScripts.InGameMenu.ExitModal.ActionHome",
	})(function(localized)
		return Roact.createElement(EducationalPopupDialog, {
			bodyContents = {
				{
					text = localized.bodyTextOpenMenu,
					isSystemMenuIcon = true,
				},
				{
					icon = Images["icons/menu/home_off"],
					text = localized.bodyTextClickHome,
				},
			},
			cancelText = localized.actionExit,
			confirmText = localized.actionHome,
			titleBackgroundImageProps = {
				image = "rbxasset://textures/ui/LuaApp/graphic/Auth/GridBackground.jpg",
				imageHeight = 200,
				text = [[<font face="GothamBlack" size="42">]] .. localized.title ..
					[[</font><font size="4"><br /></font><br />]] .. localized.subtitle,
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

function EducationalPopup:didUpdate()
	local isMenuOpen = self.props.isClosingApp
	GuiService:SetMenuIsOpen(isMenuOpen, "EducationalPopup")
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			isClosingApp = state.nativeClosePrompt.closingApp,
			screenSize = state.screenSize,
		}
	end,
	function(dispatch)
		return {
			onDismiss = function()
				dispatch(CloseNativeClosePrompt())
				RbxAnalyticsService:ReportCounter("EducationalPopup_Dismiss", 1)
				SendAnalytics(EducationalAnalytics.EventContext, EducationalAnalytics.DismissName, {})
			end,
			onConfirm = function()
				RbxAnalyticsService:ReportCounter("EducationalPopup_Confirm", 1)
				SendAnalytics(EducationalAnalytics.EventContext, EducationalAnalytics.ConfirmName, {})

				LeaveGame()
			end,
		}
	end
)(EducationalPopup)
