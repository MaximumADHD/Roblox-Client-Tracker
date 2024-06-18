--!nonstrict
local Control = script.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)
local withStyle = require(UIBlox.Core.Style.withStyle)
local Otter = require(Packages.Otter)
local Images = require(UIBlox.App.ImageSet.Images)

local RoactGamepad = require(Packages.RoactGamepad)

local ControlState = require(Core.Control.Enum.ControlState)
local SegmentedControlTabName = require(script.Parent.SegmentedControlTabName)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local getContentStyle = require(Core.Button.getContentStyle)
local getIconSize = require(UIBlox.App.ImageSet.getIconSize)
local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)

local FRAME_PADDING = 4
local MIN_TAB_WIDTH = 80
local MAX_WIDTH = 640
local ICON_WIDTH = getIconSize(IconSize.Medium)
local SPRING_PARAMS = {
	frequency = 10,
	dampingRatio = 1,
}
local BACKGROUND_IMAGE = Images["component_assets/circle_17"]
local SHADOW_IMAGE = Images["component_assets/dropshadow_16_20"]
local BACKGROUND_COLOR_STATE_MAP = {
	[ControlState.Default] = "BackgroundUIDefault",
}
local DIVIDER_COLOR_STATE_MAP = {
	[ControlState.Default] = "Divider",
}
local SELECTED_BACKGROUND_COLOR_STATE_MAP = {
	[ControlState.Default] = "UIDefault",
}
local DROPSHADOW_COLOR_STATE_MAP = {
	[ControlState.Default] = "DropShadow",
}

local ICON_STATE_COLOR = {
	[ControlState.Default] = "SecondaryDefault",
	[ControlState.Hover] = "SecondaryOnHover",
}

