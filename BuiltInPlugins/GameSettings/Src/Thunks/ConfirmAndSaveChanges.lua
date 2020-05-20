--[[
	This thunk can be used to intercept changes before they are saved, so that
	warning dialogs can be displayed to let the user know that their changes will
	shut down all running servers in the game.

	After confirming that the user wants to save changes, this dispatches the SaveChanges thunk.
	If no warnings are necessary, this thunk dispatches SaveChanges immediately.
]]

local Plugin = script.Parent.Parent.Parent
local SaveChanges = require(Plugin.Src.Thunks.SaveChanges)

local getSettingsImpl = require(Plugin.Src.Consumers.getSettingsImpl)
local getLocalizedContent = require(Plugin.Src.Consumers.getLocalizedContent)
local showDialog = require(Plugin.Src.Consumers.showDialog)
local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)

local Promise = require(Plugin.Promise)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

return function(provider, localization, settingsImpl, dialog)
	return function(store)
		local state = store:getState()
		local settingsImpl = FFlagStudioConvertGameSettingsToDevFramework and settingsImpl or getSettingsImpl(provider)
		local localized = FFlagStudioConvertGameSettingsToDevFramework and localization or getLocalizedContent(provider)

		local warningDialogProps
		local errorDialogProps
		if FFlagStudioConvertGameSettingsToDevFramework then
			warningDialogProps = {
				isActive = {
					Title = localized:getText("General", "PrivateDialogHeader") ,
					Header = localized:getText("General", "PrivateDialogPrompt"),
					Description = localized:getText("General", "PrivateDialogBody"),
					Buttons = {
						localized:getText("General", "ButtonCancel"),
						localized:getText("General", "ButtonSave"),
					},
				},
				universeAvatarType = {
					Title = localized:getText("General", "AvatarDialogHeader") ,
					Header = localized:getText("General", "AvatarDialogPrompt"),
					Description = localized:getText("General", "AvatarDialogBody"),
					Buttons = {
						localized:getText("General", "ReplyNo"),
						localized:getText("General", "ReplyYes"),
					},
				}
			}

			errorDialogProps = {
				Size = Vector2.new(343, 145),
				Title = localized:getText("General", "ErrorsOnSaveHeader") ,
				Header = localized:getText("General", "ErrorsOnSaveBody"),
				Buttons = {
					localized:getText("General", "ReplyOK"),
				},
			}
		else
			warningDialogProps = {
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
					if FFlagStudioConvertGameSettingsToDevFramework then
						if not dialog.showDialog(WarningDialog, warningDialogProps[warning]):await() then
							reject()
						end
					else
						if not showDialog(provider, WarningDialog, warningDialogProps[warning]):await() then
							reject()
						end
					end
				end
				resolve()
			end)
		end)
		:andThen(function()
			return store:dispatch(SaveChanges(settingsImpl))
			:catch(function(errors)
				if FFlagStudioConvertGameSettingsToDevFramework then
					dialog.showDialog(SimpleDialog, errorDialogProps):catch(function()
						--do nothing
					end)
				else
					showDialog(provider, SimpleDialog, errorDialogProps):catch(function()
						--do nothing
					end)
				end
			end)
		end)
	end
end