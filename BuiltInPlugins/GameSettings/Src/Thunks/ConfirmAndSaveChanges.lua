--[[
	This thunk can be used to intercept changes before they are saved, so that
	warning dialogs can be displayed to let the user know that their changes will
	shut down all running servers in the game.

	After confirming that the user wants to save changes, this dispatches the SaveChanges thunk.
	If no warnings are necessary, this thunk dispatches SaveChanges immediately.
]]

local FFlagGameSettingsShowWarningsOnSave = settings():GetFFlag("GameSettingsShowWarningsOnSave")

local Plugin = script.Parent.Parent.Parent
local SaveChanges = require(Plugin.Src.Thunks.SaveChanges)

local getSettingsImpl = require(Plugin.Src.Consumers.getSettingsImpl)
local showDialog = require(Plugin.Src.Consumers.showDialog)
local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local Promise = require(Plugin.Promise)

local warningDialogProps = {
	isActive = {
		Title = "Make Private",
		Header = "Would you like to make it private?",
		Description = "Making a game private will shut down any running games.",
		Buttons = {"No", "Yes"},
	},
	universeAvatarType = {
		Title = "Warning",
		Header = "Would you like to proceed?",
		Description = "Changing the game's Avatar Type to this setting "
			.. "will shut down any running games.",
		Buttons = {"No", "Yes"},
	}
}

return function(provider)
	return function(store)
		local state = store:getState()
		local settingsImpl = getSettingsImpl(provider)

		if FFlagGameSettingsShowWarningsOnSave then
			return Promise.new(function(resolve, reject)
				spawn(function()
					for _, warning in pairs(state.Settings.Warnings) do
						if not showDialog(provider, WarningDialog, warningDialogProps[warning]):await() then
							reject()
						end
					end
					resolve()
				end)
			end)
			:andThen(function()
				store:dispatch(SaveChanges(settingsImpl))
			end)
		else
			return store:dispatch(SaveChanges(settingsImpl))
		end
	end
end