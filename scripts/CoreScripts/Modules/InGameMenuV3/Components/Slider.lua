--!nonstrict
local UserInputService = game:GetService("UserInputService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local RunService = game:GetService("RunService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Otter = InGameMenuDependencies.Otter

local FocusHandler = require(script.Parent.Connection.FocusHandler)

local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent

local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local AssetImage = require(script.Parent.AssetImage)

local ImageSetButton = UIBlox.Core.ImageSet.Button

local DPAD_INITIAL_MOVE_INTERVAL = 0.5
local STICK_INITIAL_MOVE_INTERVAL = 0.2
local STICK_MOVE_DEADZONE = 0.2
local DPAD_SPEED = 8 -- In increments per second
local STICK_SPEED = 12 -- In increments per second

local PLUGINGUI_INPUT_CAPTURER_ZINDEX = 100000
local SLIDER_HEIGHT = 36
local KNOB_HEIGHT = 42
local HOVER_SIZE_OFF = 0
local HOVER_SIZE_ON = KNOB_HEIGHT
local HOVER_SPRING_PARAMETERS = {
	frequency = 5,
}

local function isGamepad(inputType)
	return inputType == Enum.UserInputType.Gamepad1
		or inputType == Enum.UserInputType.Gamepad2
		or inputType == Enum.UserInputType.Gamepad3
		or inputType == Enum.UserInputType.Gamepad4
		or inputType == Enum.UserInputType.Gamepad5
		or inputType == Enum.UserInputType.Gamepad6
		or inputType == Enum.UserInputType.Gamepad7
		or inputType == Enum.UserInputType.Gamepad8
end

-- create an inputObjects table which maps input KeyCodes to info about the input itself
local gamepads = {}
local function getInputObjects()
	local lastInputType = UserInputService:GetLastInputType()

	if not isGamepad(lastInputType) then
		return nil
	end

	if gamepads[lastInputType] == nil then
		local _inputObjects = UserInputService:GetGamepadState(lastInputType)
		local inputObjects = {}

		for _, input in ipairs(_inputObjects) do
			inputObjects[input.KeyCode] = input
		end

		gamepads[lastInputType] = inputObjects
	end

	return gamepads[lastInputType]
end

local Slider = Roact.PureComponent:extend("Slider")
Slider.validateProps = t.intersection(t.strictInterface({
	-- The minimum value of the slider.
	min = t.number,
	-- The maximum value of the slider.
	max = t.number,
	-- How big the chunks that the slider bar is split up into are.
	stepInterval = t.numberPositive,
	-- The current value of the slider.
	value = t.number,
	-- A callback function that is invoked whenever the slider value changes.
	valueChanged = t.callback,
	-- Whether the slider is enabled or not.
	disabled = t.optional(t.boolean),

	-- The width of the slider. The slider's height is fixed, but the width can
	-- be adjusted. Defaults to UDim.new(1, 0).
	width = t.optional(t.UDim),
	-- The anchor point of the slider.
	AnchorPoint = t.optional(t.Vector2),
	-- The layout order of the slider.
	LayoutOrder = t.optional(t.integer),
	-- The position of the slider.
	Position = t.optional(t.UDim2),
	-- Whether slider can capture gamepad selection focus (false if dialog is open, for example)
	canCaptureFocus = t.optional(t.boolean),
	-- isMenuOpen for when menu is closed in middle of entryMode
	isMenuOpen = t.optional(t.boolean),
	-- Callback for when slider dot selection lost
	onSelectionLost = t.optional(t.callback),
	-- Callback for when slider dot selection gained
	onSelectionGained = t.optional(t.callback),
	-- Instance to set as next selection right of slider dot
	NextSelectionRight = t.optional(t.table),
	-- Roact.Ref to the slider dot
	sliderDotRef = t.optional(t.union(t.callback, t.table)),

}), function(props)
	if props.min > props.max then
		return false, "min must be less than or equal to max"
	end

	if props.value > props.max or props.value < props.min then
		return false, "value must be within min and max"
	end

	return true
end)

Slider.defaultProps = {
	width = UDim.new(1, 0),
	disabled = false,
}

function Slider:init()
	self.state = {
		dragging = false,
		hovering = false,
		entryMode = false,
	}

	self.totalMoveTime = 0
	self.isFirstMove = true
	self.unhandledTime = 0

	self.rootButtonRef = Roact.createRef()
	self.hoverRef = Roact.createRef()

	self.hoverMotor = Otter.createSingleMotor(HOVER_SIZE_OFF)
	self.hoverMotor:onStep(function(value)
		-- TODO(lbrown): Replace this logic with a binding in Roact 1.x
		local hoverCircle = self.hoverRef.current
		if hoverCircle ~= nil then
			hoverCircle.Size = UDim2.new(0, value, 0, value)
		end
	end)

	function self.onInputBegan(_, inputObject)
		if self.props.disabled then
			return
		end

		local inputType = inputObject.UserInputType

		if inputType ~= Enum.UserInputType.MouseButton1 and inputType ~= Enum.UserInputType.Touch then
			return
		end

		local position = inputObject.Position.X
		self:processDrag(position)
		self:startListeningForDrag()
	end
end

function Slider:renderFocusHandler()
	return Roact.createElement(FocusHandler, {
		isFocused = self.state.entryMode and self.props.canCaptureFocus,

		didFocus = function()
			-- disable navigation once we've entered entry mode
			GuiService.CoreGuiNavigationEnabled = false

			self.joystickListener = RunService.Heartbeat:Connect(function(deltaTime)
				self:onMoveStep(deltaTime, getInputObjects())
			end)

			-- keep the old value in case user hits B
			local oldSliderValue = self.props.value

			-- bind a core action that leaves entry mode
			-- and reverts value when the 'B' button is pressed on the gamepad
			ContextActionService:BindCoreAction("LeaveEntryMode", function(actionName, inputState)
				if inputState == Enum.UserInputState.End then
					self:setState({entryMode = false})
					self.props.valueChanged(oldSliderValue)
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end, false, Enum.KeyCode.ButtonB)
		end,

		didBlur = function()
			self.joystickListener:Disconnect()
			GuiService.CoreGuiNavigationEnabled = true
			ContextActionService:UnbindCoreAction("LeaveEntryMode") -- unbind this action once we've called it once
			self:setState({entryMode = false})
		end,
	}) or nil
end

function Slider:renderWithSelectionCursor(getSelectionCursor)
	local min = self.props.min
	local max = self.props.max

	local interval = max - min
	local dotPosition = (self.props.value - min) / interval
	local filledSize = math.abs(dotPosition)
	local filledPosition = dotPosition / 2

	local isFocused = self.state.entryMode and self.props.canCaptureFocus

	return withStyle(function(style)
		return Roact.createElement(ImageSetButton, {
			AnchorPoint = self.props.AnchorPoint,
			BackgroundTransparency = 1,
			Image = "",
			LayoutOrder = self.props.LayoutOrder,
			Position = self.props.Position,
			Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, SLIDER_HEIGHT),
			[Roact.Ref] = self.rootButtonRef,
			[Roact.Event.InputBegan] = self.onInputBegan,
			Selectable = false
		}, {
			FocusHandler = self:renderFocusHandler(),
			Gutter = Roact.createElement(AssetImage.Label, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				imageKey = "SliderCircle",
				ImageColor3 = style.Theme.UIMuted.Color,
				ImageTransparency = style.Theme.UIMuted.Transparency,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 4),
			}, {
				FilledGutter = Roact.createElement(AssetImage.Label, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					imageKey = "SliderCircle",
					ImageColor3 = style.Theme.ContextualPrimaryDefault.Color,
					ImageTransparency = divideTransparency(
						style.Theme.ContextualPrimaryDefault.Transparency,
						self.props.disabled and 2 or 1),
					Position = UDim2.new(filledPosition, 0, 0.5, 0),
					Size = UDim2.new(filledSize, 0, 1, 0),
				}),
			}),
			DotTrack = Roact.createElement("Frame", {
				Size = UDim2.new(1, -12, 1, 0),
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ZIndex = 4,
				Selectable = false,
			}, {
				Dot = Roact.createElement(AssetImage.Button, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					imageKey = "SliderButton",
					Position = UDim2.new(dotPosition, 0, 0.5, 0),
					Size = UDim2.new(0, KNOB_HEIGHT, 0, KNOB_HEIGHT),
					ImageTransparency = self.props.disabled and 0.5 or 0,
					ZIndex = 2,
					SelectionImageObject = getSelectionCursor(isFocused and CursorKind.SelectedKnob or CursorKind.UnselectedKnob),
					[Roact.Event.Activated] = function(rbx, inputObject)
						if inputObject.KeyCode == Enum.KeyCode.ButtonA then
							self:setState({
								entryMode = not self.state.entryMode
							})
						end
					end,
					[Roact.Event.InputBegan] = function(rbx, inputObject)
						if self.props.disabled then
							return
						end

						if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
							self:setState({
								hovering = true,
							})
						else
							self.onInputBegan(rbx, inputObject)
						end
					end,
					[Roact.Event.InputEnded] = function(_, inputObject)
						if self.props.disabled then
							return
						end

						if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
							self:setState({
								hovering = false,
							})
						end
					end,
					[Roact.Ref] = self.props.sliderDotRef,
					[Roact.Event.SelectionLost] = self.props.onSelectionLost,
					[Roact.Event.SelectionGained] = self.props.onSelectionGained,
					NextSelectionRight = self.props.NextSelectionRight,
				}),
				HoverOverlay = Roact.createElement(AssetImage.Label, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					imageKey = "SliderHover",
					Position = UDim2.new(dotPosition, 0, 0.5, 0),
					Size = UDim2.new(0, 0, 0, 0),
					[Roact.Ref] = self.hoverRef,
				}),
			}),
		})
	end)
