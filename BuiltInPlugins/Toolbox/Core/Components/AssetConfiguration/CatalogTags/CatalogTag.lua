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

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Util.Images)
local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local RoundBox = require(Packages.Framework).UI.Decoration.RoundBox
local Container = require(Packages.Framework).UI.Container

local TAG_PADDING = 3
local CLOSE_BUTTON_SIZE = 16

local CatalogTag = Roact.PureComponent:extend("CatalogTag")

function CatalogTag:render()
	return self:renderContents()
end

function CatalogTag:renderContents(theme)
	local props = self.props
	theme = props.Stylizer

	local position = props.Position
	local size = props.Size

	local contents = {
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
			Position = UDim2.new(0, TAG_PADDING + props.textSize.X + TAG_PADDING, 0.5, -CLOSE_BUTTON_SIZE / 2),

			[Roact.Event.MouseButton1Click] = props.onClose,
		}),
	}

	return Roact.createElement(Container, {
		Background = RoundBox,
		BackgroundStyle = "CatalogTag",
		Position = position,
		Size = size,
	}, contents)
end

CatalogTag = withContext({
	Stylizer = ContextServices.Stylizer,
})(CatalogTag)

return CatalogTag
