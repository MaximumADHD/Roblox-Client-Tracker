local Roact = require(game:GetService("CorePackages").Roact)
local UploadDialogContent = require(script.Parent.Parent.Components.UploadDialogContent)
local Theming = require(script.Parent.Parent.Theming)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(UploadDialogContent, {
				PatchInfo = {
					add = 3,
					change = 4,
					remove = 5
				}
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
