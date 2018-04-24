local GameOptionsSettings = settings():FindFirstChild("Game Options")
local UserInputService = game:GetService("UserInputService")
local PlatformService = nil
pcall(function() PlatformService = game:GetService("PlatformService") end)
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local Utility = require(Modules.Shell.Utility)

local ContextActionEvent = require(Modules.Shell.Components.ContextActionEvent)
local ExternalEventConnection = require(Modules.Common.RoactUtilities.ExternalEventConnection)
local RenderStep = require(Modules.Shell.Components.RenderStep)

local MIN_EDGE_PERCENT = Vector2.new(0.85, 0.85)
local START_EDGE_PERCENT = Vector2.new(0.9, 0.9)

local CONSOLE_RESOLUTION = Vector2.new(1920, 1080)
local ZERO_VEC2 = Vector2.new(0,0)
local MAX_STICK_ACCELERATION = 3
local ACCELERATION_RATE = 1

local DPAD_STEP_AMOUNT = 2
local DPAD_CODE_TO_EDGE_PUSH = {
	[Enum.KeyCode.DPadDown] = Vector2.new(0, DPAD_STEP_AMOUNT);
	[Enum.KeyCode.DPadUp] = Vector2.new(0, -DPAD_STEP_AMOUNT);
	[Enum.KeyCode.DPadLeft] = Vector2.new(-DPAD_STEP_AMOUNT, 0);
	[Enum.KeyCode.DPadRight] = Vector2.new(DPAD_STEP_AMOUNT, 0);
}

local function EdgeImage(props)
	return Roact.createElement("ImageLabel", {
		Size = UDim2.new(0, 95, 0, 95),
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
		BackgroundTransparency = 1,
		Rotation = props.Rotation,
		Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/ScreenAdjustmentArrow.png",
	})
end

local Edges = Roact.Component:extend("Edges")

function Edges:init()
	local function getCurrentEdgePercent(newEdgePercent)
		return Utility.ClampVector2(MIN_EDGE_PERCENT, Vector2.new(1, 1), newEdgePercent)
	end

	local function getCurrentEdgeSize(edgePercent)
		local absoluteEdgeSize = edgePercent * CONSOLE_RESOLUTION
		local roundedAbsoluteEdgeSize = Vector2.new(Utility.Round(absoluteEdgeSize.X/2), Utility.Round(absoluteEdgeSize.Y/2)) * 2
		return Utility.ClampVector2(ZERO_VEC2, CONSOLE_RESOLUTION, roundedAbsoluteEdgeSize)
	end

	self.onAdjustThumbstick = function(actionName, inputState, inputObject)
		self._stickPosition = Utility.GamepadLinearToCurve(Vector2.new(inputObject.Position.X, -inputObject.Position.Y), 0.2)
	end

	self.onAdjustDPad = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			local pushAmount = DPAD_CODE_TO_EDGE_PUSH[inputObject.KeyCode]
			if pushAmount then
				pushAmount = pushAmount / CONSOLE_RESOLUTION
				if Utility.IsFinite(pushAmount.X) and Utility.IsFinite(pushAmount.Y) then
					self._edgePercent = getCurrentEdgePercent(self._edgePercent + pushAmount)
					self:setState({
						currentSize = getCurrentEdgeSize(self._edgePercent)
					})
				end
			end
		end
	end

	self.onReset = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End then
			self._stickPosition = ZERO_VEC2
			self._edgePercent = getCurrentEdgePercent(START_EDGE_PERCENT)
			self._acceleration = 1
			self:setState({
				currentSize = getCurrentEdgeSize(self._edgePercent),
			})
		end
	end

	self.onAccept = function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			self._seenAPressed = true
		elseif inputState == Enum.UserInputState.End and self._seenAPressed then
			local success, err = pcall(function()
				GameOptionsSettings.OverscanPX = math.min(1, self._edgePercent.X)
				GameOptionsSettings.OverscanPY = math.min(1, self._edgePercent.Y)
			end)
			if self.props.onSetEdges then
				self.props.onSetEdges()
			end
		end
	end

	self.onRenderStep = function()
		local now = tick()
		if self._lastUpdate then
			if self._stickPosition ~= ZERO_VEC2 then
				local delta = now - self._lastUpdate
				local transformedStick = (self._stickPosition) * self._acceleration * delta * 0.05
				self._edgePercent = getCurrentEdgePercent(transformedStick + self._edgePercent)
				self._acceleration = math.min(self._acceleration + delta * ACCELERATION_RATE, MAX_STICK_ACCELERATION)

				self:setState({
					currentSize = getCurrentEdgeSize(self._edgePercent)
				})
			else
				self._acceleration = 1
			end
		end
		self._lastUpdate = now
	end

	self.onSuspended = function()
		pcall(function()
			GameOptionsSettings.OverscanPX = self._lastSavedOverscan.X
			GameOptionsSettings.OverscanPY = self._lastSavedOverscan.Y
		end)
	end

	local overscansetting = getCurrentEdgePercent(START_EDGE_PERCENT)
	local startSize = getCurrentEdgeSize(overscansetting)
	if UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
		pcall(function()
			if GameOptionsSettings.OverscanPX > 0 and GameOptionsSettings.OverscanPY > 0 then
				overscansetting = Vector2.new(GameOptionsSettings.OverscanPX, GameOptionsSettings.OverscanPY)
				overscansetting = getCurrentEdgePercent(overscansetting)
				startSize = getCurrentEdgeSize(overscansetting)

				-- set the overscan settings to max so the user can accurately estimate their TVs overscan
				-- save previous settings so we can save on suspend
				self._lastSavedOverscan = Vector2.new(GameOptionsSettings.OverscanPX, GameOptionsSettings.OverscanPY)
				GameOptionsSettings.OverscanPX = 1
				GameOptionsSettings.OverscanPY = 1
			end
		end)
	end

	self._stickPosition = ZERO_VEC2
	self._edgePercent = overscansetting
	self._lastUpdate = nil
	self._acceleration = 1
	self._seenAPressed = false

	self.state = {
		currentSize = startSize,
	}
