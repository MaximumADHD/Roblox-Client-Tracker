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

local RoactGamepad = require(Packages.RoactGamepad)
local UIBloxConfig = require(UIBlox.UIBloxConfig)


local ControlState = require(Core.Control.Enum.ControlState)
local SegmentedControlTabName = require(script.Parent.SegmentedControlTabName)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local Images = require(App.ImageSet.Images)
local getContentStyle = require(Core.Button.getContentStyle)

local FRAME_PADDING = 4
local MIN_TAB_WIDTH = 108
local MAX_WIDTH = 640
local INTERACTION_HEIGHT = 44
local BACKGROUND_HEIGHT = 36
local TAB_HEIGHT = 28
local SPRING_PARAMS = {
	frequency = 10,
	dampingRatio = 1,
}
local BACKGROUND_IMAGE = "component_assets/circle_17"
local SHADOW_IMAGE = "component_assets/dropshadow_25"
local BACKGROUND_COLOR_STATE_MAP = {
	[ControlState.Default] = "BackgroundUIDefault"
}
local DIVIDER_COLOR_STATE_MAP = {
	[ControlState.Default] = "Divider"
}
local SELECTED_BACKGROUND_COLOR_STATE_MAP = {
	[ControlState.Default] = "UIDefault"
}
local DROPSHADOW_COLOR_STATE_MAP = {
	[ControlState.Default] = "DropShadow"
}


