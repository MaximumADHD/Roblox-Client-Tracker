local Component = script.Parent
local UIBlox = Component.Parent
local Roact = require(UIBlox.Parent.Roact)

local AppStyleProvider = require(UIBlox.App.Style.AppStyleProvider)

return function(elements)
	return Roact.createElement(AppStyleProvider, {
		style = {
			themeName = "dark",
			fontName = "gotham",
		},
	}, {
		Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
		}, elements)
	})
end