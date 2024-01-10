local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local NAV_HIGHLIGHT_HEIGHT = 3

local NavHighlight = React.forwardRef(function(props, ref: React.Ref<any>)
	return React.createElement("Frame", {
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 0, 1, -NAV_HIGHLIGHT_HEIGHT),
		Size = UDim2.new(1, 0, 0, NAV_HIGHLIGHT_HEIGHT),
		BorderSizePixel = 1,
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderColor3 = Color3.new(1, 1, 1),
		ref = ref,
	})
end)

return NavHighlight
