local UserInputService = game:GetService("UserInputService")

local SliderRoot = script.Parent
local CoreRoot = SliderRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)
local Gamepad = require(Packages.RoactGamepad)
local ImageSetComponent = require(CoreRoot.ImageSet.ImageSetComponent)
local useCursorByType = require(UIBloxRoot.App.SelectionCursor.useCursorByType)
local CursorType = require(UIBloxRoot.App.SelectionCursor.CursorType)

local lerp = require(UIBloxRoot.Utility.lerp)
local CursorKind = require(UIBloxRoot.App.SelectionImage.CursorKind)
local withSelectionCursorProvider = require(UIBloxRoot.App.SelectionImage.withSelectionCursorProvider)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)

local PLUGINGUI_INPUT_CAPTURER_ZINDEX = 100000
local SLIDER_HEIGHT = 36
local DEFAULT_KNOB_HEIGHT = 44

local DPAD_INITIAL_MOVE_INTERVAL = 0.5
local STICK_INITIAL_MOVE_INTERVAL = 0.2
local STICK_MOVE_DEADZONE = 0.2
local DPAD_SPEED = 8 -- In increments per second
local STICK_SPEED = 12 -- In increments per second

local GenericSlider = Roact.PureComponent:extend("GenericSlider")

GenericSlider.validateProps = t.strictInterface({
	-- Value of the first knob if the slider has two knobs, otherwise value of the only knob
	lowerValue = t.number,
	-- Value of the second knob if the slider has two knobs
	upperValue = t.optional(t.number),
	min = t.number,
	max = t.number,
	stepInterval = t.numberPositive,
	isDisabled = t.optional(t.boolean),

	onValueChanged = t.callback,
	-- Drag start function for first knob if the slider has two knobs, otherwise function for only knob
	onDragStartLower = t.optional(t.callback),
	-- Drag start function of the second knob if the slider has two knobs
	onDragStartUpper = t.optional(t.callback),
	onDragEnd = t.optional(t.callback),

	trackImage = t.union(t.string, t.table),
	-- Allow bindings for style props
	trackColor = t.union(t.Color3, t.table),
	trackTransparency = t.union(t.number, t.table),
	trackSliceCenter = t.optional(t.Rect),

	trackFillImage = t.union(t.string, t.table),
	trackFillColor = t.union(t.Color3, t.table),
	trackFillTransparency = t.union(t.number, t.table),
	trackFillSliceCenter = t.optional(t.Rect),

	knobImage = t.union(t.string, t.table),
	-- Knob color value of the first knob if the slider has two knobs, otherwise value of the only knob
	knobColorLower = t.union(t.Color3, t.table),
	-- Knob color value of the second knob if the slider has two knobs
	knobColorUpper = t.optional(t.union(t.Color3, t.table)),
	knobTransparency = t.union(t.number, t.table),

	knobImagePadding = t.optional(t.numberMin(0)),

	knobShadowImage = t.union(t.string, t.table),
	-- Knob shadow transparency value of the first knob if the slider has two knobs, otherwise value of the only knob
	knobShadowTransparencyLower = t.union(t.number, t.table),
	-- Knob shadow transparency value of the second knob if the slider has two knobs
	knobShadowTransparencyUpper = t.optional(t.union(t.number, t.table)),

	width = t.optional(t.UDim),
	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	layoutOrder = t.optional(t.integer),

	imageButtonRef = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	focusController = t.optional(t.table),

	-- Some guiObject that encompasses the entire area we should be listening to input changed events on
	containerRef = t.optional(t.table),

	customTrack = t.optional(t.table),
	customKnobHeight = t.optional(t.number),
	customKnobBorderColor = t.optional(t.Color3),
	customKnobBorderSize = t.optional(t.number),
	-- Selection cursors
	selectedCursor = if UIBloxConfig.migrateToNewSelectionCursor then t.optional(t.any) else nil,
	unselectedCursor = if UIBloxConfig.migrateToNewSelectionCursor then t.optional(t.any) else nil,
})

