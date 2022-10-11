--[[
	DropdownItemsList

	Renders a list of items for a dropdown.

	Required props:
		items = table, {
			name, optional, will be used to get the text for selectable items.
			selectable=true, selectable will default to true if nil
		}
		number left - absolute position X of the left side of the dropdown
		number top - absolute position X of the top side of the dropdown
		number dropDownWidth - total width of the dropdown

	Optional props:
		variant key - used to lookup data for items
		number visibleDropDownCount = 5 - how many items can be seen before scrolling
		number rowHeight = 24 - height of each row in pixels
		number fontSize = Constants.FONT_SIZE_MEDIUM - font size of each item text
		UDim2 windowPosition - position of "click through" window for ClickEventDetectFrame
		UDim2 windowSize - size of "click through" window for ClickEventDetectFrame

		callback setDropdownHeight(number height) - called when the dropdown height changes
		callback onItemClicked(number index) - called when a user clicks on a dropdown item
		callback closeDropdown - called when the parent component should close dropdown
]]
local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local DebugFlags = require(Util.DebugFlags)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local getTextSize = Framework.Util.GetTextSize

local withModal = ContextHelper.withModal

local Components = Plugin.Core.Components
local StyledScrollingFrame = require(Components.StyledScrollingFrame)
local ClickEventDetectFrame = require(Components.ClickEventDetectFrame)
local RoundFrame = require(Components.RoundFrame)

local DropdownItemsList = Roact.PureComponent:extend("DropdownItemsList")

function DropdownItemsList:init()
	self.state = {
		dropdownHoveredItemIndex = 0,
	}

	self.onDropdownItemMouseEntered = function(index)
		self:setState({
			dropdownHoveredItemIndex = index,
		})
	end

	self.onDropdownItemMouseLeft = function(index)
		if self.state.dropdownHoveredItemIndex == index then
			self:setState({
				dropdownHoveredItemIndex = 0,
			})
		end
	end

	self.onDropdownItemActivated = function(index, item, onItemClicked)
		if onItemClicked then
			onItemClicked(index, item)
		end
	end

	self.lastReportedHeight = nil
end

local function isItemSelectable(data)
	return nil == data.selectable or data.selectable
end

function DropdownItemsList:getScrollButtons(
	items,
	dropdownHoveredItemIndex,
	key,
	maxWidth,
	textInset,
	rowHeight,
	fontSize,
	onItemClicked,
	selectedBarWidth,
	theme
)
	local isDarkerTheme = theme.isDarkerTheme
	local dropdownTheme = theme.dropdownMenu
	local itemTheme = dropdownTheme.item

	local scrollButtons = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for index, data in ipairs(items) do
		if not data.name and DebugFlags.shouldDebugWarnings() then
			warn(("Index %d in DropdownMenu doesn't have a 'name' member"):format(index))
		end

		local selectable = isItemSelectable(data)
		local textColor = selectable and itemTheme.textColor or itemTheme.labelTextColor

		-- let if error if we got incorrect data
		local itemName = data.name
		local isHovered = (dropdownHoveredItemIndex == index) and selectable

		local itemKey = (key and data[key]) or itemName

		maxWidth = math.max(
			maxWidth,
			getTextSize(itemName, fontSize, nil, Vector2.new(0, 0)).X
				+ (textInset * 2)
				+ Constants.SCROLLBAR_BACKGROUND_THICKNESS
		)

		scrollButtons[itemKey or itemName] = Roact.createElement("ImageButton", {
			Size = UDim2.new(1, -Constants.SCROLLBAR_BACKGROUND_THICKNESS + Constants.SCROLLBAR_PADDING, 0, rowHeight),
			BackgroundColor3 = isHovered and itemTheme.backgroundSelectedColor or itemTheme.backgroundColor,
			BorderSizePixel = 0,
			LayoutOrder = index,
			ZIndex = 2,

			AutoButtonColor = false,

			[Roact.Event.Activated] = function(rbx, x, y)
				if selectable then
					self.onDropdownItemActivated(index, data, onItemClicked)
				end
			end,
			[Roact.Event.MouseEnter] = function(rbx, x, y)
				self.onDropdownItemMouseEntered(index)
			end,
			[Roact.Event.MouseLeave] = function(rbx, x, y)
				self.onDropdownItemMouseLeft(index)
			end,
			[Roact.Event.InputEnded] = self.focusLost,
		}, {
			SelectedBar = not isDarkerTheme and Roact.createElement("Frame", {
				Size = UDim2.new(0, selectedBarWidth, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = dropdownTheme.item.selectedBarColor,
				Visible = isHovered,
				ZIndex = 2,
			}),

			TextLabel = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, textInset, 0, 0),
				Size = UDim2.new(1, -textInset, 1, 0),
				BackgroundTransparency = 1,
				Text = itemName,
				TextColor3 = textColor,
				Font = Constants.FONT,
				TextSize = fontSize,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				ClipsDescendants = true,
				ZIndex = 3,
			}),
		})
	end

	return scrollButtons
