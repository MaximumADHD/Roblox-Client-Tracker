local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local RespawnPlayer = require(InGameMenu.Thunks.RespawnPlayer)

local ConfirmationDialog = require(script.Parent.ConfirmationDialog)

local function RespawnDialog(props)
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.RespawnCharacterDialogTitle",
		bodyText = "CoreScripts.InGameMenu.RespawnCharacterDialogBody",
		confirmText = "CoreScripts.InGameMenu.RespawnCharacterDialogConfirm",
		cancelText = "CoreScripts.InGameMenu.Cancel",
	})(function(localized)
		return Roact.createElement(ConfirmationDialog, {
			visible = props.isRespawning,
			titleText = localized.titleText,
			bodyText = localized.bodyText,
			confirmText = localized.confirmText,
			cancelText = localized.cancelText,

			bindReturnToConfirm = false,

			onCancel = props.onCancel,
			onConfirm = props.onConfirm,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		isRespawning = state.respawn.dialogOpen,
	}
end, function(dispatch)
	return {
		onCancel = function()
			dispatch(SetRespawning(false))
		end,
		onConfirm = function()
			dispatch(RespawnPlayer)
		end,
	}
end)(RespawnDialog)