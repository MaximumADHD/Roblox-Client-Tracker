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
	imageContent = image, the image object to shown.
	textContent = string, the textContent need to be shown.
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Urls = require(Plugin.Core.Util.Urls)
local Images = require(Plugin.Core.Util.Images)
local Constants = require(Plugin.Core.Util.Constants)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local SoundPreview = Roact.PureComponent:extend("SoundPreview")

local PADDING = 20
local ICON_WIDTH = 32
local ICON_HEIGHT = 32

function SoundPreview:init(props)

end

function SoundPreview:render()
	return withTheme(function(theme)
		local props = self.props
		local assetId = props.assetId

		local textContent = props.textContent or ""
		local position = props.position
		local size = props.size or UDim2.new(1, 0, 1, 0)
		local soundPreviewTheme = theme.assetPreview.soundPreview

		local layoutOrder = props.layoutOrder

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,

			BackgroundTransparency = 0,
			BackgroundColor3 = soundPreviewTheme.background,
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

				Image = Images.AUDIO,
				LayoutOrder = 1,
			}),

			TextContent = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, -2 * PADDING, 0, PADDING),

				Text = tostring(textContent),
				TextColor3 = soundPreviewTheme.textColor,
				Font = Enum.Font.Arial, --TODO: Need to confirm
				TextSize = 14, --TODO: Need to confirm
				TextXAlignment = Enum.TextXAlignment.Center,

				BackgroundTransparency = 1,
				LayoutOrder = 2,
			})
		})
	end)
end

return SoundPreview


