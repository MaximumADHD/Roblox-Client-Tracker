local Roact = require(game:GetService("CorePackages").Roact)
local EmbeddedTableSection = require(script.Parent.Parent.Components.EmbeddedTableSection)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({
				TextCaptureButtonImage = {
					On = "rbxasset://textures/localizationUIScrapingOn.png",
					Off = "rbxasset://textures/localizationUIScrapingOff.png",
				}
			}),
		}, {
			Content = Roact.createElement(EmbeddedTableSection, {
				LayoutOrder = 3,
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
