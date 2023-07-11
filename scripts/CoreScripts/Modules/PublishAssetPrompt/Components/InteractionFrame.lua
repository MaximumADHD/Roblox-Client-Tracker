--!nonstrict
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Cryo = require(CorePackages.Cryo)
local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local PAN_EXIT_DELAY = 0.1
local DOUBLE_TAP_MAX_INTERVAL = 0.25
local DOUBLE_TAP_MAX_DISTANCE = 30
local PINCH_DELTA_TO_ZOOM_DELTA = -0.05

local function splitInputType(inputObject)
	local isTouch = inputObject.UserInputType == Enum.UserInputType.Touch
	local isMouse1 = inputObject.UserInputType == Enum.UserInputType.MouseButton1
	local isMouse2 = inputObject.UserInputType == Enum.UserInputType.MouseButton2
	local isMouse = isMouse1 or isMouse2

	return isTouch, isMouse, isMouse1, isMouse2
end

local InteractionFrame = Roact.PureComponent:extend("InteractionFrame")

InteractionFrame.defaultProps = {
	Visible = true,
}

InteractionFrame.validateProps = t.interface({
	-- Interaction callbacks
	panByPixels = t.callback,
	rotateByPixels = t.callback,
	setAngularVelocityByPixels = t.callback,
	zoomToPoint = t.callback,
	doubleTap = t.optional(t.callback),
	Size = t.optional(t.UDim2),
	Position = t.optional(t.UDim2),
	Visible = t.optional(t.boolean),
	ZIndex = t.optional(t.number),
})

function InteractionFrame:disconnectEvents()
	self.inputChangedConnection:Disconnect()
	self.inputEndedConnection:Disconnect()
	self.renderSteppedConnection:Disconnect()
	self.inputChangedConnection = nil
	self.inputEndedConnection = nil
	self.renderSteppedConnection = nil
end

function InteractionFrame:getActiveInput(inputObject)
	local isTouch, isMouseButton = splitInputType(inputObject)
	local isMouseMovement = inputObject.UserInputType == Enum.UserInputType.MouseMovement
	local isMouse = isMouseMovement or isMouseButton

	if not (isMouse or isTouch) then
		return
	end

	local activeInput
	if isMouse then
		activeInput = self.activeMouseInput
	elseif isTouch then
		activeInput = self.activeTouchInputs[inputObject]
	end

	return activeInput
end

function InteractionFrame:removeActivePointerInput(inputObject, isMouse)
	if isMouse then
		local allMouseButtonsReleased = not (
			UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
			or UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
		)

		if allMouseButtonsReleased then
			self.activeMouseInput = nil
		else
			return
		end
	else
		self.activeTouchInputs[inputObject] = nil
		self.numActiveTouchInputs = self.numActiveTouchInputs - 1
	end
	self.numActiveInputs = self.numActiveInputs - 1

	if self.numActiveInputs == 0 then
		self:disconnectEvents()
	end
end

function InteractionFrame:handleDoubleTap(inputObject, time)
	if self.lastPrimaryPointerInputBeganPosition then
		local deltaPosition = self.lastPrimaryPointerInputBeganPosition - inputObject.Position
		local deltaTime = time - self.lastPrimaryPointerInputBeganTime

		if
			self.props.doubleTap
			and deltaPosition.Magnitude < DOUBLE_TAP_MAX_DISTANCE
			and deltaTime < DOUBLE_TAP_MAX_INTERVAL
		then
			self.props.doubleTap()
		end
	end

	self.lastPrimaryPointerInputBeganPosition = inputObject.Position
	self.lastPrimaryPointerInputBeganTime = time
end

function InteractionFrame:addActivePointerInput(inputObject, isMouse, time)
	if self:getActiveInput(inputObject) then
		return
	end

	local activeInput = {
		lastPosition = inputObject.Position,
		lastTime = time,
	}

	if isMouse then
		self.activeMouseInput = activeInput
	else
		self.activeTouchInputs[inputObject] = Cryo.Dictionary.join(activeInput, {
			lastDeltaTime = 0,
			lastDeltaPosition = Vector3.new(0, 0, 0),
		})
		self.numActiveTouchInputs = self.numActiveTouchInputs + 1
	end
	self.numActiveInputs = self.numActiveInputs + 1

	if self.numActiveInputs == 1 then
		self.props.setAngularVelocityByPixels(0)
		self.inputChangedConnection = UserInputService.InputChanged:Connect(self.onInputChanged)
		self.inputEndedConnection = UserInputService.InputEnded:Connect(self.onInputEnded)
		self.renderSteppedConnection = RunService.RenderStepped:Connect(self.setInputNotChanged)
	end
end