GenericSlider.defaultProps = {
	width = UDim.new(1, 0),
	knobImagePadding = 0,
	customKnobBorderColor = Color3.new(0, 0, 0),
}

function GenericSlider:init()
	self.rootRef = self.props.imageButtonRef or Roact.createRef()
	self.lowerKnobRef = Roact.createRef()
	self.upperKnobRef = Roact.createRef()
	self.moveDirection = 0

	self.lowerKnobDrag = false
	self.upperKnobDrag = false
	self.totalMoveTime = 0
	self.isFirstMove = true
	self.unhandledTime = 0

	self.state = {
		lowerKnobIsSelected = false,
		upperKnobIsSelected = false,
	}
end

function GenericSlider:getKnobVisibleHeight()
	if self.props.customKnobHeight then
		local scale = (DEFAULT_KNOB_HEIGHT - (self.props.knobImagePadding * 2)) / DEFAULT_KNOB_HEIGHT
		return scale * self.props.customKnobHeight
	else
		return DEFAULT_KNOB_HEIGHT - (self.props.knobImagePadding * 2)
	end
end

function GenericSlider:getKnobHeight()
	if self.props.customKnobHeight then
		local scaleToActualeSize = DEFAULT_KNOB_HEIGHT / (DEFAULT_KNOB_HEIGHT - (self.props.knobImagePadding * 2))
		local actualSize = scaleToActualeSize * self.props.customKnobHeight
		return actualSize
	else
		return DEFAULT_KNOB_HEIGHT
	end
end

function GenericSlider:onMoveStep(inputObjects, delta)
	if not (self.state.lowerKnobIsSelected or self.state.upperKnobIsSelected) then
		return
	end

	local stickInput = inputObjects[Enum.KeyCode.Thumbstick1].Position
	local usingStick = stickInput.Magnitude > STICK_MOVE_DEADZONE
	local increments = 0
	local initialMoveInterval, moveDirection, speed
	self.totalMoveTime = self.totalMoveTime + delta

	if usingStick then
		moveDirection = stickInput.x > 0 and 1 or -1
		initialMoveInterval = STICK_INITIAL_MOVE_INTERVAL
		speed = STICK_SPEED
	else
		local leftMovement = inputObjects[Enum.KeyCode.DPadLeft].UserInputState == Enum.UserInputState.Begin and -1 or 0
		local rightMovement = inputObjects[Enum.KeyCode.DPadRight].UserInputState == Enum.UserInputState.Begin and 1
			or 0
		moveDirection = leftMovement + rightMovement
		initialMoveInterval = DPAD_INITIAL_MOVE_INTERVAL
		speed = DPAD_SPEED
	end

	if moveDirection ~= 0 then
		-- Process input for the first button press
		if self.isFirstMove then
			self.isFirstMove = false
			self.totalMoveTime = 0
			self.unhandledTime = 0
			increments = 1
			-- Process input if enough time has passed.
		elseif self.totalMoveTime > initialMoveInterval then
			-- How much of delta time that was in the first interval
			local initialIntervalOverlap = math.max(initialMoveInterval - self.totalMoveTime - delta, 0)
			local timeToHandle = delta - initialIntervalOverlap + self.unhandledTime
			increments = math.floor(speed * timeToHandle)

			self.unhandledTime = timeToHandle - increments / speed
		else
			-- Period between first move and subsequent moves
			increments = 0
			self.unhandledTime = 0
		end
	else
		self.totalMoveTime = 0
		self.isFirstMove = true
	end

	if increments > 0 then
		self:processGamepadInput(moveDirection, increments)
	end
end

function GenericSlider:processGamepadInput(polarity, increments)
	if self:hasTwoKnobs() then
		self:processTwoKnobGamepadInput(polarity, increments)
	else
		self:processOneKnobGamepadInput(polarity, increments)
	end
end