end

function Slider:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

function Slider:didMount()
	local root = self.rootButtonRef.current

	-- When didMount is first called we're still orphaned; we need to wait until
	-- we're in the DataModel before checking whether we can use UserInputService.
	-- Using a connection on AncestryChanged means we won't yield a frame to
	-- figure this out.
	local ancestryChangedConnection
	ancestryChangedConnection = root.AncestryChanged:Connect(function()
		if not root:IsDescendantOf(game) then
			return
		end

		ancestryChangedConnection:Disconnect()

		-- If we're mounted in a PluginGui, we cannot use UserInputService and we
		-- need to resort to less clean methods to capture mouse movements.
		self.canUseUserInputService = root:FindFirstAncestorWhichIsA("PluginGui") == nil
	end)

	self.hoverMotor:start()
end

function Slider:didUpdate()
	if self.props.disabled then
		self:stopListeningForDrag()
	end

	local hoverSize = HOVER_SIZE_OFF
	if not self.props.disabled and (self.state.dragging or self.state.hovering) then
		hoverSize = HOVER_SIZE_ON
	end

	self.hoverMotor:setGoal(Otter.spring(hoverSize, HOVER_SPRING_PARAMETERS))
end

function Slider:willUnmount()
	self.hoverMotor:stop()
	self:disconnectDragEvents()
