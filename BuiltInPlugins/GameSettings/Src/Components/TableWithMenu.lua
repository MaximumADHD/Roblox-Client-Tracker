--[[
	Table of data.

	Props:
        table Headers = list of column names for the table
        table Data = list of data to add in the table, make sure data is in the same order as header for organization
        table MenuItems = list of options to display in dropdown for button
            Formatted like this:
            {
				{Key = "Item1", Text = "SomeLocalizedTextForItem1"},
				{Key = "Item2", Text = "SomeLocalizedTextForItem2"},
            }
        function OnItemClicked(item) = A callback when the user selects an item in the dropdown.
			Returns the item as it was defined in the Items array.
        int LayoutOrder = Order of element in layout
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local Framework = Plugin.Framework

local ContextServices = require(Framework.ContextServices)

local FrameworkUtil = require(Plugin.Framework.Util)
local FitFrameOnAxis = FrameworkUtil.FitFrame.FitFrameOnAxis

local TableWithMenuItem = require(Plugin.Src.Components.TableWithMenuItem)

local TableWithMenu = Roact.PureComponent:extend("TableWithMenu")

local function createHeaderLabels(theme, headers)
    local headerLabels = {
        HeaderLayout = Roact.createElement("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
        }),

        Padding = Roact.createElement("UIPadding", {
            PaddingLeft = UDim.new(0, theme.table.textPadding),
            PaddingRight = UDim.new(0, theme.table.textPadding),
        }),
    }
    local numberColumns = #headers
    for i = 1, #headers do
        local header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
            Size = UDim2.new( 1 / numberColumns, 0, 1, 0),
            LayoutOrder = i,

            Text = headers[i],

            BackgroundTransparency = 1,
            BorderSizePixel = 0,

            TextXAlignment = Enum.TextXAlignment.Left,
            TextTruncate = Enum.TextTruncate.AtEnd,
        }))
        headerLabels[i] = header
    end

    return headerLabels
end

local function createDataLabels(data, menuItems, onItemClicked)
    local dataRows = { }
    for row = 1, #data do
        local rowData = data[row]
        local rowComponent = Roact.createElement(TableWithMenuItem, {
            RowData = rowData,
            MenuItems = menuItems,
            OnItemClicked = function(key)
                onItemClicked(key, row)
            end,
            LayoutOrder = 1 + row,
        })
        dataRows[row] = rowComponent
    end

    return dataRows
end

function TableWithMenu:render()
	local props = self.props
    local theme = props.Theme:get("Plugin")

    local headers = props.Headers
    local data = props.Data
    local menuItems = props.MenuItems
    local onItemClicked = props.OnItemClicked
    local layoutOrder = props.LayoutOrder

    local headerContent = createHeaderLabels(theme, headers)
    local dataContent = createDataLabels(data, menuItems, onItemClicked)

    return Roact.createElement(FitFrameOnAxis, {
        LayoutOrder = layoutOrder,
        BackgroundTransparency = 1,
        axis = FitFrameOnAxis.Axis.Vertical,
        minimumSize = UDim2.new(1, 0, 0, 0),
        contentPadding = UDim.new(0, theme.table.item.padding),
    }, Cryo.Dictionary.join({
        HeaderFrame = Roact.createElement("Frame", {
            Size = UDim2.new(1, 0, 0, theme.table.header.height),

            BackgroundTransparency = 1,

            LayoutOrder = 1,
        }, headerContent)
    }, dataContent))
end

ContextServices.mapToProps(TableWithMenu, {
    Theme = ContextServices.Theme,
})

return TableWithMenu