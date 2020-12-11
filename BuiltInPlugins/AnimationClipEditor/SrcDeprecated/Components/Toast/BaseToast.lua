--[[
	Represents a non-blocking popup message which appears above other
	elements in the window. The appearance of this component is mainly
	controlled via passing in elements as children.

	Props:
		Vector2 AnchorPoint = The point where the Toast is anchored relative
			to the main window. For example, an AnchorPoint of (1, 1) will
			display the Toast in the bottom right corner of the window.
		UDim2 Size = The size of the Toast window itself.
		float Transparency = How transparent the Toast popup appears. Can be
			used for fade out effects.
]]

local EDGE_DISTANCE = 28

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local UILibrary = require(Plugin.UILibrary)
local ShowOnTop = UILibrary.Focus.ShowOnTop
local DropShadow = UILibrary.Component.DropShadow
local RoundFrame = UILibrary.Component.RoundFrame

local BaseToast = Roact.PureComponent:extend("BaseToast")

function BaseToast:render()
	return withTheme(function(theme)
		local toastTheme = theme.toastTheme

		local props = self.props
		local anchorPoint = props.AnchorPoint
		local size = props.Size
		local transparency = props.Transparency or 0

		local xPadding
		if anchorPoint.X == 0 then
			xPadding = EDGE_DISTANCE
		elseif anchorPoint.X == 1 then
			xPadding = -EDGE_DISTANCE
		else
			xPadding = 0
		end

		local yPadding
		if anchorPoint.Y == 0 then
			yPadding = EDGE_DISTANCE
		elseif anchorPoint.Y == 1 then
			yPadding = -EDGE_DISTANCE
		else
			yPadding = 0
		end

		local shadowTransparency = toastTheme.shadowTransparency
			+ (1 - toastTheme.shadowTransparency) * transparency

		return Roact.createElement(ShowOnTop, {
			Priority = -1,
		}, {
			Container = Roact.createElement("Frame", {
				AnchorPoint = anchorPoint,
				Size = size,
				Position = UDim2.new(anchorPoint.X, xPadding, anchorPoint.Y, yPadding),
				BackgroundTransparency = 1,
			}, {
				Background =  Roact.createElement(RoundFrame, {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = theme.backgroundColor,
					BackgroundTransparency = transparency,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, props[Roact.Children]),

				Shadow = Roact.createElement(DropShadow, {
					Size = UDim2.new(1, 0, 1, 0),
					Transparency = shadowTransparency,
					Color = toastTheme.shadowColor,
					SizePixel = toastTheme.shadowSize,
					ZIndex = 1,
				}),
			}),
		})
	end)
end

return BaseToast
