--!nonstrict
local Packages = script.Parent.Parent.Parent.Parent
local UIBlox = Packages.UIBlox

local Roact = require(Packages.Roact)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)
local RadioButton = require(script.Parent.RadioButton)
local Cryo = require(Packages.Cryo)

local withSelectionCursorProvider = require(UIBlox.App.SelectionImage.withSelectionCursorProvider)
local CursorKind = require(UIBlox.App.SelectionImage.CursorKind)
local withCursor = require(UIBlox.App.SelectionCursor.withCursor)
local CursorType = require(UIBlox.App.SelectionCursor.CursorType)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local RadioButtonList = Roact.PureComponent:extend("RadioButtonList")

local validateButton = t.strictInterface({
	label = t.string,
	isDisabled = t.optional(t.boolean),
})

RadioButtonList.validateProps = t.strictInterface({
	-- The options to the radio button menu. Each string corresponds to one `radioButton`.
	-- Optionally, you can pass in a table with the field `isDisabled` to indicate that the option is disabled.
	radioButtons = t.array(t.union(t.string, validateButton)),
	-- This function is called when a `radioButton` is clicked. The value passed in is the index of the button.
	onActivated = t.callback,
	-- This is the size of an individual `radioButton` component
	elementSize = t.UDim2,
	-- The index of the initially selected `radioButton`
	initialValue = t.optional(t.number),
	-- The index of the currently selected `radioButton`
	-- will override the one specified in the internal state
	currentValue = t.optional(t.number),
	-- The `layoutOrder` of this component, to be used in `UIListLayout`
	layoutOrder = t.optional(t.number),
	padding = t.optional(t.UDim),
	automaticSize = t.optional(t.boolean),

	-- Optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	forwardRef = t.optional(t.table),
})

function RadioButtonList:init()
	self.state = {
		currentValue = self.props.initialValue or 0,
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

	self.gamepadRefs = RoactGamepad.createRefCache()
end

function RadioButtonList:renderWithProviders(getSelectionCursor, cursor)
	local radioButtons = {}
	radioButtons.layout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = self.props.padding,
	})

	for i, value in ipairs(self.props.radioButtons) do
		radioButtons["RadioButton" .. i] = Roact.createElement(RoactGamepad.Focusable[RadioButton], {
			text = type(value) == "table" and value.label or value,
			isSelected = if self.props.currentValue ~= nil
				then i == self.props.currentValue
				else i == self.state.currentValue,
			isDisabled = self.state.disabledIndices[i],
			onActivated = self.doLogic,
			size = self.props.elementSize,
			layoutOrder = i,
			id = i,
			[Roact.Ref] = self.gamepadRefs[i],
			NextSelectionUp = i > 1 and self.gamepadRefs[i - 1] or nil,
			NextSelectionDown = i < #self.props.radioButtons and self.gamepadRefs[i + 1] or nil,
			SelectionImageObject = if UIBloxConfig.migrateToNewSelectionCursor
				then cursor
				else getSelectionCursor(CursorKind.RoundedRect),
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
	return withSelectionCursorProvider(function(getSelectionCursor)
		if UIBloxConfig.migrateToNewSelectionCursor then
			return withCursor(function(context)
				local cursor = context.getCursorByType(CursorType.RoundedRect)
				return self:renderWithProviders(getSelectionCursor, cursor)
			end)
		else
			return self:renderWithProviders(getSelectionCursor)
		end
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		RadioButtonList,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
