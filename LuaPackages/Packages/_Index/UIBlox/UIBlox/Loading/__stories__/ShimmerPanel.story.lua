local LoadingRoot = script.Parent.Parent
local UIBloxRoot = LoadingRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)

local ShimmerPanel = require(LoadingRoot.ShimmerPanel)
local StyleProvider = require(UIBloxRoot.Style.StyleProvider)
local StyleRoot = UIBloxRoot.Style
local testStyle = require(StyleRoot.Validator.TestStyle)

local ShimmerPanelStory = Roact.PureComponent:extend("ShimmerPanelStory")

-- luacheck: ignore unused argument self
function ShimmerPanelStory:render()
	return Roact.createElement(ShimmerPanel, {
		AnchorPoint = Vector2.new(0, 0),
		LayoutOrder = 0,
		shimmerSpeed = 2,
		imageScale = 2,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(0, 100, 0, 100),
	})
end

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = testStyle,
	}, {
		Roact.createElement(ShimmerPanelStory)
	})
	local handle = Roact.mount(styleProvider, target, "ShimmerPanelStory")
	return function()
		Roact.unmount(handle)
	end
end