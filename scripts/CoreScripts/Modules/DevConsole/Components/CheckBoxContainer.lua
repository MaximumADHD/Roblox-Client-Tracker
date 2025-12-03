--!nonstrict
local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Packages.Roact)

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
		local onCheckBoxChanged = self.props.onCheckBoxChanged
		onCheckBoxChanged(field, newState)
	end

	-- this is part of the dropdown logic
	self.onCheckBoxExpanded = function(rbx, input)
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
	self.onCloseCheckBox = function(rbx, input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			or (input.UserInputType == Enum.UserInputType.Touch and input.UserInputState == Enum.UserInputState.End)
		then
			self:setState({
				expanded = false,
			})
		end
	end

	if not self.props.orderedCheckBoxState then
		warn("CheckBoxContainer must be passed a list of Box Names or else it only creates an empty frame")
	end

	local textWidths = {}
	local totalLength = 0
	local count = 0
	for ind, box in ipairs(self.props.orderedCheckBoxState) do
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
		numCheckBoxes = count,
		minFullLength = totalLength,
	}
end

function CheckBoxContainer:render()
	local elements = {}
	local frameWidth = self.props.frameWidth
	local frameHeight = self.props.frameHeight
	local pos = self.props.pos

	local layoutOrder = self.props.layoutOrder
	local orderedCheckBoxState = self.props.orderedCheckBoxState

	local minFullLength = self.state.minFullLength
	local expanded = self.state.expanded
	local numCheckBoxes = self.state.numCheckBoxes

	local anySelected = false
	for layoutOrder, box in ipairs(orderedCheckBoxState) do
		elements[box.name] = Roact.createElement(CheckBox, {
			name = box.name,
			font = Constants.Font.UtilBar,
			fontSize = Constants.DefaultFontSize.UtilBar,
			checkBoxHeight = CHECK_BOX_HEIGHT,
			frameHeight = frameHeight,
			layoutOrder = layoutOrder,

			isSelected = box.state,
			selectedColor = Constants.Color.SelectedBlue,
			unselectedColor = Constants.Color.UnselectedGray,

			onCheckBoxClicked = self.onCheckBoxClicked,
		})
		anySelected = anySelected or box.state
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

				onCloseCheckBox = self.onCloseCheckBox,
			}, elements),
		})
	else
		elements["CheckBoxLayout"] = Roact.createElement("UIListLayout", {
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

return CheckBoxContainer
