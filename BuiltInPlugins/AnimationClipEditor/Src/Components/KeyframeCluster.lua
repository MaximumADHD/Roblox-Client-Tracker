--[[
	Represents a group of Keyframes when the zoom level of the editor is so far out that too
	many overlap eachother at once. This is purely visual, as clusters should not be editable since
	what keyframes go into them are not directly under the user's control.

	Properties:
		UDim2 Position = position of the frame
		UDim2 Size = size of the frame (not including diamond tips)
		int ZIndex = The draw index of the frame.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local KeyframeCluster = Roact.PureComponent:extend("KeyframeCluster")

local TRIM_AMOUNT = 4

function KeyframeCluster:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local keyframeTheme = theme.keyframeTheme
		local position = props.Position
		local size = props.Size
		local zIndex = props.ZIndex
		local diamondSize = UDim2.new(0, size.Y.Offset - TRIM_AMOUNT, 0, size.Y.Offset - TRIM_AMOUNT)
		local primary = props.Primary
		local color = primary and keyframeTheme.primaryClusterColor or keyframeTheme.clusterColor

		return Roact.createElement("Frame", {
			BackgroundColor3 = color,
			ZIndex = zIndex,
			Position = position,
			AnchorPoint = Vector2.new(0, 0.5),
			BorderSizePixel = 0,
			Size = size,
		}, {
			LeftDiamond = Roact.createElement("Frame", {
				BackgroundColor3 = color,
				Position = UDim2.new(0, 0, 0.5, 0),
				ZIndex = zIndex,
				Size = diamondSize,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Rotation = 45,
			}),
			RightDiamond = Roact.createElement("Frame", {
				BackgroundColor3 = color,
				Position = UDim2.new(1, 0, 0.5, 0),
				ZIndex = zIndex,
				Size = diamondSize,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Rotation = 45,
			}),
		})
end


KeyframeCluster = withContext({
	Theme = ContextServices.Theme,
})(KeyframeCluster)




return KeyframeCluster