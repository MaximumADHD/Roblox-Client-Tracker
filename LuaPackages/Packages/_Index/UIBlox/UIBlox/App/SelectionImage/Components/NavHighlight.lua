local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local NAV_HIGHLIGHT_HEIGHT = 3

return function(props)
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, -NAV_HIGHLIGHT_HEIGHT),
			Size = UDim2.new(1, 0, 0, NAV_HIGHLIGHT_HEIGHT),
			BorderSizePixel = 1,
			BackgroundColor3 = style.Theme.SelectionCursor.Color,
			BorderColor3 = style.Theme.SelectionCursor.Color,
			BackgroundTransparency = style.Theme.SelectionCursor.Transparency,

			[Roact.Ref] = props[Roact.Ref]
		})
	end)
end