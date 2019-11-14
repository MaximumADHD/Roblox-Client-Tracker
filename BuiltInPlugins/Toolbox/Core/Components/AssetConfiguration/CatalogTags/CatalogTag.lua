--[[
	Renders a catalog tag for TagsComponent

	Necessary Props:
		UDim2 Position
		UDim2 Size
		string Text
		number textSize
		callback onClose
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local Images = require(Util.Images)

local RoundFrame = require(Libs.UILibrary.Components.RoundFrame)

local withTheme = ContextHelper.withTheme

local TAG_PADDING = 3
local CLOSE_BUTTON_SIZE = 16

local CatalogTag = Roact.PureComponent:extend("CatalogTag")

function CatalogTag:render()
	return withTheme(function(theme)
		local props = self.props

		local position = props.Position
		local size = props.Size

		return Roact.createElement(RoundFrame, {
			BackgroundColor3 = theme.tags.backgroundColor,
			BorderColor3 = theme.tags.borderColor,
			Position = position,
			Size = size,
		}, {
			Title = Roact.createElement("TextLabel", {
				TextColor3 = theme.tags.textColor,
				Text = props.Text,
				TextSize = Constants.FONT_SIZE_TITLE,
				Font = Constants.FONT,
				Size = UDim2.new(0, props.textSize.X, 0, props.textSize.Y),
				Position = UDim2.new(0, TAG_PADDING, 0, TAG_PADDING),
				BackgroundTransparency = 1,
			}),

			Close = Roact.createElement("ImageButton", {
				BackgroundTransparency = 1,
				Image = Images.CLOSE_BUTTON,
				Size = UDim2.new(0, CLOSE_BUTTON_SIZE, 0, CLOSE_BUTTON_SIZE),
				ImageColor3 = theme.tags.textColor,
				Position = UDim2.new(0, TAG_PADDING + props.textSize.X + TAG_PADDING, 0.5, -CLOSE_BUTTON_SIZE/2),

				[Roact.Event.MouseButton1Click] = props.onClose,
			}),
		})
	end)
end

return CatalogTag