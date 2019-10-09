local Loading = script.Parent.Parent
local App = Loading.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)

local ShimmerPanel = require(Loading.ShimmerPanel)
local StyleProvider = require(UIBlox.Style.StyleProvider)
local StyleRoot = UIBlox.Style
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