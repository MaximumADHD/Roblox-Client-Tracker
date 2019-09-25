local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Theming = require(Plugin.Src.ContextServices.Theming)

local MainView = Roact.Component:extend("MainView")

function MainView:render()
	return Theming.withTheme(function(theme)
		return Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0,0,0,0),
			BackgroundColor3 = theme.backgroundColor,
		})
	end)
end

return MainView