local limitedLengthTabArray = function(array)
	local typeChecker, typeCheckerMessage = t.array(t.strictInterface({
		-- Callback when this tab is selected
		onActivated = t.optional(t.callback),
		-- The name and ID for this tab
		tabName = t.string,
		-- If this tab is disabled.
		isDisabled = t.optional(t.boolean),
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
	tabs = limitedLengthTabArray,
	-- Width for this component
	-- Will be restricted by the component's size constraint.
	width = t.UDim,
	defaultSelctedTabIndex = t.optional(t.number),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
})

function SegmentedControl:init()
	self.rootRef = Roact.createRef()
	self.tabRefs = RoactGamepad.createRefCache()

	self.selectedBackgroundMotor = Otter.createSingleMotor(FRAME_PADDING)
	self.selectedBackgroundMotor:onStep(function(selectedBackgroundPositionX)
		self:setState({
			selectedBackgroundPositionX = selectedBackgroundPositionX
		})
	end)

	local defaultSelectedIndex = self.props.defaultSelctedTabIndex or 1
	local defaultSelectedTab = self.props.tabs[defaultSelectedIndex]
	self:setState({
		selectedTab = defaultSelectedTab,
		selectedIndex = defaultSelectedIndex,
		selectedBackgroundPositionX = 0,
		tabWidth = 0,
	})

	self.onTabActivated = function(index)
		self.selectTab(self.props.tabs[index], index)
	end

	self.setSize = function(rbx)
		local frameWidth = rbx.AbsoluteSize.X
		local totalTabWidth = frameWidth - FRAME_PADDING * 2
		local tabWidth = math.floor(totalTabWidth / #self.props.tabs)
		self.selectedBackgroundMotor:setGoal(Otter.spring(FRAME_PADDING + tabWidth * (self.state.selectedIndex - 1),
		SPRING_PARAMS))
		self:setState({
			tabWidth = tabWidth,
		})
	end

	self.selectTab = function(activatedTab, selectedIndex)
		self.selectedBackgroundMotor:setGoal(Otter.spring(FRAME_PADDING + self.state.tabWidth * (selectedIndex - 1),
			SPRING_PARAMS))
		self:setState({
			selectedTab = activatedTab,
			selectedIndex = selectedIndex
		})
		activatedTab.onActivated(activatedTab)
	end
end
function SegmentedControl:renderDefault()
	return withStyle(function(style)
		-- render params
		local currentState = self.state.controlState
		local isDisabled = self.state.selectedTab.isDisabled
		local forceSelectedBGState = isDisabled and ControlState.Disabled or currentState
		local backgroundStyle = getContentStyle(BACKGROUND_COLOR_STATE_MAP, currentState, style)
		local dividerStyle = getContentStyle(DIVIDER_COLOR_STATE_MAP, currentState, style)
		local selectedBackgroundStyle = getContentStyle(SELECTED_BACKGROUND_COLOR_STATE_MAP, forceSelectedBGState, style)
		local dropshadowStyle = getContentStyle(DROPSHADOW_COLOR_STATE_MAP, currentState, style)
		local tabWidth = self.state.tabWidth
		-- dividers between tabs
		local dividers = {}
		for i = 1, #self.props.tabs - 1, 1 do
			if i ~= self.state.selectedIndex and i ~= self.state.selectedIndex - 1 then
				table.insert(dividers, i, Roact.createElement("Frame", {
					Size = UDim2.fromOffset(1, TAB_HEIGHT),
					BackgroundTransparency = dividerStyle.Transparency,
					BackgroundColor3 = dividerStyle.Color,
					Position =  UDim2.fromOffset(FRAME_PADDING + tabWidth * i, (INTERACTION_HEIGHT - TAB_HEIGHT) / 2)
				}))
			end
		end
		-- create the tabs as SegmentedControlTabName and add activated callback
		local tabs = Cryo.List.map(self.props.tabs, function(tab, index)
			return Roact.createElement("Frame",{
				LayoutOrder = index,
				Size = UDim2.fromOffset(tabWidth, INTERACTION_HEIGHT),
				BackgroundTransparency = 1,
			}, {
				Tab = Roact.createElement(SegmentedControlTabName, {
					text = tab.tabName,
					onActivated = function() self.onTabActivated(index) end,
					Size = UDim2.fromScale(1, 1),
					isDisabled = tab.isDisabled,
					isSelectedStyle = self.state.selectedIndex == index
				})
			})
		end)
		-- add UIListLayout for tabs
		table.insert(tabs, Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder
		}))

		return Roact.createElement("Frame", {
			Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, INTERACTION_HEIGHT),
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = self.setSize
		}, {
			SizeConstraint = Roact.createElement("UISizeConstraint", {
				MinSize = Vector2.new(MIN_TAB_WIDTH * #self.props.tabs + FRAME_PADDING * 2, INTERACTION_HEIGHT),
				MaxSize = Vector2.new(MAX_WIDTH, INTERACTION_HEIGHT),
			}),
			-- tab group background
			Background = Roact.createElement(ImageSetComponent.Label, {
				Size = UDim2.new(1, 0, 0, BACKGROUND_HEIGHT),
				Position = UDim2.fromOffset(0, (INTERACTION_HEIGHT - BACKGROUND_HEIGHT) / 2),
				BackgroundTransparency = 1,
				Image = Images[BACKGROUND_IMAGE],
				ImageColor3 = backgroundStyle.Color,
				ImageTransparency = backgroundStyle.Transparency,
				LayoutOrder = 1,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(8, 8, 9, 9),
				ZIndex = 1,
			}),
			-- put dividers in one frame
			Dividers = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, INTERACTION_HEIGHT),
				Position = UDim2.fromOffset(0, 0),
				BackgroundTransparency = 1,
				ZIndex = 2,
			}, dividers),
			-- the only selected tab background, used to make animation
			SelectedBackground = Roact.createElement(ImageSetComponent.Label, {
				Size = UDim2.fromOffset(tabWidth, TAB_HEIGHT),
				Position = UDim2.fromOffset(self.state.selectedBackgroundPositionX, (INTERACTION_HEIGHT - TAB_HEIGHT) / 2),
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
				Position = UDim2.fromOffset(
					self.state.selectedBackgroundPositionX - 6,
					(INTERACTION_HEIGHT - TAB_HEIGHT) / 2 - 6 + 2
				),
				BackgroundTransparency = 1,
				Image = Images[SHADOW_IMAGE],
				ImageColor3 = dropshadowStyle.Color,
				ImageTransparency = 0.3,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(18, 18, 19, 19),
				ZIndex = 3,
			}),
			-- container for tabs
			TabContainer = Roact.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Position = UDim2.fromScale(0, 0),
				ZIndex = 5,
			},tabs)
		})
	end)
end