end

function DropdownItemsList:render()
	return withModal(function(modalTarget)
		return self:renderContent(modalTarget, nil)
	end)
end

function DropdownItemsList:renderContent(modalTarget)
	local props = self.props
	local state = self.state

	local theme = props.Stylizer

	local key = props.key or nil

	local left = props.left
	local top = props.top
	local dropDownWidth = props.dropDownWidth

	local items = props.items or {}
	local length = #items
	local visibleDropDownCount = math.min(props.visibleDropDownCount or 5, length)
	local rowHeight = props.rowHeight or 24
	local fontSize = props.fontSize or Constants.FONT_SIZE_MEDIUM
	local setDropdownHeight = props.setDropdownHeight

	local windowPosition = props.windowPosition
	local windowSize = props.windowSize

	local onItemClicked = props.onItemClicked

	local selectedBarWidth = Constants.DROPDOWN_SELECTED_BAR
	local textInset = selectedBarWidth + Constants.DROPDOWN_TEXT_INSET

	local dropdownTheme = theme.dropdownMenu

	local dropdownHoveredItemIndex = state.dropdownHoveredItemIndex

	local maxWidth = Constants.DROPDOWN_WIDTH
	local height = visibleDropDownCount * rowHeight

	if setDropdownHeight and self.lastReportedHeight ~= height then
		self.lastReportedHeight = height
		setDropdownHeight(height)
	end

	local scrollButtons = self:getScrollButtons(
		items,
		dropdownHoveredItemIndex,
		key,
		maxWidth,
		textInset,
		rowHeight,
		fontSize,
		onItemClicked,
		selectedBarWidth,
		theme
	)

	-- Put the scrolling frame behind the background frame, but set
	-- the background frame to be transparent. This way we see the
	-- border on top of the scrolling frame, but not the background.
	-- If the scrolling frame was a child of the rounded frame's
	-- border then it gets rendered on top of the border. This works
	-- ok for the elements in the dropdown as you can set their
	-- background to transparent, but it doesn't work for background
	-- of the scrollbar

	return Roact.createElement(ClickEventDetectFrame, {
		windowPosition = windowPosition,
		windowSize = windowSize,
		[Roact.Event.Activated] = self.props.closeDropdown,
	}, {
		StyledScrollingFrame = Roact.createElement(StyledScrollingFrame, {
			Position = UDim2.new(0, left, 0, top),
			Size = UDim2.new(0, dropDownWidth, 0, height),
			CanvasSize = UDim2.new(0, 0, 0, length * rowHeight),
			ZIndex = 1,
		}, scrollButtons),

		DropDownContainer = Roact.createElement(RoundFrame, {
			Position = UDim2.new(0, left, 0, top),
			Size = UDim2.new(0, dropDownWidth, 0, height),
			BackgroundTransparency = 1,
			ZIndex = 2,
			BorderColor3 = dropdownTheme.dropdownFrame.borderColor,
		}),
	})
end

DropdownItemsList = withContext({
	Stylizer = ContextServices.Stylizer,
})(DropdownItemsList)

return DropdownItemsList
