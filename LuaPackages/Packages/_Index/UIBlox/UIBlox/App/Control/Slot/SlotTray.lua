--!nonstrict
local Slot = script.Parent
local Control = Slot.Parent
local App = Control.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local React = require(Packages.React)
local t = require(Packages.t)
local Otter = require(Packages.Otter)
local Cryo = require(Packages.Cryo)

local RoactGamepad = require(Packages.RoactGamepad)
local Focusable = RoactGamepad.Focusable

local TileSlot = require(script.Parent.TileSlot)
local useStyle = require(Core.Style.useStyle)
local CursorKind = require(App.SelectionImage.CursorKind)
local useSelectionCursor = require(App.SelectionImage.useSelectionCursor)

local DEFAULT_SLOT_SIZE = 48
local INNER_PADDING = 12
local OUTER_PADDING = 24
local DEFAULT_SLOTTRAY_WIDTH = 360
local DEFAULT_SLOTTRAY_HEIGHT = 72
local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 10,
}

local slotInterface = t.strictInterface({
	displayText = t.optional(t.string),
	thumbnail = t.optional(t.string),
	isDisabled = t.optional(t.boolean),
	isLoading = t.optional(t.boolean),
})

local validateProps = t.strictInterface({
	slots = t.array(slotInterface),
	defaultSelectedSlotIndex = t.optional(t.integer),
	onChange = t.callback,
	width = t.optional(t.integer),
	darken = t.optional(t.boolean),

	onInputBegan = t.optional(t.callback),
	onInputEnded = t.optional(t.callback),

	-- optional parameters for RoactGamepad
	scrollingFrameRef = t.optional(t.table),
	onFocusChanged = t.optional(t.callback),
	inputBindings = t.optional(t.table),
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
})

