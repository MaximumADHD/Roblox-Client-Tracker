local Roact = require(game:GetService("CorePackages").Roact)
local GameTableSection = require(script.Parent.Parent.Components.GameTableSection)
local Theming = require(script.Parent.Parent.Theming)
local Promise = require(script.Parent.Parent.Promise)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(Theming.ThemeProvider, {
			theme = Theming.createTheme({}),
		}, {
			Content = Roact.createElement(GameTableSection, {
				CheckTableAvailability = function()
					return Promise.new(function() end)
				end,
				GameIdChangedSignal = {
					Connect = function() end,
				},
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