end

function Slider:startListeningForDrag()
	local root = self.rootButtonRef.current
	if root == nil then
		return
	end

	if self.state.dragging then
		return
	end

	if self.canUseUserInputService then
		-- This is the nice clean path, where we can just use UserInputService to
		-- capture the mouse movements.
		self.moveConnection = UserInputService.InputChanged:Connect(function(inputObject)
			-- We don't check for input processed because that parameter will be
			-- true when the mouse is over the slider (or a button) - we don't care
			-- about whether the input was processed by something else.

			if not self.state.dragging then
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
		end)

		self.releaseConnection = UserInputService.InputEnded:Connect(function(inputObject)
			local inputType = inputObject.UserInputType
			if inputType ~= Enum.UserInputType.MouseButton1 and inputType ~= Enum.UserInputType.Touch then
				return
			end

			-- Stop listening for drag events before processing the input, since
			-- that involves a callback to the user of the slider.
			self:stopListeningForDrag()
			self:processDrag(inputObject.Position.X)
		end)

		-- If the window loses focus the user can release the mouse and we won't
		-- know about it, so the slider could get "stuck" to the mouse, even
		-- though the user has let go of the mouse button.
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
			self:processDrag(x)
		end)

		self.focusLostConnection = inputCapturer.MouseLeave:Connect(function(x)
			self:stopListeningForDrag()
			self:processDrag(x)
		end)

		inputCapturer.Parent = pluginGui
		self.inputCapturerButton = inputCapturer
	end

	self:setState({
		dragging = true,
	})
end

function Slider:processDrag(x)
	local root = self.rootButtonRef.current
	if root == nil then
		return
	end

	local min = self.props.min
	local max = self.props.max
	local stepInterval = self.props.stepInterval

	local absoluteWidth = root.AbsoluteSize.X
	local relativeX = x - root.AbsolutePosition.X
	local clampedX = math.clamp(relativeX, 0, absoluteWidth)
	local fractional = clampedX / absoluteWidth
	local unsteppedValue = (fractional * (max - min)) + min
	local steppedValue = math.floor(unsteppedValue / stepInterval + 0.5) * stepInterval

	if steppedValue ~= self.props.value then
		self.props.valueChanged(steppedValue)
	end
end

-- Separated from stopListeningForDrag to enable calling this within willUnmount.
function Slider:disconnectDragEvents()
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
end

function Slider:stopListeningForDrag()
	if not self.state.dragging then
		return
	end

	self:disconnectDragEvents()

	self:setState({
		dragging = false,
	})
end

function Slider:processGamepadInput(polarity, increments)
	local stepInterval = self.props.stepInterval * polarity
	local value = self.props.value

	value = math.max(math.min(value + (stepInterval * increments), self.props.max), self.props.min)

	if value ~= self.props.value then
		self.props.valueChanged(value)
	end
end

function Slider:onMoveStep(delta, inputObjects)
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
		local rightMovement = inputObjects[Enum.KeyCode.DPadRight].UserInputState == Enum.UserInputState.Begin and 1 or 0
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

function Slider.getDerivedStateFromProps(nextProps)
	if not nextProps.isMenuOpen then
		return {
			entryMode = false,
		}
	end
	return nil
end

return Slider
