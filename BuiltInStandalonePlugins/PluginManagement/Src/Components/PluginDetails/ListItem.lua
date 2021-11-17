local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local FitFrame = require(Plugin.Packages.FitFrame)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local FitFrameVertical = FitFrame.FitFrameVertical
local FitTextLabel = FitFrame.FitTextLabel

local CONTENT_PADDING = 20

local ListItem = Roact.Component:extend("ListItem")

ListItem.defaultProps = {
	renderContent = function() end,
	title = "",
	titleWidth = Constants.LIST_ITEM_TITLE_WIDTH,
}

function ListItem:render()
	local layoutOrder = self.props.LayoutOrder
	local renderContent = self.props.renderContent
	local title = self.props.title
	local titleWidth = self.props.titleWidth

	local theme = self.props.Stylizer

	return Roact.createElement(FitFrameVertical, {
		BackgroundTransparency = 1,
		contentPadding = UDim.new(0, CONTENT_PADDING),
		FillDirection = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		width = UDim.new(1, 0)
	}, {
		Title = Roact.createElement(FitTextLabel, {
			BackgroundTransparency = 1,
			Font = theme.Font,
			LayoutOrder = 1,
			Text = title,
			TextColor3 = theme.SubTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = 18,
			width = UDim.new(0, titleWidth),
		}),

		Container = Roact.createElement(FitFrameVertical, {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			width = UDim.new(1, -titleWidth - CONTENT_PADDING)
		}, {
			Content = renderContent(),
		}),
	})
end


ListItem = withContext({
	Stylizer = ContextServices.Stylizer,
})(ListItem)


return ListItem