function GenericSlider:processTwoKnobGamepadInput(polarity, increments)
	local stepInterval = self.props.stepInterval * polarity
	local lowerValue = self.props.lowerValue
	local upperValue = self.props.upperValue

	--[[
		If the knobs are overlapping, the gamepad may select either knob.
		Set the one that should be selected by the direction of the input.
	]]
	if lowerValue == upperValue and not self.state.processingGamepad then
		if self.state.lowerKnobIsSelected and polarity == 1 and lowerValue ~= self.props.max then
			self:setState({
				lowerKnobIsSelected = false,
				upperKnobIsSelected = true,
				processingGamepad = true,
			})
			self.props.focusController.moveFocusTo(self.upperKnobRef)
		elseif self.state.upperKnobIsSelected and polarity == -1 and upperValue ~= self.props.min then
			self:setState({
				lowerKnobIsSelected = true,
				upperKnobIsSelected = false,
				processingGamepad = true,
			})
			self.props.focusController.moveFocusTo(self.lowerKnobRef)
		end
	elseif not self.state.processingGamepad then
		self:setState({
			processingGamepad = true,
		})
	end

	if self.state.lowerKnobIsSelected then
		local steppedValue =
			math.max(math.min(lowerValue + (stepInterval * increments), self.props.max), self.props.min)
		if steppedValue <= upperValue then
			lowerValue = steppedValue
		else
			lowerValue = upperValue
		end
	elseif self.state.upperKnobIsSelected then
		local steppedValue =
			math.max(math.min(upperValue + (stepInterval * increments), self.props.max), self.props.min)
		if steppedValue >= lowerValue then
			upperValue = steppedValue
		else
			upperValue = lowerValue
		end
	end

	if upperValue ~= self.props.upperValue or lowerValue ~= self.props.lowerValue then
		self.props.onValueChanged(lowerValue, upperValue)
	end
end

function GenericSlider:processOneKnobGamepadInput(polarity, increments)
	local stepInterval = self.props.stepInterval * polarity
	local lowerValue = self.props.lowerValue

	if self.state.lowerKnobIsSelected then
		lowerValue = math.max(math.min(lowerValue + (stepInterval * increments), self.props.max), self.props.min)
	end

	if lowerValue ~= self.props.lowerValue then
		self.props.onValueChanged(lowerValue)
	end
end

function GenericSlider:renderTrack(fillSize, isTwoKnobs, fillPercentLower)
	if self.props.customTrack then
		return self.props.customTrack
	else
		return Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			ImageColor3 = self.props.trackColor,
			ImageTransparency = self.props.trackTransparency,
			Image = self.props.trackImage,
			Size = UDim2.new(1, 0, 0, 4),
			Position = UDim2.fromScale(0.5, 0.5),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = self.props.trackSliceCenter,
		}, {
			TrackFill = Roact.createElement(ImageSetComponent.Label, {
				BackgroundTransparency = 1,
				ImageColor3 = self.props.trackFillColor,
				ImageTransparency = self.props.trackFillTransparency,
				Image = self.props.trackFillImage,
				Size = fillSize,
				Position = isTwoKnobs and UDim2.new(fillPercentLower, 0, 0, 0) or UDim2.new(0, 0, 0, 0),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = self.props.trackFillSliceCenter,
			}),
		})
	end
end

function GenericSlider:wrapKnobWithBorder(knob, knobPosition)
	local size = if self.props.customKnobHeight then self.props.customKnobHeight else self:getKnobVisibleHeight()

	return Roact.createElement("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.fromOffset(size, size),
		Position = knobPosition,
		BackgroundColor3 = self.props.customKnobBorderColor,
		ZIndex = 3,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		}),
		KnobContent = knob,
	})
end

