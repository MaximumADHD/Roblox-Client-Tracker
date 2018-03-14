local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)

local DEFAULT_ITEM_HEIGHT = 54
local DEFAULT_TEXT_COLOR = Constants.Color.GRAY1
local DEFAULT_TEXT_FONT = Enum.Font.SourceSans
local DEFAULT_TEXT_SIZE = 23

local DROPDOWN_TEXT_MARGIN = 10
local ICON_HORIZONTAL_SPACE = 20
local ICON_SIZE = 20
local ICON_VERTICAL_SPACE = 17

local ListPicker = Roact.Component:extend("ListPicker")

-- Returns a list of items (with text and an icon) that the user can pick from.
-- Intended to be the core functionality of the DropDownList control.
function ListPicker:render()
	local itemList = self.props.items

	local textColor = self.props.textColor or DEFAULT_TEXT_COLOR
	local textFont = self.props.font or DEFAULT_TEXT_FONT
	local textSize = self.props.textSize or DEFAULT_TEXT_SIZE

	local itemHeight = self.props.itemHeight or DEFAULT_ITEM_HEIGHT
	local itemWidth = self.props.itemWidth or 0

	-- Build a table of items that the user is able to pick from:
	local listContents = {}
	listContents["Layout"] = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		Name = "Layout",
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	-- Text offset to make space for the cancel icon (padding doesn't work for text yet):
	local iconSpacing = ICON_SIZE + (ICON_HORIZONTAL_SPACE * 2)

	local itemSize
	if itemWidth > 0 then
		itemSize = UDim2.new(0, itemWidth, 0, itemHeight)
	else
		itemSize = UDim2.new(1, 0, 0, itemHeight)
	end

	for position, item in ipairs(itemList) do
		listContents[position] = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = position,
			Size = itemSize,
			[Roact.Event.Activated] = function()
				self.props.onSelectItem(position)
			end,
		}, {
			Image = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ClipsDescendants = false,
				Image = item.icon,
				Position = UDim2.new(0, ICON_HORIZONTAL_SPACE, 0, ICON_VERTICAL_SPACE),
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			}),
			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Font = textFont,
				Position = UDim2.new(0, iconSpacing, 0, 0),
				Size = UDim2.new(1, -(iconSpacing + DROPDOWN_TEXT_MARGIN), 1, 0),
				Text = item.text,
				TextColor3 = textColor,
				TextSize = textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),

		})
	end

	-- Change the fit axis if we have a fixed width (or want fill our parent):
	local fitAxis = FitChildren.FitAxis.Height
	local fitSize = UDim2.new(1, 0, 0, 0)
	if itemWidth > 0 then
		fitAxis = FitChildren.FitAxis.Both
		fitSize = nil
	end

	return Roact.createElement(FitChildren.FitFrame, {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		fitAxis = fitAxis,
		Size = fitSize,
	}, listContents)
end

return ListPicker