export type Slot = {
	-- the label for the display test on the slot [Empty Mode
	displayText: string?,
	-- the image dir of the thumbnail [Filled Mode]
	thumbnail: string?,
	-- if the slot is disabled or not
	isDisabled: boolean?,
	-- if the slot is loading or not
	isLoading: boolean?,
}

export type Props = {
	--[[
		The properties for each slot. It is an array that contains multiple tables of the following format.
		Exactly _one_ of the following props is required for each slot (depending on empty/filled mode):

			* `displayText : string` the label for the display test on the slot [Empty Mode]
			* `thumbnail : string` the image dir of the thumbnail [Filled Mode]
			* `isLoading? : boolean` if the slot is loading or not
			* `isDisabled? : boolean` if the slot is disabled or not
	]]
	slots: { Slot },
	-- A function to be called when an item is selected, passing the selected item as a parameter
	onChange: (selectedIndex: number) -> (),
	-- The initial selected slot index, the default value is 1
	defaultSelectedSlotIndex: number?,
	-- The width of the `SlotTray`, the default value is 360
	width: number?,
	-- Darkens all but the selected slot when true (for gamepad navigation), default is false
	darken: boolean?,
	-- Invoked when user starts interacting with the `SlotTray`
	onInputBegan: ((instance: GuiBase2d, input: InputObject) -> ())?,
	-- Invoked when user finishes interacting with the `SlotTray`
	onInputEnded: ((instance: GuiBase2d, input: InputObject) -> ())?,

	-- Ref that will be passed to the `SlotTray` ScrollingFrame
	scrollingFrameRef: any?,
	-- Invoked when the `SlotTray` gains or loses gamepad focus
	onFocusChanged: ((isFocused: boolean) -> ())?,
	-- RoactGamepad Input bindings to assign when the `SlotTray` has focus
	inputBindings: any?,
	-- Next selection for gamepad focus
	NextSelectionLeft: any?,
	-- Next selection for gamepad focus
	NextSelectionRight: any?,
	-- Next selection for gamepad focus
	NextSelectionUp: any?,
	-- Next selection for gamepad focus
	NextSelectionDown: any?,
}

-- Returns a motor that can be used to update the ScrollingFrame CanvasPosition
local function useScrollingFrameMotor(scrollingFrameRef: any, initialValue: number?)
	local motorRef = React.useRef(nil)
	if motorRef.current == nil then
		motorRef.current = Otter.createSingleMotor(initialValue or 0)
	end
	local motor = motorRef.current
	React.useEffect(function()
		motor:onStep(function(newValue)
			if scrollingFrameRef.current ~= nil then
				scrollingFrameRef.current.CanvasPosition = Vector2.new(newValue, 0)
			end
		end)

		return function()
			motor:destroy()
		end
	end, {})

	return motor
end

local function SlotTray(props: Props)
	local slotRefs = RoactGamepad.useRefCache()

	local scrollingFrameRef = React.useRef(nil)
	if props.scrollingFrameRef then
		scrollingFrameRef = props.scrollingFrameRef
	end

	local frameWidth = props.width or DEFAULT_SLOTTRAY_WIDTH

	local motor = useScrollingFrameMotor(scrollingFrameRef, 0)

	local selectedIndex, setSelectedIndex = React.useState(props.defaultSelectedSlotIndex or 1)

	-- Update scroll position whenever selected index changes if it is out of view
	React.useEffect(function()
		local scrollingFrame = scrollingFrameRef.current

		if selectedIndex == 0 or not scrollingFrame then
			return
		end

		local selectedSlot = slotRefs[selectedIndex] and slotRefs[selectedIndex].current
		if not selectedSlot then
			return
		end

		local canvasPos = scrollingFrame.CanvasPosition.X
		local framePosL = scrollingFrame.AbsolutePosition.X
		local framePosR = framePosL + frameWidth

		local selectSlotPosL = selectedSlot.AbsolutePosition.X
		local selectSlotPosR = selectSlotPosL + DEFAULT_SLOT_SIZE

		local offsetR = selectSlotPosR + OUTER_PADDING - framePosR
		local offsetL = selectSlotPosL - OUTER_PADDING - framePosL

		local scrollingFramePositionR = canvasPos + offsetR
		local scrollingFramePositionL = canvasPos + offsetL

		if canvasPos < scrollingFramePositionR then
			motor:setGoal(Otter.spring(scrollingFramePositionR, ANIMATION_SPRING_SETTINGS))
		elseif canvasPos > scrollingFramePositionL then
			motor:setGoal(Otter.spring(scrollingFramePositionL, ANIMATION_SPRING_SETTINGS))
		end
	end, { selectedIndex, frameWidth, slotRefs, scrollingFrameRef, motor })

	local selectIndex = React.useCallback(function(index)
		setSelectedIndex(index)
		props.onChange(index)
	end, { props.onChange })

	local canvasWidth = #props.slots * DEFAULT_SLOT_SIZE + (#props.slots - 1) * INNER_PADDING + OUTER_PADDING * 2

	local style = useStyle()
	local selectionCursor = useSelectionCursor(CursorKind.RoundedSlot)

	assert(validateProps(props))
	local theme = style.Theme

	local slots = Cryo.List.map(props.slots, function(slot, index)
		return React.createElement(Focusable.Frame, {
			key = "Slot" .. tostring(index),
			LayoutOrder = index,
			Size = UDim2.fromOffset(DEFAULT_SLOT_SIZE, DEFAULT_SLOT_SIZE),
			BackgroundTransparency = 1,
			BorderSizePixel = 2,
			ref = slotRefs[index],
			NextSelectionRight = index < #props.slots and slotRefs[index + 1] or nil,
			NextSelectionLeft = index > 1 and slotRefs[index - 1] or nil,
			onFocusGained = function()
				selectIndex(index)
			end,
			SelectionImageObject = selectionCursor,
		}, {
			Slot = React.createElement(TileSlot, {
				isSelected = selectedIndex == index,
				displayText = slot.displayText,
				thumbnail = slot.thumbnail,
				isLoading = slot.isLoading,
				isDisabled = slot.isDisabled,
				index = index,
				onActivated = selectIndex,
			}),
		})
	end)

	local UIListLayout = React.createElement("UIListLayout", {
		key = "Layout",
		VerticalAlignment = Enum.VerticalAlignment.Center,
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, INNER_PADDING),
	})
	table.insert(slots, UIListLayout)

	return React.createElement(Focusable.ScrollingFrame, {
		Size = UDim2.fromOffset(frameWidth, DEFAULT_SLOTTRAY_HEIGHT),
		CanvasSize = UDim2.new(0, canvasWidth, 0, DEFAULT_SLOTTRAY_HEIGHT),
		BackgroundTransparency = 1,
		ScrollBarImageColor3 = theme.PlaceHolder.Color,
		ScrollBarImageTransparency = theme.PlaceHolder.Transparency,
		ScrollBarThickness = 0,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		ElasticBehavior = Enum.ElasticBehavior.Always,
		ScrollingDirection = Enum.ScrollingDirection.X,
		ref = scrollingFrameRef,

		[React.Event.InputBegan] = props.onInputBegan,
		[React.Event.InputEnded] = props.onInputEnded,
		onFocusChanged = props.onFocusChanged,
		inputBindings = props.inputBindings,
		NextSelectionDown = props.NextSelectionDown,
		NextSelectionUp = props.NextSelectionUp,
		NextSelectionLeft = props.NextSelectionLeft,
		NextSelectionRight = props.NextSelectionRight,
		defaultChild = slotRefs[1],
		restorePreviousChildFocus = true,
	}, {
		SlotContainer = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = if props.darken then theme.Overlay.Color else theme.PlaceHolder.Color,
			BackgroundTransparency = if props.darken
				then theme.Overlay.Transparency
				else theme.PlaceHolder.Transparency,
		}, slots),
	})
end

return SlotTray
