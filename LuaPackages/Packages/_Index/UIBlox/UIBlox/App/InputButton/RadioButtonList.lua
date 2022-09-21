local Packages = script.Parent.Parent.Parent.Parent
local UIBlox = Packages.UIBlox

local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)
local RadioButton = require(script.Parent.RadioButton)
local Cryo = require(Packages.Cryo)

local withSelectionCursorProvider = require(UIBlox.App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(UIBlox.App.SelectionImage.CursorKind)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)
local devOnly = require(Packages.UIBlox.Utility.devOnly)

local RadioButtonList = Roact.PureComponent:extend("RadioButtonList")

local validateButton = t.strictInterface({
	label = t.string,
	isDisabled = t.optional(t.boolean),
})

local validateProps = devOnly(t.strictInterface({
	radioButtons = t.array(t.union(t.string, validateButton)),
	onActivated = t.callback,
	elementSize = t.UDim2,
	selectedValue = t.optional(t.number),
	layoutOrder = t.optional(t.number),
	padding = t.optional(t.UDim),
	automaticSize = t.optional(t.boolean),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	forwardRef = t.optional(t.table),
}))

function RadioButtonList:init()
	self.state = {
		currentValue = self.props.selectedValue or 0,
	}

	local disabledIndices = {}
	for i, v in ipairs(self.props.radioButtons) do
		disabledIndices[i] = type(v) == "table" and v.isDisabled or false
	end
	self.state.disabledIndices = disabledIndices

	self.doLogic = function(key)
		if self.state.disabledIndices[key] then
			return
		end
		self:setState({
			currentValue = key,
		})
		self.props.onActivated(key)
	end

	if UIBloxConfig.enableRadioButtonGamepadSupport then
		self.gamepadRefs = RoactGamepad.createRefCache()
	end
end

function RadioButtonList:renderWithProviders(getSelectionCursor)
	assert(validateProps(self.props))

	local radioButtons = {}
	radioButtons.layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = self.props.padding,
	})

	for i, value in ipairs(self.props.radioButtons) do
		radioButtons["RadioButton" .. i] = Roact.createElement(RoactGamepad.Focusable[RadioButton], {
			text = type(value) == "table" and value.label or value,
			isSelected = i == self.state.currentValue,
			isDisabled = self.state.disabledIndices[i],
			onActivated = self.doLogic,
			size = self.props.elementSize,
			layoutOrder = i,
			id = i,
			[Roact.Ref] = self.gamepadRefs[i],
			NextSelectionUp = i > 1 and self.gamepadRefs[i - 1] or nil,
			NextSelectionDown = i < #self.props.radioButtons and self.gamepadRefs[i + 1] or nil,
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),
			inputBindings = {
				OnActivatedButton = RoactGamepad.Input.onBegin(Enum.KeyCode.ButtonA, function()
					self.doLogic(i)
				end),
			},
		})
	end

	return Roact.createElement(RoactGamepad.Focusable.Frame, {
		Size = if self.props.automaticSize then UDim2.fromScale(1, 0) else UDim2.fromScale(1, 1),
		AutomaticSize = if self.props.automaticSize then Enum.AutomaticSize.Y else nil,
		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,
		NextSelectionLeft = self.props.NextSelectionLeft,
		NextSelectionRight = self.props.NextSelectionRight,
		NextSelectionDown = self.props.NextSelectionDown,
		NextSelectionUp = self.props.NextSelectionUp,
		[Roact.Ref] = self.props.forwardRef,
	}, radioButtons)
end

function RadioButtonList:render()
	if UIBloxConfig.enableRadioButtonGamepadSupport then
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithProviders(getSelectionCursor)
		end)
	end

	assert(validateProps(self.props))

	local radioButtons = {}
	radioButtons.layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	for i, value in ipairs(self.props.radioButtons) do
		radioButtons["RadioButton" .. i] = Roact.createElement(RadioButton, {
			text = type(value) == "table" and value.label or value,
			isSelected = i == self.state.currentValue,
			isDisabled = self.state.disabledIndices[i],
			onActivated = self.doLogic,
			size = self.props.elementSize,
			layoutOrder = i,
			id = i,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,
	}, radioButtons)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		RadioButtonList,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