local limitedLengthTabArray = function(array)
	local typeChecker, typeCheckerMessage = t.array(t.strictInterface({
		-- the name and ID for this tab
		tabName = t.string,
		-- If this tab is disabled
		isDisabled = t.optional(t.boolean),
		-- String or ImageSetImage to be used as a icon image displayed next to text in tab
		icon = t.optional(t.table),
	}))(array)

	if not typeChecker then
		return typeChecker, typeCheckerMessage
	end

	local minLengthChecker, minLengthCheckerMessage = t.numberMin(2)(#array)
	if not minLengthChecker then
		return minLengthChecker, minLengthCheckerMessage
	end

	local maxLengthChecker, maxLengthCheckerMessage = t.numberMax(4)(#array)
	if not maxLengthChecker then
		return maxLengthChecker, maxLengthCheckerMessage
	end

	return true
end

local SegmentedControl = Roact.Component:extend("SegmentedControl")

SegmentedControl.validateProps = t.strictInterface({
	-- tabs that displayed in this control
	tabs = limitedLengthTabArray,
	-- Width for this component. Will be restricted by the component's size constraint
	width = t.UDim,
	-- optionally specifies the height of this component.
	height = t.optional(t.number),

	-- sets which tab is currently selected
	selectedTabIndex = t.number,

	-- Callback for when a tab is selected
	onTabActivated = t.callback,

	-- parameters for RoactGamepad support
	NextSelectionLeft = t.optional(t.table),
	-- parameters for RoactGamepad support
	NextSelectionRight = t.optional(t.table),
	-- parameters for RoactGamepad support
	NextSelectionUp = t.optional(t.table),
	-- parameters for RoactGamepad support
	NextSelectionDown = t.optional(t.table),

	-- layout
	layoutOrder = t.optional(t.number),
})

SegmentedControl.defaultProps = {
	height = 44,
}

function SegmentedControl:init()
	self.rootRef = Roact.createRef()
	self.tabRefs = RoactGamepad.createRefCache()

	self.selectedBackgroundPositionX, self.setSelectedBackgroundPositionX = Roact.createBinding(0)
	self.selectedBackgroundMotor = Otter.createSingleMotor(FRAME_PADDING)
	self.selectedBackgroundMotor:onStep(function(selectedBackgroundPositionX)
		self.setSelectedBackgroundPositionX(selectedBackgroundPositionX)
	end)

	self:setState({
		tabWidth = 0,
	})

	self.onTabActivated = function(index)
		self.props.onTabActivated(index)
	end

	self.setSize = function(rbx)
		local frameWidth = rbx.AbsoluteSize.X
		local totalTabWidth = frameWidth - FRAME_PADDING * 2
		local tabWidth = math.floor(totalTabWidth / #self.props.tabs)
		self.selectedBackgroundMotor:setGoal(
			Otter.spring(FRAME_PADDING + tabWidth * (self.props.selectedTabIndex - 1), SPRING_PARAMS)
		)
		self:setState({
			tabWidth = tabWidth,
		})
	end
end

function SegmentedControl:render()
	return withStyle(function(style)
		-- render params
		local currentState = self.state.controlState
		local selectedTab = self.props.tabs[self.props.selectedTabIndex]
		local isDisabled = selectedTab.isDisabled
		local forceSelectedBGState = isDisabled and ControlState.Disabled or currentState
		local backgroundStyle = getContentStyle(BACKGROUND_COLOR_STATE_MAP, currentState, style)
		local dividerStyle = getContentStyle(DIVIDER_COLOR_STATE_MAP, currentState, style)
		local selectedBackgroundStyle =
			getContentStyle(SELECTED_BACKGROUND_COLOR_STATE_MAP, forceSelectedBGState, style)
		local dropshadowStyle = getContentStyle(DROPSHADOW_COLOR_STATE_MAP, currentState, style)
		local tabWidth = self.state.tabWidth
		local iconWidth = if self.props.icon then ICON_WIDTH else 0 -- if icon is specified, budget space for it, otherwise don't.

		local INTERACTION_HEIGHT = self.props.height
		local BACKGROUND_HEIGHT = self.props.height - 12
		local TAB_HEIGHT = self.props.height - 16

		-- dividers between tabs
		local dividers = {}
		for i = 1, #self.props.tabs - 1, 1 do
			if i ~= self.props.selectedTabIndex and i ~= self.props.selectedTabIndex - 1 then
				table.insert(
					dividers,
					i,
					Roact.createElement("Frame", {
						Size = UDim2.fromOffset(1, TAB_HEIGHT),
						BackgroundTransparency = dividerStyle.Transparency,
						BackgroundColor3 = dividerStyle.Color,
						Position = UDim2.fromOffset(
							FRAME_PADDING + tabWidth * i,
							(INTERACTION_HEIGHT - TAB_HEIGHT) / 2
						),
					})
				)
			end
		end

		return RoactGamepad.withFocusController(function(focusController)
			local moveToPrevious = function(index)
				if index > 1 then
					focusController.moveFocusTo(self.tabRefs[index - 1])
				end
			end
			local moveToNext = function(index)
				if index < #self.props.tabs then
					focusController.moveFocusTo(self.tabRefs[index + 1])
				end
			end
			local moveToParent = function()
				focusController.moveFocusTo(self.rootRef)
			end
			-- create the tabs as SegmentedControlTabName and add activated callback, adding gamepad support
			-- gamepad focus is added to the frame, not SegmentedControlTabName
			local tabs = Cryo.List.map(self.props.tabs, function(tab, index)
				return Roact.createElement(RoactGamepad.Focusable.Frame, {
					key = tab.tabName,
					LayoutOrder = index,
					Size = UDim2.fromOffset(tabWidth, INTERACTION_HEIGHT),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.tabRefs[index],
					NextSelectionLeft = index > 1 and self.tabRefs[index - 1] or nil,
					NextSelectionRight = index < #self.props.tabs and self.tabRefs[index + 1] or nil,
					inputBindings = {
						LeaveA = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, moveToParent),
						LeaveB = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonB, moveToParent),
						SelectNext1 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonR1, function()
							moveToNext(index)
						end),
						SelectPre1 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonL1, function()
							moveToPrevious(index)
						end),
						SelectNext2 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonR2, function()
							moveToNext(index)
						end),
						SelectPre2 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonL2, function()
							moveToPrevious(index)
						end),
						SelectNext3 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonR3, function()
							moveToNext(index)
						end),
						SelectPre3 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonL3, function()
							moveToPrevious(index)
						end),
					},
				}, {
					Tab = Roact.createElement(SegmentedControlTabName, {
						text = tab.tabName,
						onActivated = function()
							self.onTabActivated(index)
						end,
						Size = UDim2.fromScale(1, 1),
						isDisabled = tab.isDisabled,
						isSelectedStyle = self.props.selectedTabIndex == index,
						icon = tab.icon,
						iconStateColorMap = ICON_STATE_COLOR,
					}),
				})
			end)

			return Roact.createElement("Frame", {
				Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, INTERACTION_HEIGHT),
				BackgroundTransparency = 1,
				[Roact.Change.AbsoluteSize] = self.setSize,
				LayoutOrder = self.props.layoutOrder,
			}, {
				SizeConstraint = Roact.createElement("UISizeConstraint", {
					MinSize = Vector2.new(
						(iconWidth + MIN_TAB_WIDTH) * #self.props.tabs + FRAME_PADDING * 2,
						INTERACTION_HEIGHT
					),
					MaxSize = Vector2.new(MAX_WIDTH, INTERACTION_HEIGHT),
				}),
				-- tab group background
				Background = Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.new(1, 0, 0, BACKGROUND_HEIGHT),
					Position = UDim2.fromOffset(0, (INTERACTION_HEIGHT - BACKGROUND_HEIGHT) / 2),
					BackgroundTransparency = 1,
					Image = BACKGROUND_IMAGE,
					ImageColor3 = backgroundStyle.Color,
					ImageTransparency = backgroundStyle.Transparency,
					LayoutOrder = 1,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(8, 8, 9, 9),
					ZIndex = 1,
				}),
				-- put dividers in one frame, use this frame as the "Main" gamepad selection.
				Dividers = Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.new(1, 0, 0, INTERACTION_HEIGHT),
					Position = UDim2.fromOffset(0, 0),
					BackgroundTransparency = 1,
					ZIndex = 2,
					NextSelectionLeft = self.props.NextSelectionLeft,
					NextSelectionRight = self.props.NextSelectionRight,
					NextSelectionUp = self.props.NextSelectionUp,
					NextSelectionDown = self.props.NextSelectionDown,
					[Roact.Ref] = self.rootRef,
					inputBindings = {
						Enter = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, function()
							focusController.moveFocusTo(self.tabRefs[self.props.selectedTabIndex])
						end),
					},
				}, dividers),
				-- the only selected tab background, used to make animation
				SelectedBackground = Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.fromOffset(tabWidth, TAB_HEIGHT),
					Position = self.selectedBackgroundPositionX:map(function(value)
						return UDim2.fromOffset(value, (INTERACTION_HEIGHT - TAB_HEIGHT) / 2)
					end),
					BackgroundTransparency = 1,
					Image = BACKGROUND_IMAGE,
					ImageColor3 = selectedBackgroundStyle.Color,
					ImageTransparency = selectedBackgroundStyle.Transparency,
					LayoutOrder = 2,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(8, 8, 9, 9),
					ZIndex = 4,
				}),
				-- the shadow for selected tab background
				SelectedBackgroundShadow = not isDisabled and Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.fromOffset(tabWidth + 6 * 2, TAB_HEIGHT + 6 * 2),
					Position = self.selectedBackgroundPositionX:map(function(value)
						return UDim2.fromOffset(value - 6, (INTERACTION_HEIGHT - TAB_HEIGHT) / 2 - 6 + 2)
					end),
					BackgroundTransparency = 1,
					Image = SHADOW_IMAGE,
					ImageColor3 = dropshadowStyle.Color,
					ImageTransparency = 0.3,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(27, 27, 29, 29),
					ZIndex = 3,
				}),
				-- container for tabs
				TabContainer = Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Position = UDim2.fromScale(0, 0),
					ZIndex = 5,
					defaultChild = self.tabRefs[self.props.selectedTabIndex],
				}, {
					TabLayout = Roact.createElement("UIListLayout", {
						VerticalAlignment = Enum.VerticalAlignment.Center,
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					Roact.createFragment(tabs),
				}),
			})
		end)
	end)
end

function SegmentedControl:didUpdate(previousProps)
	if previousProps.selectedTabIndex ~= self.props.selectedTabIndex then
		self.selectedBackgroundMotor:setGoal(
			Otter.spring(FRAME_PADDING + self.state.tabWidth * (self.props.selectedTabIndex - 1), SPRING_PARAMS)
		)
	end
end

return SegmentedControl
