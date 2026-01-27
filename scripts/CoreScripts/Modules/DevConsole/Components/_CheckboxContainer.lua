--!nonstrict
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Packages.Roact)

local Components = script.Parent.Parent.Components
local Checkbox = require(Components._Checkbox)
local CheckboxDropdown = require(Components._CheckboxDropdown)

local Constants = require(script.Parent.Parent.Constants)
local CHECK_BOX_HEIGHT = Constants.UtilityBarFormatting.CheckboxHeight
local CHECK_BOX_PADDING = Constants.UtilityBarFormatting.CheckboxInnerPadding * 2
local FILTER_ICON_UNFILLED = Constants.Image.FilterUnfilled
local FILTER_ICON_FILLED = Constants.Image.FilterFilled

local DROP_DOWN_Y_ADJUST = 3

local CheckboxContainer = Roact.PureComponent:extend("CheckboxContainer")

function CheckboxContainer:init()
	self.onCheckboxClicked = function(field, newState)
		local onCheckboxChanged = self.props.onCheckboxChanged
		onCheckboxChanged(field, newState)
	end

	-- this is part of the dropdown logic
	self.onCheckboxExpanded = function(rbx, input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or (input.UserInputType == Enum.UserInputType.Touch and input.UserInputState == Enum.UserInputState.End)
		then
			self:setState({
				expanded = true,
			})
		end
	end

	-- this is part of the dropdown logic
	self.onCloseCheckbox = function(rbx, input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or (input.UserInputType == Enum.UserInputType.Touch and input.UserInputState == Enum.UserInputState.End)
		then
			self:setState({
				expanded = false,
			})
		end
	end

	if not self.props.orderedCheckboxState then
		warn("CheckboxContainer must be passed a list of Box Names or else it only creates an empty frame")
	end

	local textWidths = {}
	local totalLength = 0
	local count = 0
	for ind, box in ipairs(self.props.orderedCheckboxState) do
		local textVector = TextService:GetTextSize(
			box.name,
			Constants.DefaultFontSize.UtilBar,
			Constants.Font.UtilBar,
			Vector2.new(0, 0)
		)
		textWidths[ind] = textVector.X
		totalLength = totalLength + textVector.X + CHECK_BOX_HEIGHT + CHECK_BOX_PADDING
		count = count + 1
	end

	self.ref = Roact.createRef()

	self.state = {
		expanded = false,
		textWidths = textWidths,
		numCheckboxes = count,
		minFullLength = totalLength,
	}
end

function CheckboxContainer:render()
	local elements = {}
	local frameWidth = self.props.frameWidth
	local frameHeight = self.props.frameHeight
	local pos = self.props.pos

	local layoutOrder = self.props.layoutOrder
	local orderedCheckboxState = self.props.orderedCheckboxState

	local minFullLength = self.state.minFullLength
	local expanded = self.state.expanded
	local numCheckboxes = self.state.numCheckboxes

	local anySelected = false
	for layoutOrder, box in ipairs(orderedCheckboxState) do
		elements[box.name] = Roact.createElement(Checkbox, {
			name = box.name,
			font = Constants.Font.UtilBar,
			fontSize = Constants.DefaultFontSize.UtilBar,
			checkboxHeight = CHECK_BOX_HEIGHT,
			frameHeight = frameHeight,
			layoutOrder = layoutOrder,

			isSelected = box.state,
			selectedColor = Constants.Color.SelectedBlue,
			unselectedColor = Constants.Color.UnselectedGray,

			onCheckboxClicked = self.onCheckboxClicked,
		})
		anySelected = anySelected or box.state
	end

	if frameWidth < minFullLength then
		elements["CheckboxLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			FillDirection = Enum.FillDirection.Vertical,
		})

		local showDropDown = self.ref.current and expanded
		local dropDownPos
		if showDropDown then
			local absPos = self.ref.current.AbsolutePosition
			-- adding slight y offset to nudge dropdown enough to see button border
			dropDownPos = UDim2.new(0, absPos.X, 0, absPos.Y + frameHeight + DROP_DOWN_Y_ADJUST)
		end

		return Roact.createElement("ImageButton", {
			Size = UDim2.new(0, frameHeight, 0, frameHeight),
			LayoutOrder = layoutOrder,

			Image = showDropDown and FILTER_ICON_FILLED or FILTER_ICON_UNFILLED,
			BackgroundTransparency = 1,
			BorderColor3 = Constants.Color.Text,

			[Roact.Event.InputEnded] = self.onCheckboxExpanded,
			[Roact.Ref] = self.ref,
		}, {
			DropDown = showDropDown and Roact.createElement(CheckboxDropdown, {
				absolutePosition = dropDownPos,
				frameWidth = frameWidth,
				elementHeight = frameHeight,
				numElements = numCheckboxes,

				onCloseCheckbox = self.onCloseCheckbox,
			}, elements),
		})
	else
		elements["CheckboxLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			FillDirection = Enum.FillDirection.Horizontal,
		})

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, frameWidth, 0, frameHeight),
			Position = pos,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, elements)
	end
end

return CheckboxContainer
