local UserInputService = game:GetService("UserInputService")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Otter = InGameMenuDependencies.Otter

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local AssetImage = require(script.Parent.AssetImage)

local ImageSetButton = UIBlox.Core.ImageSet.Button

local PLUGINGUI_INPUT_CAPTURER_ZINDEX = 100000
local SLIDER_HEIGHT = 36
local KNOB_HEIGHT = 42
local HOVER_SIZE_OFF = 0
local HOVER_SIZE_ON = KNOB_HEIGHT
local HOVER_SPRING_PARAMETERS = {
	frequency = 5,
}

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
	}

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

function Slider:render()
	local min = self.props.min
	local max = self.props.max

	local interval = max - min
	local dotPosition = (self.props.value - min) / interval
	local filledSize = math.abs(dotPosition)
	local filledPosition = dotPosition / 2

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
		}, {
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
			}, {
				Dot = Roact.createElement(AssetImage.Button, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					imageKey = "SliderButton",
					Position = UDim2.new(dotPosition, 0, 0.5, 0),
					Size = UDim2.new(0, KNOB_HEIGHT, 0, KNOB_HEIGHT),
					ImageTransparency = self.props.disabled and 0.5 or 0,
					ZIndex = 2,
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

return Slider