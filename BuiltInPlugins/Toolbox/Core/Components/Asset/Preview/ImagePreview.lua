--[[
	This component is used to display a single image in an AssetPreview.

	Necessary properties:
	postion = UDim2
	size = UDimw
	imageContent = image, the image object to shown.
	scaleType = ImageLabel scaling type to use
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme

local ImagePreview = Roact.PureComponent:extend("ImagePreview")

function ImagePreview:render()
	return withTheme(function(theme)
		local props = self.props
		local imageContent = props.imageContent
		local position = props.position
		local size = props.size or UDim2.new(1, 0, 1, 0) -- Description height
		local imagePreviewTheme = theme.assetPreview.imagePreview
		local scaleType = props.scaleType or Enum.ScaleType.Fit

		local layoutOrder = props.layoutOrder

		return Roact.createElement("Frame", {
			Position = position, -- We should avoid using relative position and size.
			Size = size,

			BackgroundTransparency = 0,
			BackgroundColor3 = imagePreviewTheme.background,
			BorderSizePixel = 0,

			LayoutOrder = layoutOrder,
		},{
			ImageContent = Roact.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				ScaleType = scaleType,

				BackgroundTransparency = 1,

				Image = imageContent,
				LayoutOrder = 1,
			}),
		})
	end)
end

return ImagePreview