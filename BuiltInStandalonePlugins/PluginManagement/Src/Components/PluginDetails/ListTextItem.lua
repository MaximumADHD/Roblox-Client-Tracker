local FFlagPluginManagementWithContext = game:GetFastFlag("PluginManagementWithContext")
local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local ListItem = require(Plugin.Src.Components.PluginDetails.ListItem)
local FluidFitTextLabel = require(Plugin.Src.Components.FluidFitTextLabel)

local THEME_REFACTOR = require(Plugin.Packages.Framework).Util.RefactorFlags.THEME_REFACTOR

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
	if THEME_REFACTOR then
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

if FFlagPluginManagementWithContext then
	ListTextItem = withContext({
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(ListTextItem)
else
	ContextServices.mapToProps(ListTextItem, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end


return ListTextItem
