--[[
	This is a DropDownMenu we use within Toolbox/Markeptlace.
	It's will open a drop down to contain buttons if we click the controller button.
	User can change the content of the DropDownMenu.

	Necessary Props:
		Position UDim2, used to determin the position. Can be overrided using
		layout order.
		Size UDim2
		selectedDropDownIndex number, will be used to determine current selection.
		items = table, {
			name, optional, will be used to get the text for selectable items.
			selectable=true, selectable will default to true if nil
		}

		variant key - used to lookup data for items
		number visibleDropDownCount = 5 - how many items can be seen before scrolling
		number rowHeight = 24 - height of each row in pixels
		number fontSize = Constants.FONT_SIZE_MEDIUM - font size of each item text
		UDim2 windowPosition - position of "click through" window for ClickEventDetectFrame
		UDim2 windowSize - size of "click through" window for ClickEventDetectFrame

		callback setDropdownHeight(number height) - called when the dropdown height changes
		callback onItemClicked(number index) - called when a user clicks on a dropdown item
		callback closeDropdown - called when the parent component should close dropdown

	Optional Props:
		LayoutOrder = LayoutOrder, this wwill be used to override the position of the
		dropdown menu.
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)
local Images = require(Util.Images)

local getModal = ContextGetter.getModal
local withTheme = ContextHelper.withTheme

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Components = Plugin.Core.Components
local RoundButton = require(Components.RoundButton)
local DropdownItemsList = require(Components.DropdownItemsList)

local DropdownMenu = Roact.PureComponent:extend("DropdownMenu")

local FFlagToolboxUseDeveloperFrameworkSearchBar = game:GetFastFlag("ToolboxUseDeveloperFrameworkSearchBar")

function DropdownMenu:init(props)
	self.state = {
		isShowingDropdown = false,
		showDropDownButtonHovered = false,
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

	self.refresh = function(rbx)
		if self.currentSelectionRef.current then
			local currentSelection = self.currentSelectionRef.current
			local currentSelectionSize = currentSelection.AbsoluteSize
			local currentSelectionTopLeft = currentSelection.AbsolutePosition
			local offsetFromButton = 2
			local dropDownWidth = currentSelectionSize.X or Constants.DROPDOWN_WIDTH
			local dropDownTop = currentSelectionTopLeft.y + currentSelectionSize.y + offsetFromButton
			local dropDownLeft = currentSelectionTopLeft.x
			if self.state.dropDownWidth ~= dropDownWidth or self.state.dropDownTop ~= dropDownTop or self.state.dropDownLeft ~= dropDownLeft then
				self:setState({
					dropDownWidth = dropDownWidth,
					dropDownTop = dropDownTop,
					dropDownLeft = dropDownLeft,
				})
			end
		end
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

function DropdownMenu:didMount()
	self.refresh()
end

function DropdownMenu:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function DropdownMenu:renderContent(theme)
	local props = self.props
	local state = self.state

	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end

	local key = props.key or nil

	local position = props.Position
	local size = props.Size
	local layoutOrder = props.LayoutOrder or 0

	local items = props.items or {}
	local length = #items
	local visibleDropDownCount = math.min(props.visibleDropDownCount or 5, length)
	local rowHeight = props.rowHeight or 24
	local selectedDropDownIndex = props.selectedDropDownIndex or 1
	local fontSize = props.fontSize or Constants.FONT_SIZE_MEDIUM
	local setDropdownHeight = props.setDropdownHeight

	if selectedDropDownIndex > #items then
		selectedDropDownIndex = 0
	end

	local isNoneSelectableItem = selectedDropDownIndex > 0 and selectedDropDownIndex <= #items and items[selectedDropDownIndex] and not isItemSelectable(items[selectedDropDownIndex])
	if isNoneSelectableItem then
		selectedDropDownIndex = findFirstSelectableItemIndex(items)
	end

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

	local dropdownTheme = theme.dropdownMenu
	local currentSelectionTheme = dropdownTheme.currentSelection

	local showDropDownButtonHovered = state.showDropDownButtonHovered
	local isShowingDropdown = state.isShowingDropdown
	local hoverOrShow = isShowingDropdown or showDropDownButtonHovered

	local currentSelectionBorderColor = hoverOrShow and currentSelectionTheme.borderSelectedColor
		or currentSelectionTheme.borderColor
	local currentSelectionBackgroundColor = hoverOrShow and currentSelectionTheme.backgroundSelectedColor
		or currentSelectionTheme.backgroundColor
	local currentSelectionTextColor = hoverOrShow and currentSelectionTheme.textSelectedColor
		or currentSelectionTheme.textColor
	local dropdownIconColor
	if FFlagToolboxRemoveWithThemes then
		dropdownIconColor = currentSelectionTheme.dropdownIconColor
	else
		local isDarkerTheme = theme.isDarkerTheme
		dropdownIconColor = (isDarkerTheme or hoverOrShow) and currentSelectionTheme.iconSelectedColor
		or currentSelectionTheme.iconColor
	end

	local buttonPosition
	local buttonSize
	if (FFlagToolboxUseDeveloperFrameworkSearchBar) then
		buttonPosition = nil
		buttonSize = UDim2.new(1, 0, 1, 0)
	else
		buttonPosition = UDim2.new(0, -1, 0, -1)
		buttonSize = UDim2.new(1, 2, 1, 2)
	end

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,

		[Roact.Ref] = self.baseFrameRef,

		LayoutOrder = layoutOrder
	}, {
		CurrentSelection = Roact.createElement(RoundButton, {
			Position = buttonPosition,
			Size = buttonSize,

			BackgroundColor3 = currentSelectionBackgroundColor,
			BorderColor3 = currentSelectionBorderColor,

			[Roact.Ref] = self.currentSelectionRef,

			[Roact.Event.Activated] = self.openDropdown,
			[Roact.Event.MouseEnter] = self.showDropDownButtonEntered,
			[Roact.Event.MouseLeave] = self.showDropDownButtonLeft,
			[Roact.Event.InputEnded] = self.focusLost,

			[Roact.Change.AbsolutePosition] = self.refresh,
			[Roact.Change.AbsoluteSize] = self.refresh,
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
				Rotation = isShowingDropdown and 180 or 0,
				ImageColor3 = dropdownIconColor,
				BackgroundTransparency = 1,
			}),
		}),

		DropdownItemsList = isShowingDropdown and Roact.createElement(DropdownItemsList, {
			key = key,
			items = items,
			visibleDropDownCount = visibleDropDownCount,
			rowHeight = rowHeight,
			fontSize = fontSize,
			onItemClicked = function(index, item)
				if props.onItemClicked then
					props.onItemClicked(index, item)
				end
				self.closeDropdown()
			end,

			closeDropdown = self.closeDropdown,
			setDropdownHeight = setDropdownHeight,

			dropDownWidth = state.dropDownWidth,
			top = state.dropDownTop,
			left = state.dropDownLeft,
		}),
	})
end

if FFlagToolboxRemoveWithThemes then
	if FFlagToolboxWithContext then
		DropdownMenu = withContext({
			Stylizer = ContextServices.Stylizer,
		})(DropdownMenu)
	else
		ContextServices.mapToProps(DropdownMenu, {
			Stylizer = ContextServices.Stylizer,
		})
	end

end

return DropdownMenu
