--[[
	This is a DropDownMenu we use within Toolbox/Markeptlace.
	It's will open a drop down to contain buttons if we click the controller button.
	User can change the content of the DropDownMenu.

	Necessary Props:
		Position UDim2, used to determin the position. Can be overrided using
		layout order.
		Size UDim2
		selectedDropDownIndex number, will be used to determine current selection.
		visibleDropDownCount number = 5,
		rowHeight number = 24
		fontSize number = Constants.FONT_SIZE_MEDIUM
		items = table, {
			name, optional, will be used to get the text for selectable items.
			selectable=true, selectable will default to true if nil
		}

		callback onItemClicked(number index)

	Optional Props:
		LayoutOrder = LayoutOrder, this wwill be used to override the position of the
		dropdown menu.
]]

local Plugin = script.Parent.Parent.Parent

if game:GetFastFlag("CMSEnableCatalogTags2") then
	return require(Plugin.Core.Components.DropdownMenu2)
end

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local getTextSize = require(Util.getTextSize)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local DebugFlags = require(Util.DebugFlags)
local Images = require(Util.Images)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme

local Components = Plugin.Core.Components
local StyledScrollingFrame = require(Components.StyledScrollingFrame)
local RoundButton = require(Components.RoundButton)
local RoundFrame = require(Components.RoundFrame)

local DropdownMenu = Roact.PureComponent:extend("DropdownMenu")

function DropdownMenu:init(props)
	self.state = {
		isShowingDropdown = false,
		showDropDownButtonHovered = false,
		dropdownHoveredItemIndex = 0,
	}

	self.currentSelectionRef = Roact.createRef()

	self.baseFrameRef = Roact.createRef()

	self.openDropdown = function()
		self:setState(function(prevState, props)
			getModal(self).onDropdownToggled(true)

			return {
				isShowingDropdown = true,
			}
		end)
	end

	self.showDropDownButtonEntered = function()
		self:setState({
			showDropDownButtonHovered = true,
		})
	end

	self.showDropDownButtonLeft = function()
		self:setState({
			showDropDownButtonHovered = false,
		})
	end

	self.closeDropdown = function()
		getModal(self).onDropdownToggled(false)

		self:setState({
			isShowingDropdown = false,
		})
	end

	self.focusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.closeDropdown()
		end
	end

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
		self.closeDropdown()
	end
end

local function isItemSelectable(data)
	return nil == data.selectable or data.selectable
end

local function findFirstSelectableItemIndex(items)
	for index, data in ipairs(items) do
		if isItemSelectable(data) then
			return index
		end
	end
	warn("No selectable items found in DropdownMenu")
	return 1
end

function DropdownMenu:getScrollButtons(items, dropdownHoveredItemIndex, key, maxWidth, textInset, rowHeight, fontSize, onItemClicked, selectedBarWidth, theme)
	local isDarkerTheme = theme.isDarkerTheme
	local dropdownTheme = theme.dropdownMenu
	local itemTheme = dropdownTheme.item

	local scrollButtons = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder
		})
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

		maxWidth = math.max(maxWidth, getTextSize(itemName, fontSize).X
			+ (textInset * 2) + Constants.SCROLLBAR_BACKGROUND_THICKNESS)

		scrollButtons[itemKey or itemName] = Roact.createElement("ImageButton",{
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
			})
		})
	end

	return scrollButtons
end

