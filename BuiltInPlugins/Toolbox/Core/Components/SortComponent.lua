--[[
	A dropdown menu with a descriptive "sort by" label

	Props:
		UDim2 Position
		UDim2 Size
		number ZIndex
		Sorts sorts
		number sortIndex

		callback onSortSelected()
]]

local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Constants = require(Plugin.Core.Util.Constants)

local withTheme = require(Plugin.Core.Consumers.withTheme)

local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)

local function SortComponent(props)
	return withTheme(function(theme)
		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = props.Size or UDim2.new(1, 0, 1, 0)
		local zindex = props.ZIndex or 1

		local sortByText = "Sort by:"
		local sortByFont = Constants.FONT
		local sortByFontSize = Constants.FONT_SIZE_LARGE

		local sortByWidth = Constants.getTextSize(sortByText, sortByFontSize, sortByFont).x

		local sortComponentTheme = theme.sortComponent

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,
			ZIndex = zindex,
			BackgroundTransparency = 1,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, Constants.SORT_COMPONENT_OUTER_PADDING),
				PaddingLeft = UDim.new(0, Constants.SORT_COMPONENT_OUTER_PADDING),
				PaddingRight = UDim.new(0, Constants.SORT_COMPONENT_OUTER_PADDING),
				PaddingTop = UDim.new(0, Constants.SORT_COMPONENT_OUTER_PADDING),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, Constants.SORT_COMPONENT_INNER_PADDING),
			}),

			Label = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, sortByWidth, 1, 0),
				Text = sortByText,
				Font = sortByFont,
				TextSize = sortByFontSize,
				TextColor3 = sortComponentTheme.labelTextColor,
				LayoutOrder = 0,
			}),

			DropdownMenu = Roact.createElement(DropdownMenu, {
				Size = UDim2.new(0, Constants.SORT_COMPONENT_CATEGORY_DROPDOWN_WIDTH, 1, 0),
				LayoutOrder = 1,
				items = props.sorts,
				selectedDropDownIndex = props.sortIndex,
				onItemClicked = props.onSortSelected,
			})
		})
	end)
end

return SortComponent