function GenericSlider:renderUpperKnob(knobPositionUpper, knobIsSelected, isTwoKnobs, getSelectionCursor)
	if not isTwoKnobs then
		return nil
	end

	local adjustedKnobHeight = self:getKnobHeight()
	local knobPosition = knobPositionUpper
	if self.props.customKnobBorderSize and self.props.customKnobBorderSize > 0 then
		adjustedKnobHeight = adjustedKnobHeight - 2 * (self.props.customKnobBorderSize + 2)
		knobPosition = UDim2.fromScale(0.5, 0.5)
	end

	local upperKnob = Roact.createElement(Gamepad.Focusable[ImageSetComponent.Button], {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		ImageColor3 = self.props.knobColorUpper,
		ImageTransparency = self.props.knobTransparency,
		Image = self.props.knobImage,
		Size = UDim2.fromOffset(adjustedKnobHeight, adjustedKnobHeight),
		Position = knobPosition,
		ZIndex = 3,

		NextSelectionLeft = (not knobIsSelected and self.props.upperValue ~= self.props.lowerValue)
				and self.lowerKnobRef
			or nil,
		NextSelectionRight = knobIsSelected and self.upperKnobRef or nil,
		NextSelectionUp = knobIsSelected and self.upperKnobRef or nil,
		NextSelectionDown = knobIsSelected and self.upperKnobRef or nil,
		SelectionImageObject = knobIsSelected and (if UIBloxConfig.migrateToNewSelectionCursor
			then self.props.selectedCursor
			else getSelectionCursor(CursorKind.SelectedKnob)) or (if UIBloxConfig.migrateToNewSelectionCursor
			then self.props.unselectedCursor
			else getSelectionCursor(CursorKind.UnselectedKnob)),
		[Roact.Ref] = self.upperKnobRef,
		[Roact.Event.InputBegan] = function(rbx, inputObject)
			if self.props.isDisabled then
				return
			end

			self:onInputBegan(inputObject, --[[isKnob =]] true)
		end,
		inputBindings = {
			OnMoveStep = Gamepad.Input.onMoveStep(function(inputObjects, delta)
				self:onMoveStep(inputObjects, delta)
			end),
			SelectUpperKnob = Gamepad.Input.onBegin(Enum.KeyCode.ButtonA, function()
				self:setState(function(state)
					return {
						upperKnobIsSelected = not state.upperKnobIsSelected,
						processingGamepad = false,
					}
				end)
			end),
			UnselectUpperKnob = knobIsSelected and Gamepad.Input.onBegin(Enum.KeyCode.ButtonB, function()
				self:setState({
					upperKnobIsSelected = false,
					processingGamepad = false,
				})
			end) or nil,
		},
	})

	if self.props.customKnobBorderSize and self.props.customKnobBorderSize > 0 then
		return self:wrapKnobWithBorder(upperKnob, knobPositionUpper)
	else
		return upperKnob
	end
end

