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
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local EDGE_DISTANCE = 28

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ShowOnTop = Framework.UI.ShowOnTop
local DropShadow = Framework.UI.DropShadow
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local UILibraryCompat = Plugin.Src.UILibraryCompat
local RoundFrame = require(UILibraryCompat.RoundFrame)

local BaseToast = Roact.PureComponent:extend("BaseToast")

function BaseToast:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local toastTheme = theme.toastTheme

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
				Background =  Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = theme.backgroundColor,
					BackgroundTransparency = transparency,
					BorderSizePixel = 0,
					ZIndex = 2,
				}, {
					Shadow = Roact.createElement(DropShadow, {
						Transparency = shadowTransparency,
						Color = toastTheme.shadowColor,
						Radius = toastTheme.shadowSize,
						Offset = Vector2.new(),
					}, props[Roact.Children]),
				})
			}),
		})
end

if FFlagAnimationClipEditorWithContext then
	BaseToast = withContext({
		Theme = ContextServices.Theme,
	})(BaseToast)
else
	ContextServices.mapToProps(BaseToast, {
		Theme = ContextServices.Theme,
	})
end


return BaseToast
