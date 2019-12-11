local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local CancelLeavingGame = require(InGameMenu.Actions.CancelLeavingGame)

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ConfirmationDialog = require(script.Parent.ConfirmationDialog)

local validateProps = t.strictInterface({
	isLeavingGame  = t.boolean,
	onCancel = t.callback,
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
				RunService.Heartbeat:Wait()
				game:Shutdown()
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
		end,
	}
end)(LeaveGameDialog)