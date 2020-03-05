local PLUGINGUI_INPUT_CAPTURER_ZINDEX = 100000
local SLIDER_HEIGHT = 36
local KNOB_HEIGHT = 44

local UserInputService = game:GetService("UserInputService")

local SliderRoot = script.Parent
local CoreRoot = SliderRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local ImageSetComponent = require(CoreRoot.ImageSet.ImageSetComponent)

local lerp = require(UIBloxRoot.Utility.lerp)

local GenericSlider = Roact.PureComponent:extend("GenericSlider")
GenericSlider.validateProps = t.strictInterface({
	value = t.number,
	min = t.number,
	max = t.number,
	stepInterval = t.numberPositive,
	isDisabled = t.optional(t.boolean),

	onValueChanged = t.callback,
	onDragStart = t.optional(t.callback),
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
	knobColor = t.union(t.Color3, t.table),
	knobTransparency = t.union(t.number, t.table),

	knobImagePadding = t.optional(t.numberPositive),

	knobShadowImage = t.union(t.string, t.table),
	knobShadowTransparency = t.union(t.number, t.table),

	width = t.optional(t.UDim),
	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	layoutOrder = t.optional(t.integer),
})

GenericSlider.defaultProps = {
	width = UDim.new(1, 0),
	knobImagePadding = 0,
}

function GenericSlider:init()
	self.rootRef = Roact.createRef()
end

function GenericSlider:render()
	local fillPercent = (self.props.value - self.props.min) / (self.props.max - self.props.min)
	local visibleSize = KNOB_HEIGHT - (self.props.knobImagePadding * 2)
	local positionOffset = lerp(visibleSize / 2, -visibleSize / 2, fillPercent)
	local knobPosition = UDim2.new(fillPercent, positionOffset, 0.5, 0)
	local fillSize = UDim2.fromScale(fillPercent, 1)

	return Roact.createElement(ImageSetComponent.Button, {
		BackgroundTransparency = 1,
		AnchorPoint = self.props.anchorPoint,
		Size = UDim2.new(self.props.width.Scale, self.props.width.Offset, 0, SLIDER_HEIGHT),
		LayoutOrder = self.props.layoutOrder,
		Position = self.props.position,
		[Roact.Event.InputBegan] = function(rbx, inputObject)
			if self.props.isDisabled then
				return
			end

			self:onInputBegan(inputObject, false)
		end,
		[Roact.Ref] = self.rootRef,
	}, {
		Track = Roact.createElement(ImageSetComponent.Label, {
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
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = self.props.trackFillSliceCenter,
			})
		}),
		Knob = Roact.createElement(ImageSetComponent.Button, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			ImageColor3 = self.props.knobColor,
			ImageTransparency = self.props.knobTransparency,
			Image = self.props.knobImage,
			Size = UDim2.fromOffset(KNOB_HEIGHT, KNOB_HEIGHT),
			Position = knobPosition,
			ZIndex = 3,

			[Roact.Event.InputBegan] = function(rbx, inputObject)
				if self.props.isDisabled then
					return
				end

				self:onInputBegan(inputObject, true)
			end,
		}),
		KnobShadow = Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			ImageTransparency = self.props.knobShadowTransparency,
			Image = self.props.knobShadowImage,
			Size = UDim2.fromOffset(44, 44),
			Position = knobPosition,
			ZIndex = 2,
		}),
	})
end

function GenericSlider:didMount()
	local root = self.rootRef.current

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
end

function GenericSlider:didUpdate()
	if self.props.disabled then
		self:stopListeningForDrag()
	end
end

function GenericSlider:willUnmount()
	self:stopListeningForDrag()
end

function GenericSlider:onInputBegan(inputObject, isKnob)
	if self.props.disabled then
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
		self.moveConnection = UserInputService.InputChanged:Connect(function(inputObject)
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
			self:processDrag(x)
		end)

		self.focusLostConnection = inputCapturer.MouseLeave:Connect(function(x)
			self:stopListeningForDrag()
			self:processDrag(x)
		end)

		inputCapturer.Parent = pluginGui
		self.inputCapturerButton = inputCapturer
	end

	self.dragging = true

	if self.props.onDragStart ~= nil then
		self.props.onDragStart()
	end
end

function GenericSlider:processDrag(x)
	local root = self.rootRef.current
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
		self.props.onValueChanged(steppedValue)
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

	if self.props.onDragEnd ~= nil then
		self.props.onDragEnd()
	end
end

return GenericSlider