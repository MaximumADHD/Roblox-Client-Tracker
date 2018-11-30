local Roact = require(game:GetService("CorePackages").Roact)
local StudioThemeProvider = require(script.Parent.Parent.Components.StudioThemeProvider)

return function()
	it("mounts and unmounts", function()
		local element = Roact.createElement(StudioThemeProvider, {
			StudioSettings = {
				Theme = {
					GetColor = function() return Color3.new(0,0,0) end,
				},
				ThemeChanged = {
					Connect = function() return {Disconnect = function() end} end,
				},
			},
			Render = function()
				return Roact.createElement("Frame")
			end,
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)
end