function GenericSlider:renderLowerKnob(knobPositionLower, knobIsSelected, isTwoKnobs, getSelectionCursor)
	local adjustedKnobHeight = self:getKnobHeight()
	local knobPosition = knobPositionLower
	if self.props.customKnobBorderSize and self.props.customKnobBorderSize > 0 then
		adjustedKnobHeight = adjustedKnobHeight - 2 * (self.props.customKnobBorderSize + 2)
		knobPosition = UDim2.fromScale(0.5, 0.5)
	end

	local lowerKnob = Roact.createElement(Gamepad.Focusable[ImageSetComponent.Button], {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		ImageColor3 = self.props.knobColorLower,
		ImageTransparency = self.props.knobTransparency,
		Image = self.props.knobImage,
		Size = UDim2.fromOffset(adjustedKnobHeight, adjustedKnobHeight),
		Position = knobPosition,
		ZIndex = 3,
		inputBindings = {
			OnMoveStep = Gamepad.Input.onMoveStep(function(inputObjects, delta)
				self:onMoveStep(inputObjects, delta)
			end),
			SelectLowerKnob = Gamepad.Input.onBegin(Enum.KeyCode.ButtonA, function()
				self:setState(function(state)
					return {
						lowerKnobIsSelected = not state.lowerKnobIsSelected,
						processingGamepad = false,
					}
				end)
			end),
			UnselectLowerKnob = knobIsSelected and Gamepad.Input.onBegin(Enum.KeyCode.ButtonB, function()
				self:setState({
					lowerKnobIsSelected = false,
					processingGamepad = false,
				})
			end) or nil,
		},
		NextSelectionLeft = knobIsSelected and self.lowerKnobRef or nil,
		NextSelectionRight = (isTwoKnobs and not knobIsSelected and self.props.upperValue ~= self.props.lowerValue)
				and self.upperKnobRef
			or nil,
		NextSelectionUp = knobIsSelected and self.lowerKnobRef or nil,
		NextSelectionDown = knobIsSelected and self.lowerKnobRef or nil,
		SelectionImageObject = knobIsSelected and (if UIBloxConfig.migrateToNewSelectionCursor
			then self.props.selectedCursor
			else getSelectionCursor(CursorKind.SelectedKnob)) or (if UIBloxConfig.migrateToNewSelectionCursor
			then self.props.unselectedCursor
			else getSelectionCursor(CursorKind.UnselectedKnob)),
		[Roact.Ref] = self.lowerKnobRef,
		[Roact.Event.InputBegan] = function(rbx, inputObject)
			if self.props.isDisabled then
				return
			end

			self:onInputBegan(inputObject, --[[isKnob =]] true)
		end,
	})

	if self.props.customKnobBorderSize and self.props.customKnobBorderSize > 0 then
		return self:wrapKnobWithBorder(lowerKnob, knobPositionLower)
	else
		return lowerKnob
	end
end

function GenericSlider:renderKnobShadow(transparency, position)
	return Roact.createElement(ImageSetComponent.Label, {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		ImageTransparency = transparency,
		Image = self.props.knobShadowImage,
		Size = UDim2.fromOffset(self:getKnobHeight(), self:getKnobHeight()),
		Position = position,
		ZIndex = 2,
	})
end

function GenericSlider:render()
	local knobIsSelected = self.state.lowerKnobIsSelected or self.state.upperKnobIsSelected
	local isTwoKnobs = self:hasTwoKnobs()
	local fillPercentLower = (self.props.lowerValue - self.props.min) / (self.props.max - self.props.min)
	local fillPercentUpper = isTwoKnobs and (self.props.upperValue - self.props.min) / (self.props.max - self.props.min)
		or nil
	local visibleSize = self:getKnobVisibleHeight()
	local positionOffsetLower = lerp(visibleSize / 2, -visibleSize / 2, fillPercentLower)
	local positionOffsetUpper = isTwoKnobs and lerp(visibleSize / 2, -visibleSize / 2, fillPercentUpper) or nil
	local knobPositionLower = UDim2.new(fillPercentLower, positionOffsetLower, 0.5, 0)
	local knobPositionUpper = isTwoKnobs and UDim2.new(fillPercentUpper, positionOffsetUpper, 0.5, 0) or nil
	local fillSize = isTwoKnobs and UDim2.fromScale(fillPercentUpper - fillPercentLower, 1)
		or UDim2.fromScale(fillPercentLower, 1)
	local selectedKnob = self.state.lowerKnobIsSelected or self.state.upperKnobIsSelected

	return withSelectionCursorProvider(function(getSelectionCursor)
		return Roact.createElement(Gamepad.Focusable[ImageSetComponent.Button], {
			BackgroundTransparency = 1,
			AnchorPoint = self.props.anchorPoint,
			Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, SLIDER_HEIGHT),
			LayoutOrder = self.props.layoutOrder,
			Position = self.props.position,
			[Roact.Event.InputBegan] = function(rbx, inputObject)
				if self.props.isDisabled then
					return
				end

				self:onInputBegan(inputObject, --[[isKnob =]] false)
			end,
			[Roact.Ref] = self.rootRef,

			-- If Slider bar has an ancestor with NextSelectionRight/Left defined, we won't be able to use
			-- gamepad to move thumb right or left: we need to override these values when knob is selected.
			NextSelectionLeft = selectedKnob and self.rootRef or nil,
			NextSelectionRight = selectedKnob and self.rootRef or nil,

			NextSelectionUp = not selectedKnob and self.props.NextSelectionUp or self.rootRef,
			NextSelectionDown = not selectedKnob and self.props.NextSelectionDown or self.rootRef,
			defaultChild = (self.props.upperValue ~= self.props.min and self.lowerKnobRef or self.upperKnobRef) or nil,
			onFocusLost = function()
				if self.state.lowerKnobIsSelected or self.state.upperKnobIsSelected then
					self:setState({
						lowerKnobIsSelected = false,
						upperKnobIsSelected = false,
					})
				end
			end,
		}, {
			Track = self:renderTrack(fillSize, isTwoKnobs, fillPercentLower),
			LowerKnob = self:renderLowerKnob(knobPositionLower, knobIsSelected, isTwoKnobs, getSelectionCursor),
			LowerKnobShadow = self:renderKnobShadow(self.props.knobShadowTransparencyLower, knobPositionLower),
			UpperKnob = self:renderUpperKnob(knobPositionUpper, knobIsSelected, isTwoKnobs, getSelectionCursor),
			UpperKnobShadow = isTwoKnobs
					and self:renderKnobShadow(self.props.knobShadowTransparencyUpper, knobPositionUpper)
				or nil,
		})
	end)