function DropdownMenu:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget)
			local props = self.props
			local state = self.state

			local key = props.key or nil

			local position = props.Position
			local size = props.Size
			local layoutOrder = props.LayoutOrder or 0

			local items = props.items or {}
			local length = #items
			local visibleCount = math.min(props.visibleDropDownCount or 5, length)
			local rowHeight = props.rowHeight or 24
			local selectedDropDownIndex = props.selectedDropDownIndex or 1
			local fontSize = props.fontSize or Constants.FONT_SIZE_MEDIUM

			if selectedDropDownIndex > #items then
				selectedDropDownIndex = 0
			end

			local isNoneSelectableItem = selectedDropDownIndex > 0 and selectedDropDownIndex <= #items and items[selectedDropDownIndex] and not isItemSelectable(items[selectedDropDownIndex])
			if isNoneSelectableItem then
				selectedDropDownIndex = findFirstSelectableItemIndex(items)
			end

			local onItemClicked = props.onItemClicked

			local currentSelection = self.currentSelectionRef and self.currentSelectionRef.current

			local indexInRange = selectedDropDownIndex > 0 and selectedDropDownIndex <= #items

			local currentSelectionText = "Choose one"
			if indexInRange and items[selectedDropDownIndex] and items[selectedDropDownIndex].name then
				currentSelectionText = items[selectedDropDownIndex].name
			end

			local selectedBarWidth = Constants.DROPDOWN_SELECTED_BAR
			local textInset = selectedBarWidth + Constants.DROPDOWN_TEXT_INSET
			-- scale icon size based on font size relative to FONT_SIZE_MEDIUM
			local dropdownIconSize = Constants.DROPDOWN_ICON_SIZE * fontSize/Constants.FONT_SIZE_MEDIUM
			local dropdownIconFromRight = Constants.DROPDOWN_ICON_FROM_RIGHT

			local isDarkerTheme = theme.isDarkerTheme
			local dropdownTheme = theme.dropdownMenu
			local currentSelectionTheme = dropdownTheme.currentSelection

			local dropdownHoveredItemIndex = state.dropdownHoveredItemIndex
			local showDropDownButtonHovered = state.showDropDownButtonHovered
			local isShowingDropdown = state.isShowingDropdown
			local hoverOrShow = isShowingDropdown or showDropDownButtonHovered

			local currentSelectionBorderColor = hoverOrShow and currentSelectionTheme.borderSelectedColor
				or currentSelectionTheme.borderColor
			local currentSelectionBackgroundColor = hoverOrShow and currentSelectionTheme.backgroundSelectedColor
				or currentSelectionTheme.backgroundColor
			local currentSelectionTextColor = hoverOrShow and currentSelectionTheme.textSelectedColor
				or currentSelectionTheme.textColor
			local dropdownIconColor = (isDarkerTheme or hoverOrShow) and currentSelectionTheme.iconSelectedColor
				or currentSelectionTheme.iconColor

			local dropdownFrame = {}
			local maxWidth = Constants.DROPDOWN_WIDTH
			if isShowingDropdown and currentSelection then
				local scrollButtons = self:getScrollButtons(
					items, dropdownHoveredItemIndex, key, maxWidth, textInset, rowHeight, fontSize, onItemClicked, selectedBarWidth, theme)

				local currentSelectionSize = currentSelection.AbsoluteSize
				local currentSelectionTopLeft = currentSelection.AbsolutePosition
				local offsetFromButton = 2

				local dropDownWidth = currentSelectionSize.X or maxWidth
				local height = visibleCount * rowHeight
				local top = currentSelectionTopLeft.y + currentSelectionSize.y + offsetFromButton
				local left = currentSelectionTopLeft.x

				-- Put the scrolling frame behind the background frame, but set
				-- the background frame to be transparent. This way we see the
				-- border on top of the scrolling frame, but not the background.
				-- If the scrolling frame was a child of the rounded frame's
				-- border then it gets rendered on top of the border. This works
				-- ok for the elements in the dropdown as you can set their
				-- background to transparent, but it doesn't work for background
				-- of the scrollbar

				dropdownFrame.StyledScrollingFrame = Roact.createElement(StyledScrollingFrame, {
					Position = UDim2.new(0, left, 0, top),
					Size = UDim2.new(0, dropDownWidth, 0, height),
					CanvasSize = UDim2.new(0, 0, 0, length * rowHeight),
					ZIndex = 1,
				}, scrollButtons)

				dropdownFrame.DropDownContainer = Roact.createElement(RoundFrame, {
					Position = UDim2.new(0, left, 0, top),
					Size = UDim2.new(0, dropDownWidth, 0, height),
					BackgroundTransparency = 1,
					ZIndex = 2,
					BorderColor3 = dropdownTheme.dropdownFrame.borderColor,
				})
			end

			return Roact.createElement("Frame", {
				Position = position,
				Size = size,
				BackgroundTransparency = 1,

				[Roact.Ref] = self.baseFrameRef,

				LayoutOrder = layoutOrder
			}, {
				CurrentSelection = Roact.createElement(RoundButton, {
					Position = UDim2.new(0, -1, 0, -1),
					Size = UDim2.new(1, 2, 1, 2),

					BackgroundColor3 = currentSelectionBackgroundColor,
					BorderColor3 = currentSelectionBorderColor,

					[Roact.Ref] = self.currentSelectionRef,

					[Roact.Event.Activated] = self.openDropdown,
					[Roact.Event.MouseEnter] = self.showDropDownButtonEntered,
					[Roact.Event.MouseLeave] = self.showDropDownButtonLeft,
					[Roact.Event.InputEnded] = self.focusLost,
				}, {
					CurrentSelectionLabel = Roact.createElement("TextLabel", {
						Position = UDim2.new(0, textInset, 0, 0),
						Size = UDim2.new(1, -(textInset + dropdownIconSize + dropdownIconFromRight), 1, 0),
						BackgroundTransparency = 1,
						TextColor3 = currentSelectionTextColor,
						Text = currentSelectionText,
						Font = Constants.FONT,
						TextSize = fontSize,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						ClipsDescendants = true,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}),

					DropDownIcon = Roact.createElement("ImageLabel", {
						AnchorPoint = Vector2.new(1, 0.5),
						Size = UDim2.new(0, dropdownIconSize, 0, dropdownIconSize),
						Position = UDim2.new(1, -dropdownIconFromRight, 0.5, 0),
						Image = Images.ARROW_DOWN_ICON,
						Rotation = state.isShowingDropdown and 180 or 0,
						ImageColor3 = dropdownIconColor,
						BackgroundTransparency = 1,
					}),
				}),

				Portal = modalTarget and isShowingDropdown and Roact.createElement(Roact.Portal, {
					target = modalTarget,
				}, {
					-- Consume all clicks outside the dropdown to close it when it "loses focus"
					ClickEventDetectFrame = Roact.createElement("ImageButton", {
						ZIndex = 10,
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						AutoButtonColor = false,

						[Roact.Event.Activated] = self.closeDropdown,
					}, {
						-- Also block all scrolling events going through
						ScrollBlocker = Roact.createElement("ScrollingFrame", {
							Size = UDim2.new(1, 0, 1, 0),
							-- We need to have ScrollingEnabled = true for this frame for it to block
							-- But we don't want it to actually scroll, so its canvas must be same size as the frame
							ScrollingEnabled = true,
							CanvasSize = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							ScrollBarThickness = 0,
						}, dropdownFrame)
					})
				})
			})
		end)
	end)
end

return DropdownMenu
