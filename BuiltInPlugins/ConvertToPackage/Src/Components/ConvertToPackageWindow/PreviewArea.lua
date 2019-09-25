--[[
	This component is responsible for showing user the preview of the package to be converted.

	Necessary Props:
	TotalWidth number, will be used to decide how width component is.

	Optional Props:
	LayoutOrder number, will be used by the layouter to change the position of the components.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local AssetThumbnailPreview = require(Plugin.Src.Components.ConvertToPackageWindow.AssetThumbnailPreview)
local Util = Plugin.Src.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local PreviewArea = Roact.PureComponent:extend("PreviewArea")

function PreviewArea:render()
	return withTheme(function(theme)
		local props = self.props

		local TotalWidth = props.TotalWidth
		local LayoutOrder = props.LayoutOrder
		local thumbnailSize = 150
		local previewAreaTheme = theme.previewArea
		local orderIterator = LayoutOrderIterator.new()

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, TotalWidth, 1, 0),

			BackgroundTransparency = 0,
			BackgroundColor3 = previewAreaTheme.backgroundColor,
			BorderSizePixel = 0,

			LayoutOrder = LayoutOrder,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 24),
				PaddingBottom = UDim.new(0, 5),
				PaddingLeft = UDim.new(0, 5),
				PaddingRight = UDim.new(0, 5),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 20),
			}),
			AssetThumbnailPreview = Roact.createElement(AssetThumbnailPreview, {
				Size = UDim2.new(0, thumbnailSize, 0, thumbnailSize),
				ShowTitle = false,

				LayoutOrder = orderIterator:getNextOrder()
			})
		})
	end)
end

return PreviewArea