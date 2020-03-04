local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local ListItem = require(Plugin.Src.Components.PluginDetails.ListItem)
local FluidFitTextLabel = require(Plugin.Src.Components.FluidFitTextLabel)

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

    local theme = self.props.Theme:get("Plugin")

	return Roact.createElement(ListItem, {
        LayoutOrder = LayoutOrder,
        renderContent = function()
            return Roact.createElement(FluidFitTextLabel, {
                BackgroundTransparency = 1,
                Font = theme.Font,
                LayoutOrder = 1,
                TextSize = 14,
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
	Theme = ContextServices.Theme,
})

return ListTextItem
