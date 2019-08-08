--[[
	This component is designed to be used in the assetPreview page. Which has a fixed size of image and text.
	If we want to make this a general component, we will need to support change postion and size of the image
	and text.
	For now, this component has a fixed height, so we only need a few properties. The length of the component
	will be based on the size of the image and the bounding box of text. Image's height and width will be the
	same.

	Necessary properties:
	postion = UDim2
	size = UDimw
	textContent = string, the textContent need to be shown.
	instance = The instance to preview.
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local OtherPreview = Roact.PureComponent:extend("OtherPreview")

local PADDING = 20
local ICON_WIDTH = 16
local ICON_HEIGHT = 16

function OtherPreview:init(props)
end

-- TODO: Check do I need to create separate component
-- for scripts or other component.
function OtherPreview:render()
	return withTheme(function(theme)
		local props = self.props

		local textContent = props.textContent or ""
		local instance = props.instance
		local iconInfo = Constants.getClassIcon(instance)

		local position = props.position
		local size = props.size or UDim2.new(1, 0, 1, 0)
		local otherPreviewTheme = theme.assetPreview.otherPreview

		local layoutOrder = props.layoutOrder

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,

			BackgroundTransparency = 0,
			BackgroundColor3 = otherPreviewTheme.background,
			BorderSizePixel = 0,

			LayoutOrder = layoutOrder,
		},{
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),

			ImageContent = Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, ICON_WIDTH, 0, ICON_HEIGHT), -- TODO: Need to confirm the size, or make it more general

				BackgroundTransparency = 1,

				Image = iconInfo.Image,
				ImageRectSize = iconInfo.ImageRectSize,
				ImageRectOffset = iconInfo.ImageRectOffset,
				LayoutOrder = 1,
			}),

			TextContent = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -2 * PADDING, 0, PADDING),

				Text = tostring(textContent),
				TextColor3 = otherPreviewTheme.textColor,
				Font = Enum.Font.Arial, --TODO: Need to confirm
				TextSize = 14, --TODO: Need to confirm
				TextXAlignment = Enum.TextXAlignment.Center,

				BackgroundTransparency = 1,
				LayoutOrder = 2,
			})
		})
	end)
end

return OtherPreview


