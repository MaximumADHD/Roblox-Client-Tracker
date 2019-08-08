--[[
	This is a very simple side tabs for asset configuration. It will generate
	buttons based on the items provided.

	Necessary Props:
	Position, UDim2.
	Size, UDim2.
	ItemHeight = number.
	CurrentTab, the current tab being viewed
	Items = {
		{ name = string },
		{ name = string }
	}
	ItemClickCallBack

	Optional Pros:
	LayoutOrder = number, will override the Position.
]]

local ICON_SCALE = 0.4

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local SideTabs = Roact.PureComponent:extend("SideTabs")

function SideTabs:init(props)
	self.state = {
		hoveredIndex = 0
	}

	self.onItemEntered = function(index)
		self:setState({
			hoveredIndex = index
		})
	end

	self.onItemLeft = function(index)
		self:setState({
			hoveredIndex = 0
		})
	end
end

function SideTabs:createSideButtons(items, currentTab, ItemHeight, theme, localizedContent)
	local iconSize = ItemHeight*ICON_SCALE

	local children = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),
	}

	for LayoutOrder, item in pairs(items) do
		local itemName = localizedContent.AssetConfig.SideTabs[item.name]
		children[itemName] = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, ItemHeight),
			BackgroundTransparency = 1,

			LayoutOrder = LayoutOrder,
		}, {
			Icon = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				Size = UDim2.new(0, iconSize, 0, iconSize),
				BackgroundTransparency = 1,
				ImageColor3 = (item == currentTab) and theme.sideTab.selectedColor or theme.sideTab.contentColor,
				Image = item.image,

				[Roact.Event.Activated] = function(rbx)
					self.props.ItemClickCallBack(LayoutOrder, item)
				end,

				LayoutOrder = 1,
			}),

			Text = Roact.createElement("TextButton", {
				Position = UDim2.new(0, iconSize*2, 0, 0),
				Size = UDim2.new(1, -iconSize, 1, 0),
				BackgroundTransparency = 1,

				Text = itemName,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.sideTab.textColor,

				[Roact.Event.Activated] = function(rbx)
					self.props.ItemClickCallBack(LayoutOrder, item)
				end,

				LayoutOrder = 2,
			})
		})
	end

	return children
end

function SideTabs:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props

			local LayoutOrder = props.LayoutOrder
			local Size = props.Size
			local Position = props.Position
			local Items = props.Items
			local ItemHeight = props.ItemHeight
			local currentTab = props.CurrentTab

			local children = self:createSideButtons(Items, currentTab, ItemHeight, theme, localizedContent)

			return Roact.createElement("Frame", {
				Position = Position,
				Size = Size,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				LayoutOrder = LayoutOrder
			}, children)
		end)
	end)
end

return SideTabs