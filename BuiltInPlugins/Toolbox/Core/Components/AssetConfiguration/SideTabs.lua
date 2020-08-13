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
	ItemClickCallBack, function, call back function.
	SeletctionWidth, number, this will be used by added selection bar to show
	user which tab is currently selected.
	SelectParentRef, Roact Ref, used to position and set the size of selection bar.

	Optional Pros:
	LayoutOrder = number, will override the Position.
]]

local ICON_SCALE = 0.4
local ERROR_ICON_SIZE = 20

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local Images = require(Util.Images)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local SideTabs = Roact.PureComponent:extend("SideTabs")

local FFlagEnablePreviewTabSelection = settings():GetFFlag("EnablePreviewTabSelection")

local SIDE_TAB_SELECT_WIDTH = 4

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

function SideTabs:createSideButtons(items, currentTab, ItemHeight, theme, localizedContent, selectParentRef, sideTabTheme)
	local iconSize = ItemHeight*ICON_SCALE

	local children = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),
	}

	local selectionParent = selectParentRef.current
	local seletctionWidth = 0
	if selectionParent then
		seletctionWidth = selectionParent.AbsoluteSize.X
	end

	for LayoutOrder, item in pairs(items) do
		local itemName = localizedContent.AssetConfig.SideTabs[item.name]
		local isCurrentTab = item == currentTab

		local iconColor
		if FFlagEnablePreviewTabSelection then
			iconColor = theme.sideTab.contentColor
		else
			iconColor = (item == currentTab) and theme.sideTab.selectedColor or theme.sideTab.contentColor
		end

		children[itemName] = Roact.createElement("Frame", {
			Size = UDim2.new(0.5, 0, 0, ItemHeight),
			BackgroundTransparency = 1,

			LayoutOrder = LayoutOrder,
		}, {
			Icon = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				Size = UDim2.new(0, iconSize, 0, iconSize),
				BackgroundTransparency = 1,
				ImageColor3 = iconColor,
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
				TextSize = Constants.FONT_SIZE_LARGE,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = theme.sideTab.textColor,

				[Roact.Event.Activated] = function(rbx)
					self.props.ItemClickCallBack(LayoutOrder, item)
				end,

				LayoutOrder = 2,
			}),

			-- The postion and size we set will take priority.
			Selection = FFlagEnablePreviewTabSelection and isCurrentTab and Roact.createElement("Frame", {
				Position = UDim2.new(-0.5, 0, 0, 0),
				Size = UDim2.new(0, seletctionWidth, 1, 0),

				BackgroundTransparency = sideTabTheme.selecteBarTrans,
				BackgroundColor3 = sideTabTheme.selecteBarColor,
				BorderSizePixel = 0,
				ZIndex = sideTabTheme.selecteBarZindex,

				LayoutOrder = 0,
			}, {
				Indicator = Roact.createElement("Frame", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, SIDE_TAB_SELECT_WIDTH, 1, 0),

					BackgroundTransparency = sideTabTheme.selecteIndicatorTrans,
					BackgroundColor3 = sideTabTheme.selecteIndicatorColor,
					BorderSizePixel = 0,
				})
			}),

			Error = self.props.tabHasErrors(item.name) and Roact.createElement("ImageButton", {
				BackgroundTransparency = 1,
				Size = UDim2.new(0, ERROR_ICON_SIZE, 0, ERROR_ICON_SIZE),
				Position = UDim2.new(1, -ERROR_ICON_SIZE, 0.5, -ERROR_ICON_SIZE/2),
				Image = Images.ERROR_ICON,

				[Roact.Event.Activated] = function(rbx)
					self.props.ItemClickCallBack(LayoutOrder, item)
				end,

				LayoutOrder = 3,
			}),
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
			local selectParentRef = props.SelectParentRef

			local sideTabTheme = theme.sideTab

			local children = self:createSideButtons(Items, currentTab, ItemHeight, theme, localizedContent, selectParentRef, sideTabTheme)

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

local function mapStateToProps(state, props)
	state = state or {}
	return {
		tabHasErrors = function(tabName)
			if state.tabErrors then
				local fields = state.tabErrors[tabName]
				if fields then
					for _, hasError in pairs(fields) do
						if hasError == true then
							return true
						end
					end
				end
			end
			return false
		end,
	}
end

return RoactRodux.connect(mapStateToProps)(SideTabs)
