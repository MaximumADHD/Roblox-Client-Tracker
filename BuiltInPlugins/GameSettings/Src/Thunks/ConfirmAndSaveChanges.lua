--[[
	This thunk can be used to intercept changes before they are saved, so that
	warning dialogs can be displayed to let the user know that their changes will
	shut down all running servers in the game.

	After confirming that the user wants to save changes, this dispatches the SaveChanges thunk.
	If no warnings are necessary, this thunk dispatches SaveChanges immediately.
]]
local FFlagGameSettingsDeduplicatePackages = game:GetFastFlag("GameSettingsDeduplicatePackages")

local Plugin = script.Parent.Parent.Parent
local SaveChanges = require(Plugin.Src.Thunks.SaveChanges)

local WarningDialog = require(Plugin.Src.Components.Dialog.WarningDialog)

local SimpleDialog = require(Plugin.Src.Components.Dialog.SimpleDialog)

local Framework = require(Plugin.Framework)
local Util = Framework.Util
local Promise = if FFlagGameSettingsDeduplicatePackages then Util.Promise else require(Plugin.Packages.Promise)

return function(localization, dialog)
	return function(store)
		local state = store:getState()
		local localized = localization

		local warningDialogProps = {
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

		local errorDialogProps = {
			Size = Vector2.new(343, 145),
			Title = localized:getText("General", "ErrorsOnSaveHeader") ,
			Header = localized:getText("General", "ErrorsOnSaveBody"),
			Buttons = {
				localized:getText("General", "ReplyOK"),
			},
		}

		return Promise.new(function(resolve, reject)
			spawn(function()
				for _, warning in pairs(state.Settings.Warnings) do
					if not dialog.showDialog(WarningDialog, warningDialogProps[warning]):await() then
						reject()
					end
				end
				resolve()
			end)
		end)
		:andThen(function()
			return store:dispatch(SaveChanges())
			:catch(function(errors)
				dialog.showDialog(SimpleDialog, errorDialogProps):catch(function()
					--do nothing
				end)
			end)
		end)
	end
end