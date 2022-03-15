local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local CancelLeavingGame = require(InGameMenu.Actions.CancelLeavingGame)

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ConfirmationDialog = require(script.Parent.ConfirmationDialog)

local Constants = require(InGameMenu.Resources.Constants)

local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)

local GetDefaultQualityLevel = require(RobloxGui.Modules.Common.GetDefaultQualityLevel)

local validateProps = t.strictInterface({
	isLeavingGame  = t.boolean,
	onCancel = t.callback,
	sendAnalytics = t.callback,
})

local function LeaveGameDialog(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withLocalization({
		bodyText = "CoreScripts.InGameMenu.ConfirmLeaveGame",
		confirmText = "CoreScripts.InGameMenu.Leave",
		titleText = "CoreScripts.InGameMenu.LeaveGameQuestion",
		cancelText = "CoreScripts.InGameMenu.Cancel",
	})(function(localized)
		return Roact.createElement(ConfirmationDialog, {
			bodyText = localized.bodyText,
			confirmText = localized.confirmText,
			titleText = localized.titleText,
			cancelText = localized.cancelText,

			bindReturnToConfirm = true,

			onCancel = props.onCancel,
			onConfirm = function()
				SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsLeaveGameName,
								{confirmed = Constants.AnalyticsConfirmedName})
				RunService.Heartbeat:Wait()
				game:Shutdown()
				settings().Rendering.QualityLevel = GetDefaultQualityLevel()
			end,

			blurBackground = true,

			visible = props.isLeavingGame,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isLeavingGame = state.leavingGame,
	}
end, function(dispatch)
	return {
		onCancel = function()
			dispatch(CancelLeavingGame())
			SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsLeaveGameName, {confirmed = Constants.AnalyticsCancelledName})
		end,
	}
end)(LeaveGameDialog)