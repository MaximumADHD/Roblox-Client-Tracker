--[[
	This thunk can be used to intercept changes before they are saved, so that
	warning dialogs can be displayed to let the user know that their changes will
	shut down all running servers in the game.

	After confirming that the user wants to save changes, this dispatches the SaveChanges thunk.
	If no warnings are necessary, this thunk dispatches SaveChanges immediately.
]]

local FFlagStudioLuaGameSettingsSaveErrorsPopUp = settings():GetFFlag("StudioLuaGameSettingsSaveErrorsPopUp")

local Plugin = script.Parent.Parent.Parent
local SaveChanges = require(Plugin.Src.Thunks.SaveChanges)

local getSettingsImpl = require(Plugin.Src.Consumers.getSettingsImpl)
local getLocalizedContent = require(Plugin.Src.Consumers.getLocalizedContent)
local showDialog = require(Plugin.Src.Consumers.showDialog)
local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local SimpleDialog = nil
if FFlagStudioLuaGameSettingsSaveErrorsPopUp then
	SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)
end

local Promise = require(Plugin.Promise)

return function(provider)
	return function(store)
		local state = store:getState()
		local settingsImpl = getSettingsImpl(provider)
		local localized = getLocalizedContent(provider)

		local warningDialogProps = {
			isActive = {
				Title = localized.PrivateDialog.Header,
				Header = localized.PrivateDialog.Prompt,
				Description = localized.PrivateDialog.Body,
				Buttons = localized.PrivateDialog.Buttons,
			},
			universeAvatarType = {
				Title = localized.AvatarDialog.Header,
				Header = localized.AvatarDialog.Prompt,
				Description = localized.AvatarDialog.Body,
				Buttons = localized.AvatarDialog.Buttons,
			}
		}

		local errorDialogProps = nil
		if FFlagStudioLuaGameSettingsSaveErrorsPopUp then
			errorDialogProps = {
				Size = Vector2.new(343, 145),
				Title = localized.ErrorsOnSaveDialog.Header,
				Header = localized.ErrorsOnSaveDialog.Body,
				Buttons = localized.ErrorsOnSaveDialog.Buttons,
			}
		end

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
			if FFlagStudioLuaGameSettingsSaveErrorsPopUp then
				return store:dispatch(SaveChanges(settingsImpl))
				:catch(function(errors)
					showDialog(provider, SimpleDialog, errorDialogProps):catch(function()
						--do nothing
					end)
				end)
			else
				return store:dispatch(SaveChanges(settingsImpl))
			end
		end)
	end
end