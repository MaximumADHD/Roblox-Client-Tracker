local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local LinkingProtocol = require(CorePackages.UniversalApp.Linking.LinkingProtocol)

local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local LeavePrompt = require(script.Parent.LeavePrompt)

local InGameMenu = script.Parent.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local NavigateBack = require(InGameMenu.Actions.NavigateBack)

local LeaveToAppPrompt = Roact.PureComponent:extend("LeaveToAppPrompt")

LeaveToAppPrompt.validateProps = t.strictInterface({
	navigateBack = t.callback,
	canGamepadCaptureFocus = t.optional(t.boolean),
	canKeyboardCaptureFocus = t.optional(t.boolean),
	-- used only for unit testing until we can properly mock
	onConfirm = t.optional(t.callback),
	linkingProtocol = t.table,
})

LeaveToAppPrompt.defaultProps = {
	linkingProtocol = LinkingProtocol.default
}

function LeaveToAppPrompt:init()
	self.goToHomePage = function()
		PerfUtils.leavingGame()
		-- Right now it this will only return to the last place in app and not directly to the home page yet
		-- TODO: deep link into home page
		-- https://jira.rbx.com/browse/MOBLUAPP-2597

		SendAnalytics(Constants.AnalyticsLeaveToHomeName, Constants.AnalyticsLeaveToHomeName,
			{confirmed = Constants.AnalyticsLeaveToHomeName})

		-- Shutting down the game DM on mobile can take a little bit,
		-- and without this it would look as if the app just froze for a few seconds instead of actually processing the tap.
		RunService.Heartbeat:Wait()

		self.props.linkingProtocol:detectURL("roblox://navigation/home")

		game:Shutdown()
	end
end

function LeaveToAppPrompt:render()
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Prompt.ReturnHome",
		bodyText = "CoreScripts.InGameMenu.Prompt.ReturnHomeBodyText",
		confirmText = "CoreScripts.InGameMenu.Prompt.BackToHome",
		cancelText = "CoreScripts.InGameMenu.Cancel",
	})(function(localized)
		return Roact.createElement(LeavePrompt, {
			titleText = localized.titleText,
			bodyText = localized.bodyText,
			confirmText = localized.confirmText,
			cancelText = localized.cancelText,
			onConfirm = self.props.onConfirm or self.goToHomePage,
			onCancel = self.props.navigateBack,
			canGamepadCaptureFocus = self.props.canGamepadCaptureFocus,
			canKeyboardCaptureFocus = self.props.canKeyboardCaptureFocus,
			homeView = true,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local canGamepadCaptureFocus = state.menuPage == Constants.LeaveToAppPromptPageKey
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not state.respawn.dialogOpen
			and state.currentZone == 1

		local canKeyboardCaptureFocus = state.menuPage == Constants.LeaveToAppPromptPageKey
			and state.displayOptions.inputType == Constants.InputType.MouseAndKeyboard
			and not state.respawn.dialogOpen

		return {
			canGamepadCaptureFocus = canGamepadCaptureFocus,
			canKeyboardCaptureFocus = canKeyboardCaptureFocus,
		}
	end,
	function(dispatch)
		return {
			navigateBack = function()
				dispatch(NavigateBack())
			end,
		}
	end
)(LeaveToAppPrompt)
