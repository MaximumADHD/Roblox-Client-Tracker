local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local ListItem = require(Plugin.Src.Components.PluginDetails.ListItem)
local FluidFitTextLabel = require(Plugin.Src.Components.FluidFitTextLabel)

local FlagsList = require(Plugin.Src.Util.FlagsList)

local ListTextItem = Roact.Component:extend("ListTextItem")

ListTextItem.defaultProps = {
	description = "",
	title = "",
	titleWidth = Constants.LIST_ITEM_TITLE_WIDTH,
}

function ListTextItem:render()
	local description = self.props.description
	local LayoutOrder = self.props.LayoutOrder
	local title = self.props.title
	local titleWidth = self.props.titleWidth

	local theme
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		theme = self.props.Stylizer
	else
		theme = self.props.Theme:get("Plugin")
	end

	return Roact.createElement(ListItem, {
		LayoutOrder = LayoutOrder,
		renderContent = function()
			return Roact.createElement(FluidFitTextLabel, {
				BackgroundTransparency = 1,
				Font = theme.Font,
				LayoutOrder = 1,
				TextSize = 16,
				Text = description,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.TextColor,
			})
		end,
		title = title,
		titleWidth = titleWidth,
	})
end

ContextServices.mapToProps(ListTextItem, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return ListTextItem