function SegmentedControl:renderGamepadSupport()
	return withStyle(function(style)
		-- render params
		local currentState = self.state.controlState
		local isDisabled = self.state.selectedTab.isDisabled
		local forceSelectedBGState = isDisabled and ControlState.Disabled or currentState
		local backgroundStyle = getContentStyle(BACKGROUND_COLOR_STATE_MAP, currentState, style)
		local dividerStyle = getContentStyle(DIVIDER_COLOR_STATE_MAP, currentState, style)
		local selectedBackgroundStyle = getContentStyle(SELECTED_BACKGROUND_COLOR_STATE_MAP, forceSelectedBGState, style)
		local dropshadowStyle = getContentStyle(DROPSHADOW_COLOR_STATE_MAP, currentState, style)
		local tabWidth = self.state.tabWidth

		-- dividers between tabs
		local dividers = {}
		for i = 1, #self.props.tabs - 1, 1 do
			if i ~= self.state.selectedIndex and i ~= self.state.selectedIndex - 1 then
				table.insert(dividers, i, Roact.createElement("Frame", {
					Size = UDim2.fromOffset(1, TAB_HEIGHT),
					BackgroundTransparency = dividerStyle.Transparency,
					BackgroundColor3 = dividerStyle.Color,
					Position =  UDim2.fromOffset(FRAME_PADDING + tabWidth * i, (INTERACTION_HEIGHT - TAB_HEIGHT) / 2)
				}))
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
				return Roact.createElement(RoactGamepad.Focusable.Frame,{
					LayoutOrder = index,
					Size = UDim2.fromOffset(tabWidth, INTERACTION_HEIGHT),
					BackgroundTransparency = 1,
					[Roact.Ref] = self.tabRefs[index],
					NextSelectionLeft = index > 1 and self.tabRefs[index - 1] or nil,
					NextSelectionRight = index < #self.props.tabs and self.tabRefs[index + 1] or nil,
					onFocusGained = function()
						if not tab.isDisabled then
							self.selectTab(tab)
						end
					end,
					inputBindings = {
						LeaveA = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, moveToParent),
						LeaveB = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonB, moveToParent),
						SelectNext1 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonR1, function() moveToNext(index) end),
						SelectPre1 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonL1, function() moveToPrevious(index) end),
						SelectNext2 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonR2, function() moveToNext(index) end),
						SelectPre2 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonL2, function() moveToPrevious(index) end),
						SelectNext3 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonR3, function() moveToNext(index) end),
						SelectPre3 = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonL3, function() moveToPrevious(index) end)
					}
				}, {
					Tab = Roact.createElement(SegmentedControlTabName, {
						text = tab.tabName,
						onActivated = function() self.onTabActivated(index) end,
						Size = UDim2.fromScale(1, 1),
						isDisabled = tab.isDisabled,
						isSelectedStyle = self.state.selectedIndex == index
					})
				})
			end)
			-- add UIListLayout for tabs
			table.insert(tabs, Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder
			}))

			return Roact.createElement("Frame", {
				Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, INTERACTION_HEIGHT),
				BackgroundTransparency = 1,
				[Roact.Change.AbsoluteSize] = self.setSize,
			}, {
				SizeConstraint = Roact.createElement("UISizeConstraint", {
					MinSize = Vector2.new(MIN_TAB_WIDTH * #self.props.tabs + FRAME_PADDING * 2, INTERACTION_HEIGHT),
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
							focusController.moveFocusTo(self.tabRefs[self.state.selectedIndex])
						end)
					}
				}, dividers),
				-- the only selected tab background, used to make animation
				SelectedBackground = Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.fromOffset(tabWidth, TAB_HEIGHT),
					Position = UDim2.fromOffset(
						self.state.selectedBackgroundPositionX,
						(INTERACTION_HEIGHT - TAB_HEIGHT) / 2
					),
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
					Position = UDim2.fromOffset(
						self.state.selectedBackgroundPositionX - 6,
						(INTERACTION_HEIGHT - TAB_HEIGHT) / 2 - 6 + 2
					),
					BackgroundTransparency = 1,
					Image = SHADOW_IMAGE,
					ImageColor3 = dropshadowStyle.Color,
					ImageTransparency = 0.3,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(18, 18, 19, 19),
					ZIndex = 3,
				}),
				-- container for tabs
				TabContainer = Roact.createElement(RoactGamepad.Focusable.Frame, {
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					Position = UDim2.fromScale(0, 0),
					ZIndex = 5,
					defaultChild = self.tabRefs[self.state.selectedIndex]
				},tabs)
			})
		end)
	end)
end
function SegmentedControl:render()
	if UIBloxConfig.enableExperimentalGamepadSupport then
		return self:renderGamepadSupport()
	else
		return self:renderDefault()
	end
end


return SegmentedControl
