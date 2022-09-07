local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local LeavePrompt = require(script.Parent.LeavePrompt)

local InGameMenu = script.Parent.Parent.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local Constants = require(InGameMenu.Resources.Constants)
local NavigateBack = require(InGameMenu.Actions.NavigateBack)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local GetDefaultQualityLevel = require(RobloxGui.Modules.Common.GetDefaultQualityLevel)
local LeaveGamePrompt = Roact.PureComponent:extend("LeaveGamePrompt")

LeaveGamePrompt.validateProps = t.strictInterface({
	navigateBack = t.callback,
	canGamepadCaptureFocus = t.optional(t.boolean),
	canKeyboardCaptureFocus = t.optional(t.boolean),
	-- used only for unit testing until we can properly mock
	onConfirm = t.optional(t.callback),
})

function LeaveGamePrompt:init()
	self.leaveGameConfirm = function()
		PerfUtils.leavingGame()
		SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsLeaveGameName,
						{confirmed = Constants.AnalyticsConfirmedName})
		RunService.Heartbeat:Wait()
		game:Shutdown()
		settings().Rendering.QualityLevel = GetDefaultQualityLevel()
	end
end

function LeaveGamePrompt:render()
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Prompt.LeaveGameTitle",
		bodyText = "CoreScripts.InGameMenu.Prompt.LeaveGameBodyText",
		confirmText = "CoreScripts.InGameMenu.Prompt.LeaveGame",
		cancelText = "CoreScripts.InGameMenu.Cancel",
	})(function(localized)
		return Roact.createElement(LeavePrompt, {
			titleText = localized.titleText,
			bodyText = localized.bodyText,
			confirmText = localized.confirmText,
			cancelText = localized.cancelText,
			onConfirm = self.props.onConfirm or self.leaveGameConfirm,
			onCancel = self.props.navigateBack,
			canGamepadCaptureFocus = self.props.canGamepadCaptureFocus,
			canKeyboardCaptureFocus = self.props.canKeyboardCaptureFocus,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(
	 function(state, props)
		local canGamepadCaptureFocus = state.menuPage == Constants.LeaveGamePromptPageKey
			and state.displayOptions.inputType == Constants.InputType.Gamepad
			and not state.respawn.dialogOpen
			and state.currentZone == 1

		local canKeyboardCaptureFocus = state.menuPage == Constants.LeaveGamePromptPageKey
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
				SendAnalytics(
					Constants.AnalyticsInGameMenuName,
					Constants.AnalyticsLeaveGameName,
					{confirmed = Constants.AnalyticsCancelledName})
			end,
		}
	end
)(LeaveGamePrompt)