end

function GenericSlider:didMount()
	local root = self.rootRef.current

	-- When didMount is first called we might be still orphaned; we need to wait
	-- until we're in the DataModel before checking whether we can use
	-- UserInputService. Using a connection on AncestryChanged means we won't
	-- yield a frame to figure this out.
	local ancestryChangedConnection
	local function checkAncestry()
		if not root:IsDescendantOf(game) then
			return
		end

		ancestryChangedConnection:Disconnect()

		-- If we're mounted in a PluginGui, we cannot use UserInputService and we
		-- need to resort to less clean methods to capture mouse movements.
		self.canUseUserInputService = root:FindFirstAncestorWhichIsA("PluginGui") == nil
	end
	ancestryChangedConnection = root.AncestryChanged:Connect(checkAncestry)

	-- On the off chance that we're already properly attached to the data model,
	-- we need to make sure to update our state accordingly
	checkAncestry()
end

function GenericSlider:didUpdate(prevProps, prevState)
	if self.props.disabled then
		self:stopListeningForDrag()
	end
	local lowerKnobDeselected = prevState.lowerKnobIsSelected and not self.state.lowerKnobIsSelected
	local upperKnobDeselected = prevState.upperKnobIsSelected and not self.state.upperKnobIsSelected
	if self.props.onDragEnd ~= nil and (lowerKnobDeselected or upperKnobDeselected) then
		self.props.onDragEnd()
	elseif
		self.props.onDragStartLower ~= nil
		and not prevState.lowerKnobIsSelected
		and self.state.lowerKnobIsSelected
	then
		self.props.onDragStartLower()
	elseif
		self.props.onDragStartUpper ~= nil
		and not prevState.upperKnobIsSelected
		and self.state.upperKnobIsSelected
	then
		self.props.onDragStartUpper()
	end
end

function GenericSlider:willUnmount()
	self:stopListeningForDrag()
end

function GenericSlider:onInputBegan(inputObject, isKnob)
	if self.props.disabled then
		return
	end

	if inputObject.UserInputState ~= Enum.UserInputState.Begin then
		return
	end

	local inputType = inputObject.UserInputType

	if inputType ~= Enum.UserInputType.MouseButton1 and inputType ~= Enum.UserInputType.Touch then
		return
	end

	if inputType == Enum.UserInputType.Touch and not isKnob then
		return
	end

	local position = inputObject.Position.X
	self:processDrag(position)
	self:startListeningForDrag()
end

