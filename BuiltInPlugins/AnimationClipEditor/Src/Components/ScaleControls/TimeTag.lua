--[[
	Displays given time (meant to represent time bounds for the scale controls)
	in a rounded frame.

	Properties:
		UDim2 Position = position of the handle
		UDim2 Size = size of the handle
		Vector2 AnchorPoint = anchor point for the position of this frame
		string Time = time to be displayed in the tag
		int ZIndex = display order of this frame
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UILibraryCompat = Plugin.Src.UILibraryCompat
local RoundFrame = require(UILibraryCompat.RoundFrame)

local TimeTag = Roact.PureComponent:extend("TimeTag")

function TimeTag:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local position = props.Position
		local size = props.Size
		local anchorPoint = props.AnchorPoint
		local time = props.Time
		local zIndex = props.ZIndex

		return Roact.createElement(RoundFrame, {
			BackgroundColor3 = theme.scaleControlsTheme.mainColor,
			BorderSizePixel = 0,
			AnchorPoint = anchorPoint,
			Size = size,
			Position = position,
			ZIndex = zIndex,
		}, {
			Time = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, -4, 1, -2),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Text = time,
				TextColor3 = theme.scaleControlsTheme.textColor,
				TextSize = theme.scaleControlsTheme.textSize,
				Font = theme.font,
			})
		})
end

if FFlagAnimationClipEditorWithContext then
	TimeTag = withContext({
		Theme = ContextServices.Theme,
	})(TimeTag)
else
	ContextServices.mapToProps(TimeTag, {
		Theme = ContextServices.Theme,
	})
end



return TimeTag