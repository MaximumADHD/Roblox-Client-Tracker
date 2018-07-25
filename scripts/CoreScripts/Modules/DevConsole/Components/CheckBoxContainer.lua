local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Components
local CheckBox = require(Components.CheckBox)
local CheckBoxDropDown = require(Components.CheckBoxDropDown)

local Constants = require(script.Parent.Parent.Constants)
local CHECK_BOX_HEIGHT = Constants.UtilityBarFormatting.CheckBoxHeight
local CHECK_BOX_PADDING = Constants.UtilityBarFormatting.CheckBoxInnerPadding * 2
local FILTER_ICON_UNFILLED = Constants.Image.FilterUnfilled
local FILTER_ICON_FILLED = Constants.Image.FilterFilled

local DROP_DOWN_Y_ADJUST = 3

local CheckBoxContainer = Roact.PureComponent:extend("CheckBoxContainer")

function CheckBoxContainer:init()
	self.onCheckBoxClicked = function(field, newState)
		local onCheckBoxesChanged = self.props.onCheckBoxesChanged
		local currState = self.state.checkBoxStates
		currState[field] = newState

		self:setState({
			checkBoxStates = currState,
		})
		onCheckBoxesChanged(self.state.checkBoxStates)
	end

	self.onCheckBoxExpanded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or
			(input.UserInputType == Enum.UserInputType.Touch and
			input.UserInputState == Enum.UserInputState.End) then
			self:setState({
				expanded = true,
			})
		end
	end

	self.onCloseCheckBox = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or
			(input.UserInputType == Enum.UserInputType.Touch and
			input.UserInputState == Enum.UserInputState.End) then
			self:setState({
				expanded = false
			})
		end
	end

	if not self.props.boxNames then
		warn("CheckBoxContainer must be passed a list of Box Names or else it only creates an empty frame")
	end

	local boxState = {}
	local textWidths = {}
	local totalLength = 0
	local count = 0
	for ind, name in ipairs(self.props.boxNames) do
		local textVector = TextService:GetTextSize(
			name,
			Constants.DefaultFontSize.UtilBar,
			Constants.Font.UtilBar,
			Vector2.new(0, 0)
		)
		textWidths[ind] = textVector.X
		totalLength = totalLength + textVector.X + CHECK_BOX_HEIGHT + CHECK_BOX_PADDING
		boxState[name] = true
		count = count + 1
	end

	self.ref = Roact.createRef()

	self.state = {
		checkBoxStates = boxState,
		expanded = false,
		textWidths = textWidths,
		numCheckBoxes = count,
		minFullLength = totalLength,
	}
end

function CheckBoxContainer:render()
	local elements = {}
	local frameWidth = self.props.frameWidth
	local frameHeight =  self.props.frameHeight
	local pos = self.props.pos

	local boxOrder = self.props.boxNames
	local layoutOrder = self.props.layoutOrder

	local boxStates = self.state.checkBoxStates
	local minFullLength = self.state.minFullLength
	local expanded = self.state.expanded
	local numCheckBoxes = self.state.numCheckBoxes

	local anySelected = false
	for layoutOrder, name in ipairs(boxOrder) do
		elements[name] = Roact.createElement(CheckBox, {
			name = name,
			font = Constants.Font.UtilBar,
			fontSize = Constants.DefaultFontSize.UtilBar,
			checkBoxHeight = CHECK_BOX_HEIGHT,
			frameHeight = frameHeight,
			layoutOrder = layoutOrder,

			isSelected = boxStates[name],
			selectedColor = Constants.Color.SelectedBlue,
			unselectedColor = Constants.Color.UnselectedGray,

			onCheckBoxClicked = self.onCheckBoxClicked,
		})
		anySelected = anySelected or boxStates[name]
	end

	if frameWidth < minFullLength then
		elements["CheckBoxLayout"] = Roact.createElement("UIListLayout", {
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

			[Roact.Event.InputEnded] = self.onCheckBoxExpanded,
			[Roact.Ref] = self.ref,
		}, {
			DropDown = showDropDown and Roact.createElement(CheckBoxDropDown, {
				absolutePosition = dropDownPos,
				frameWidth = frameWidth,
				elementHeight = frameHeight,
				numElements = numCheckBoxes,

				onCloseCheckBox = self.onCloseCheckBox
			}, elements)
		})
	else
		elements["CheckBoxLayout"] = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			FillDirection = Enum.FillDirection.Horizontal,
		})

		return Roact.createElement("Frame", {
			Size = UDim2.new(0,frameWidth,0,frameHeight),
			Position = pos,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, elements)
	end
end

return CheckBoxContainer