function InteractionFrame:init()
	self.inputChangedConnection = nil
	self.inputEndedConnection = nil

	self.lastPinchDistance = 1
	self.lastPanTime = 0
	self.lastPrimaryPointerInputBeganTime = 0
	self.lastPrimaryPointerInputBeganPosition = nil

	self.activeTouchInputs = {}
	self.numActiveTouchInputs = 0
	self.activeMouseInput = nil

	self.numActiveInputs = 0

	self.handleScroll = function(rbx, inputObject)
		if inputObject.UserInputType == Enum.UserInputType.MouseWheel then
			local direction = -inputObject.Position.Z
			self.props.zoomToPoint(direction, UserInputService:GetMouseLocation())
		end
	end

	self.setInputNotChanged = function(deltaTime)
		for _, activeInput in self.activeTouchInputs do
			activeInput.changedThisFrame = false
		end
	end

	self.onInputChanged = function(inputObject, gameProcessedEvent)
		local isMouseMovement = inputObject.UserInputType == Enum.UserInputType.MouseMovement
		local isTouch = inputObject.UserInputType == Enum.UserInputType.Touch
		local isValidInputType = isMouseMovement or isTouch

		if not isValidInputType then
			return
		end

		local activeInput = self:getActiveInput(inputObject)
		if not activeInput then
			return
		end

		local time = tick()
		local deltaTime = time - activeInput.lastTime
		local deltaPosition = inputObject.Position - activeInput.lastPosition
		local deltaPosition2D = Vector2.new(deltaPosition.X, deltaPosition.Y) * Vector2.new(-1, 1)

		local mouse1Pressed = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
		local mouse2Pressed = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)

		-- Handle rotation
		local notPanning = time - self.lastPanTime > PAN_EXIT_DELAY
		if (isMouseMovement and mouse1Pressed or isTouch and self.numActiveTouchInputs == 1) and notPanning then
			self.props.rotateByPixels(-deltaPosition2D)
		end

		-- Handle panning
		if isMouseMovement and mouse2Pressed or isTouch and self.numActiveTouchInputs == 2 then
			local averageDeltaPosition2D = deltaPosition2D / self.numActiveInputs
			self.props.panByPixels(averageDeltaPosition2D)
			self.lastPanTime = time
		end

		-- Update activeInput fields
		activeInput.lastPosition = inputObject.Position
		activeInput.lastTime = time

		if isTouch then
			-- Only touch inputs can make use of stored deltas
			if activeInput.changedThisFrame then
				activeInput.lastDeltaPosition = deltaPosition + activeInput.lastDeltaPosition
				activeInput.lastDeltaTime = deltaTime + activeInput.lastDeltaTime
			else
				activeInput.lastDeltaPosition = deltaPosition
				activeInput.lastDeltaTime = deltaTime
				activeInput.changedThisFrame = true
			end
		end
	end

	self.onInputEnded = function(inputObject, gameProcessedEvent)
		local isTouch, isMouse, isMouse1 = splitInputType(inputObject)
		local isValidInputType = isTouch or isMouse

		if not isValidInputType then
			return
		end

		local activeInput = self:getActiveInput(inputObject)
		if not activeInput then
			return
		end

		-- Initiate character spin if input released during rotation
		local time = tick()
		local timeSinceLastPan = time - self.lastPanTime
		local touchMovedThisFrame = isTouch and activeInput.changedThisFrame
		local isRotation = self.numActiveInputs == 1 and timeSinceLastPan > PAN_EXIT_DELAY

		if (touchMovedThisFrame or isMouse1) and isRotation then
			local deltaPosition
			local deltaTime
			if isMouse1 then
				-- Mouse button events occur before mouse movement events, so the mouse activeInput will be from last frame
				-- Thus for mouse events, we must compute the deltas here
				deltaPosition = inputObject.Position - activeInput.lastPosition
				deltaTime = time - activeInput.lastTime
			else
				deltaPosition = activeInput.lastDeltaPosition
				deltaTime = activeInput.lastDeltaTime
			end

			self.props.setAngularVelocityByPixels(deltaPosition.X / deltaTime)
		end

		self:removeActivePointerInput(inputObject, isMouse)
	end

	self.onInputBegan = function(rbx, inputObject)
		self.handleScroll(rbx, inputObject)

		local isTouch, isMouse, isMouse1 = splitInputType(inputObject)
		local isValidInputType = isTouch or isMouse

		if not isValidInputType then
			return
		end

		local isPrimaryPointer = isTouch or isMouse1
		local time = tick()

		if isPrimaryPointer then
			self:handleDoubleTap(inputObject, time)
		end

		self:addActivePointerInput(inputObject, isMouse, time)
	end

	self.onTouchPinch = function(rbx, touchPositions, scale, velocity, state)
		if touchPositions[2] == nil then
			return
		end

		if state == Enum.UserInputState.Begin then
			self.lastPinchDistance = (touchPositions[1] - touchPositions[2]).Magnitude
			return
		end

		local pinchDistance = (touchPositions[1] - touchPositions[2]).Magnitude
		local deltaPinch = pinchDistance - self.lastPinchDistance
		self.lastPinchDistance = pinchDistance
		self.props.zoomToPoint(deltaPinch * PINCH_DELTA_TO_ZOOM_DELTA, (touchPositions[1] + touchPositions[2]) / 2)
	end
end

function InteractionFrame:willUnmount()
	if self.inputChangedConnection then
		self:disconnectEvents()
	end
end

function InteractionFrame:render()
	local visible = self.props.Visible

	local size = self.props.Size or UDim2.new(1, 0, 1, 0)
	local position = self.props.Position
	local zIndex = self.props.ZIndex

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		Position = position,
		ZIndex = zIndex,
		Visible = visible,
		-- Active prop must be true so the TouchPinch input does not sink. Otherwise, the event will not fire.
		Active = true,

		[Roact.Event.InputBegan] = self.onInputBegan,
		[Roact.Event.InputChanged] = self.handleScroll,
		[Roact.Event.TouchPinch] = self.onTouchPinch,
	}, self.props[Roact.Children])
end

return InteractionFrame
