local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Promise = Framework.Util.Promise

local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

return function(plugin, localization, theme, mouse)
	return function(title, renderContent)
		local dialogTheme
		if (THEME_REFACTOR) then
			dialogTheme = theme
		else
			dialogTheme = theme:get("Plugin")
		end

		return Promise.new(function(resolve, _)
			spawn(function()
				local dialogHandle
				local dialog = plugin:CreateQWidgetPluginGui(title, {
					Size = dialogTheme.DialogSize,
					Modal = true,
				})
				dialog.Enabled = true
				dialog.Title = title

				local function ok()
					Roact.unmount(dialogHandle)
					dialog:Destroy()
					resolve(true)
				end

				local function cancel()
					Roact.unmount(dialogHandle)
					dialog:Destroy()
					resolve(false)
				end

				dialog:GetPropertyChangedSignal("Enabled"):connect(function()
					cancel()
				end)

				local dialogContent = ContextServices.provide({
					localization,
					theme,
					mouse,
				}, {
					Content = renderContent(ok, cancel)
				})

				dialogHandle = Roact.mount(dialogContent, dialog)
			end)
		end)
	end
end