function GenericSlider:startListeningForDrag()
	local root = self.rootRef.current

	if root == nil then
		return
	end

	if self.dragging then
		return
	end

	if self.canUseUserInputService then
		-- This is the nice clean path, where we can just use UserInputService to
		-- capture the mouse movements. We will use this path in all production
		-- cases (desktop, mobile, console, etc.)
		local inputChangedEvent = function(inputObject)
			-- We don't check whether the input was processed by something else
			-- because we don't care about it: when we move the mouse, we want to
			-- move the slider to match the movement, regardless of whether the
			-- mouse movement was processed by something else.

			if not self.dragging then
				return
			end

			local inputType = inputObject.UserInputType

			if inputType ~= Enum.UserInputType.MouseMovement and inputType ~= Enum.UserInputType.Touch then
				return
			end

			if inputObject.UserInputState ~= Enum.UserInputState.Change then
				return
			end

			self:processDrag(inputObject.Position.X)
		end

		if self.props.containerRef then
			self.moveConnection = self.props.containerRef.current.InputChanged:Connect(inputChangedEvent)
		else
			self.moveConnection = UserInputService.InputChanged:Connect(inputChangedEvent)
		end

		self.releaseConnection = UserInputService.InputEnded:Connect(function(inputObject)
			local inputType = inputObject.UserInputType
			if inputType ~= Enum.UserInputType.MouseButton1 and inputType ~= Enum.UserInputType.Touch then
				return
			end

			-- Stop listening for drag events before processing the input, since
			-- that involves a callback to the user of the slider.
			-- Only process one knob slider input because the two knob slider
			-- should not move if it is not being dragged (since the track is not clickable)
			-- and, therefore, should not process if the drag is ending
			self:stopListeningForDrag()

			-- Only process final drag like this if we're using UserInputService connections
			if not self.props.containerRef then
				self:processOneKnobDrag(inputObject.Position.X)
			end
		end)

		-- If the window loses focus the user can release the mouse and we won't
		-- know about it, so the slider could get "stuck" to the mouse, even
		-- though the user has let go of the mouse button. To resolve this, we
		-- stop listening to events when we lose focus.
		self.focusLostConnection = UserInputService.WindowFocusReleased:Connect(function()
			self:stopListeningForDrag()
		end)
	else
		-- This is the ugly, scary path, where UserInputService isn't available to
		-- us and we have to cheat. In a PluginGui, UserInputService doesn't work;
		-- its events only fire in the main viewport. The only way, currently, to
		-- capture input like this is by creating a fake button at the top level
		-- so that it overlays everything, then listening to input events on that.
		-- This process is of less importance than the UserInputService connection
		-- above, because it will only be run when the slider is used in a
		-- Horsecat story or a similar environment.
		local pluginGui = root:FindFirstAncestorWhichIsA("PluginGui")

		local inputCapturer = Instance.new("ImageButton")
		inputCapturer.BackgroundTransparency = 1
		inputCapturer.Image = ""
		inputCapturer.Name = "SliderPluginGuiInputCapturer"
		inputCapturer.Size = UDim2.new(1, 0, 1, 0)
		inputCapturer.ZIndex = PLUGINGUI_INPUT_CAPTURER_ZINDEX
		self.moveConnection = inputCapturer.MouseMoved:Connect(function(x)
			self:processDrag(x)
		end)

		self.releaseConnection = inputCapturer.MouseButton1Up:Connect(function(x)
			self:stopListeningForDrag()
			self:processOneKnobDrag(x)
		end)

		self.focusLostConnection = inputCapturer.MouseLeave:Connect(function(x)
			self:stopListeningForDrag()
			self:processOneKnobDrag(x)
		end)

		inputCapturer.Parent = pluginGui
		self.inputCapturerButton = inputCapturer
	end

	self.dragging = true

	if self.lowerKnobDrag and self.props.onDragStartLower ~= nil then
		self.props.onDragStartLower()
	end

	if self.upperKnobDrag and self.props.onDragStartUpper ~= nil then
		self.props.onDragStartUpper()
	end
end