end

function Edges:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, self.state.currentSize.X, 0, self.state.currentSize.Y),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
	}, {
		SelectionImage = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 2, 1, 2),
			Position = UDim2.new(0, -1, 0, -1),
			BackgroundTransparency = 1,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(21, 21, 41, 41),
			Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/ScreenRangeOverlay.png",
		}),

		TopLeft = Roact.createElement(EdgeImage, {
			Rotation = 0,
			Position = UDim2.new(0, 0, 0, 0),
			AnchorPoint = Vector2.new(0, 0),
		}),

		TopRight = Roact.createElement(EdgeImage, {
			Rotation = 90,
			Position = UDim2.new(1, 0, 0, 0),
			AnchorPoint = Vector2.new(1, 0),
		}),

		BottomRight = Roact.createElement(EdgeImage, {
			Rotation = 180,
			Position = UDim2.new(1, 0, 1, 0),
			AnchorPoint = Vector2.new(1, 1),
		}),

		BottomLeft = Roact.createElement(EdgeImage, {
			Rotation = 270,
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
		}),

		Render = Roact.createElement(RenderStep, {
			name = "UpdateAdjustmentScreen",
			priority = Enum.RenderPriority.Input.Value,
			callback = self.onRenderStep,
		}),

		AdjustConnectorThumbstick = Roact.createElement(ContextActionEvent, {
			name = "ThumbstickAdjustmentScreen",
			callback = self.onAdjustThumbstick,
			binds = { Enum.KeyCode.Thumbstick2 },
		}),

		AdjustConnectorDPad = Roact.createElement(ContextActionEvent, {
			name = "DPadAdjustmentScreen",
			callback = self.onAdjustDPad,
			binds = { Enum.KeyCode.DPadDown, Enum.KeyCode.DPadUp, Enum.KeyCode.DPadLeft, Enum.KeyCode.DPadRight },
		}),

		ResetConnector = Roact.createElement(ContextActionEvent, {
			name = "ResetAdjustmentScreen",
			callback = self.onReset,
			binds = { Enum.KeyCode.ButtonX },
		}),

		AcceptConnector = Roact.createElement(ContextActionEvent, {
			name = "AcceptAdjustmentScreen",
			callback = self.onAccept,
			binds = { Enum.KeyCode.ButtonA },
		}),

		SuspendedCn = PlatformService and Roact.createElement(ExternalEventConnection, {
			event = PlatformService.Suspended,
			callback = self.onSuspended,
		}),
	})
end

return Edges