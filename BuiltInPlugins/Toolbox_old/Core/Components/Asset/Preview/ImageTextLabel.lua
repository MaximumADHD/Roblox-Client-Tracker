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
	contentColor = Color3, the color for the textContent.

	Optonlal properties:
	layoutOrder = num
	verticalAlignment = Enum.VerticalAlignment
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ImageTextLabel = Roact.PureComponent:extend("ImageTextLabel")

function ImageTextLabel:init(props)

end

function ImageTextLabel:render()
	local props = self.props
	local imageContent = props.imageContent
	local textContent = props.textContent or ""
	local contentColor = props.contentColor or Color3.new(0, 0, 0)
	local position = props.position or UDim2.new(1, 0, 1, 0)
	local size = props.size or UDim2.new(0, 100, 0, 20) -- Description height

	local layoutOrder = props.layoutOrder
	local verticalAlignment = props.verticalAlignment or Enum.VerticalAlignment.Center

	return Roact.createElement("Frame", {
		Position = position, -- We should avoid using relative position and size.
		Size = size,

		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	},{
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = verticalAlignment,
			Padding = UDim.new(0, 4),
		}),

		ImageContent = Roact.createElement("ImageLabel", {
			Size = UDim2.new(0, 20, 0, 20), -- TODO: Need to confirm the size, or make it more general

			BackgroundTransparency = 1,

			Image = imageContent,

			LayoutOrder = 1,
		}),

		TextContent = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -20, 1, 0),

			Text = tostring(textContent),
			TextColor3 = contentColor,
			Font = Enum.Font.Arial, --TODO: Need to confirm
			TextSize = 14, --TODO: Need to confirm
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,

			BackgroundTransparency = 1,

			LayoutOrder = 2,
		})
	})
end

return ImageTextLabel


