--[[
	Localization Tools plugin main view
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local withContext = ContextServices.withContext

local UILibrary = require(Plugin.Packages.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local FitToContent = createFitToContent("Frame", "UIListLayout", {
    SortOrder = Enum.SortOrder.LayoutOrder,
})
local ProgressSpinner = require(Plugin.Src.Components.ProgressSpinner)

local MessageFrame = require(Plugin.Src.Components.MessageFrame)
local CloudTableSection = require(Plugin.Src.Components.CloudTableSection)
local EmbeddedTableSection = require(Plugin.Src.Components.EmbeddedTableSection)
local ImageLocalizationSection = require(Plugin.Src.Components.ImageLocalizationSection)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local props = self.props
	local theme = props.Stylizer
	local layoutOrder = LayoutOrderIterator.new()

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
	}, {
		MessageFrame = Roact.createElement(MessageFrame),

		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundColor3 = theme.ScrollingFrameackground,
			BackgroundTransparency = 0,
			BorderColor3 = theme.ScrollBarBorderColor,
			BorderSizePixel = 1,
			CanvasSize = UDim2.new(1, 0, 0, theme.ScrollingFrameCanvasHeight),
			ClipsDescendants = true,
			ScrollBarImageTransparency = 0,
			ScrollBarImageColor3 = theme.ScrollBarColor,
			ScrollingDirection = Enum.ScrollingDirection.XY,
			Size = UDim2.new(1, 0, 1, theme.ScrollingFrameHeight - 1),
		}, {
			Container = Roact.createElement(FitToContent, {
				BackgroundTransparency = 0,
				BackgroundColor3 = theme.MainBackground,
				BorderSizePixel = 0,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, theme.PaddingTop),
					PaddingBottom = UDim.new(0, theme.Padding),
					PaddingLeft = UDim.new(0, theme.Padding),
					PaddingRight = UDim.new(0, theme.PaddingRight),
				}),
				CloudTableSection = Roact.createElement(CloudTableSection, {
					LayoutOrder = layoutOrder:getNextOrder(),
				}),
				EmbeddedTableSection = Roact.createElement(EmbeddedTableSection, {
					LayoutOrder = layoutOrder:getNextOrder(),
				}),
				ImageLocalizationSection = Roact.createElement(ImageLocalizationSection, {
					LayoutOrder = layoutOrder:getNextOrder(),
				}),
				ExtendedBackground = Roact.createElement("Frame", {
					BackgroundColor3 = theme.MainBackground,
					BorderSizePixel = 0,
					LayoutOrder = layoutOrder:getNextOrder(),
					Size = UDim2.new(1, 0, 0, theme.EmptyFrameHeight),
				})
			}),
		}),

		ProgressSpinner = Roact.createElement(ProgressSpinner),
	})
end

MainView = withContext({
	Stylizer = ContextServices.Stylizer,
})(MainView)

return MainView
