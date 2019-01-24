local StudioThemeProvider = require(script.Parent.Components.StudioThemeProvider)
local Promise = require(script.Parent.Promise)
local Roact = require(game:GetService("CorePackages").Roact)

return function(plugin, studioSettings)
	return function(title, sizeX, sizeY, renderContent)
		return Promise.new(function(resolve, reject)
			spawn(function()
				local dialogHandle

				local dialog = plugin:CreateQWidgetPluginGui(title, {
					Size = Vector2.new(sizeX, sizeY),
					Modal = true,
				})

				dialog.Enabled = true

				local function okay(...)
					Roact.unmount(dialogHandle)
					dialog:Destroy()
					resolve(...)
				end

				local function cancel()
					Roact.unmount(dialogHandle)
					dialog:Destroy()
					reject()
				end

				dialog.Title = title
				dialog:GetPropertyChangedSignal("Enabled"):connect(function()
					cancel()
				end)

				dialogHandle = Roact.mount(
					Roact.createElement(StudioThemeProvider, {
						StudioSettings = studioSettings,
					}, {
						Content = renderContent(okay, cancel)
					}), dialog)
			end)
		end)
	end
end