function GenericSlider:getSteppedValue(x)
	local root = self.rootRef.current
	if root == nil then
		return 0
	end

	local min = self.props.min
	local max = self.props.max
	local stepInterval = self.props.stepInterval

	local absoluteWidth = root.AbsoluteSize.X
	local relativeX = x - root.AbsolutePosition.X
	local clampedX = math.clamp(relativeX, 0, absoluteWidth)
	local fractional = clampedX / absoluteWidth
	local unsteppedValue = (fractional * (max - min)) + min
	return math.floor(unsteppedValue / stepInterval + 0.5) * stepInterval
end

function GenericSlider:processDrag(x)
	if self:hasTwoKnobs() then
		self:processTwoKnobDrag(x)
	else
		self:processOneKnobDrag(x)
	end
end

function GenericSlider:processOneKnobDrag(x)
	if self:hasTwoKnobs() then
		return
	end

	local steppedValue = self:getSteppedValue(x)
	self.lowerKnobDrag = true

	if steppedValue ~= self.props.lowerValue then
		self.props.onValueChanged(steppedValue)
	end
end

function GenericSlider:processTwoKnobDrag(x)
	local steppedValue = self:getSteppedValue(x)
	local lowerValue = self.props.lowerValue
	local upperValue = self.props.upperValue

	if not self.lowerKnobDrag and not self.upperKnobDrag then
		-- Set which knob is being dragged (both if they are at the same position)
		if steppedValue == lowerValue then
			self.lowerKnobDrag = true
		end
		if steppedValue == upperValue then
			self.upperKnobDrag = true
		end
	elseif self.lowerKnobDrag and self.upperKnobDrag then
		-- Decides which knob to actually drag and change the value of when both are atop one another
		if steppedValue - self.props.stepInterval >= upperValue then
			self.upperKnobDrag = true
			self.lowerKnobDrag = false
			upperValue = steppedValue
		elseif steppedValue + self.props.stepInterval <= lowerValue then
			self.upperKnobDrag = false
			self.lowerKnobDrag = true
			lowerValue = steppedValue
		end
	elseif self.lowerKnobDrag then
		-- Drag the left knob (but not sofar as to surpass the right knob)
		if steppedValue <= upperValue then
			lowerValue = steppedValue
		end
	elseif self.upperKnobDrag then
		-- Drag the right knob (but not sofar as to surpass the left knob)
		if steppedValue >= lowerValue then
			upperValue = steppedValue
		end
	end

	if upperValue ~= self.props.upperValue or lowerValue ~= self.props.lowerValue then
		self.props.onValueChanged(lowerValue, upperValue)
	end
end

function GenericSlider:stopListeningForDrag()
	if self.moveConnection ~= nil then
		self.moveConnection:Disconnect()
		self.moveConnection = nil
	end

	if self.releaseConnection ~= nil then
		self.releaseConnection:Disconnect()
		self.releaseConnection = nil
	end

	if self.focusLostConnection ~= nil then
		self.focusLostConnection:Disconnect()
		self.focusLostConnection = nil
	end

	if self.inputCapturerButton ~= nil then
		self.inputCapturerButton:Destroy()
		self.inputCapturerButton = nil
	end

	self.dragging = false
	self.lowerKnobDrag = false
	self.upperKnobDrag = false

	if self.props.onDragEnd ~= nil then
		self.props.onDragEnd()
	end
end

function GenericSlider:hasTwoKnobs()
	return self.props.upperValue ~= nil
end

return Roact.forwardRef(function(props, ref)
	local selectedCursor = useCursorByType(CursorType.SelectedKnob)
	local unselectedCursor = useCursorByType(CursorType.UnselectedKnob)
	if UIBloxConfig.migrateToNewSelectionCursor then
		props = Cryo.Dictionary.join({
			selectedCursor = selectedCursor,
			unselectedCursor = unselectedCursor,
		}, props)
	end
	return Roact.createElement(
		GenericSlider,
		Cryo.Dictionary.join(props, {
			imageButtonRef = ref,
		})
	)
end)
