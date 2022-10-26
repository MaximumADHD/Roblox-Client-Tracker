--[[
	Component that renders a ViewportFrame with a WorldModel in order to display
	a relevant character model with a given humanoidDescription for the
	InspectAndBuy menu. Uses the character model pool to make offscreen updates
	to avoid layered clothing pop-in
]]

local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Color = require(CorePackages.Workspace.Packages.AppCommonLib).Color
local InGameMenu = script.Parent.Parent.Parent
local CharacterModelPool = require(InGameMenu.Utility.CharacterModelPool)

local CHARACTER_ROTATION_SPEED = .0065
local STICK_ROTATION_MULTIPLIER = 3
local THUMBSTICK_DEADZONE = 0.2
local AUTO_ROTATE_WAIT_TIME = 2
local AUTO_SPIN_STEP = math.rad(0.70)
local DEFAULT_CAMERA_OFFSET = CFrame.new(0, 2, -5)
local TOOL_OFFSET = CFrame.new(0, 2, -8)

local AvatarViewport = Roact.PureComponent:extend("AvatarViewport")

AvatarViewport.validateProps = t.strictInterface({
	model = t.optional(t.table),
	size = t.optional(t.UDim2),
	position = t.optional(t.UDim2),
	humanoidDescription = t.optional(t.instanceOf("HumanoidDescription")),
	visible = t.optional(t.boolean),
	backgroundTransparency = t.optional(t.number),
	gamepadEnabled = t.optional(t.boolean),
	setScrollingEnabled = t.callback,
})

AvatarViewport.defaultProps = {
	size = UDim2.fromScale(1, 1),
	position = UDim2.fromScale(0, 0),
	visible = true,
	backgroundTransparency = 1,
	gamepadEnabled = false,
}

function AvatarViewport:init()
	self.viewportFrameRef = Roact.createRef()
	self.worldModelRef = Roact.createRef()
	self.connections = {}
	self.xRotation = 0
	self.yRotation = 0
	self.rotationDeltaX = 0
	self.rotationDeltaY = 0
	self.mouseOrTouchDown = false
	self.delta = 0
	self.keys = {}
	self.lastPosition = Vector3.new(0, 0, 0)
	self.viewportCamera = Instance.new("Camera")
	self.viewportCamera.CameraType = Enum.CameraType.Scriptable
	self.model = self.props.model
	self.lastInputTime = AUTO_ROTATE_WAIT_TIME
	self.initialHrpPosition = self.props.model ~= nil and self.props.model.HumanoidRootPart.Position or nil

	self.onInputBegan = function(rbx, input)
		local setScrollingEnabled = self.props.setScrollingEnabled
		if input.UserInputState == Enum.UserInputState.Begin then
			self.mouseOrTouchDown = true
			self.lastPosition = input.Position
			setScrollingEnabled(false)
			local changedConnection = UserInputService.InputChanged:Connect(function(inputObject, gameProcessedEvent)
				if (inputObject.UserInputType == Enum.UserInputType.MouseMovement and self.mouseOrTouchDown)
					or inputObject.UserInputType == Enum.UserInputType.Touch then
					local touchDelta = ((inputObject.Position :: Vector3) - self.lastPosition)
					self.lastPosition = inputObject.Position
					self.yRotation = self.yRotation + touchDelta.x * CHARACTER_ROTATION_SPEED
					self.xRotation = self.xRotation + touchDelta.y * CHARACTER_ROTATION_SPEED
					self.lastInputTime = tick()
				end
			end)
			local endConnection = UserInputService.InputEnded:Connect(function(inputObject, gameProcessedEvent)
				if inputObject.UserInputType == Enum.UserInputType.MouseButton1
					or inputObject.UserInputType == Enum.UserInputType.Touch then
					if self.mouseOrTouchDown then
						self.mouseOrTouchDown = false
						self.lastInputTime = tick()
						self:removeConnections()
					end
					setScrollingEnabled(true)
				end
			end)
			table.insert(self.connections, changedConnection)
			table.insert(self.connections, endConnection)
		end
	end
end

function AvatarViewport:didMount()
	if self.props.humanoidDescription and self.model then
		self.viewportCamera.Parent = self.viewportFrameRef.current
		self.viewportFrameRef.current.CurrentCamera = self.viewportCamera
		self:setRotation()

		local rigType = self.model.Humanoid.RigType
		self.characterModelPool =
			CharacterModelPool.new(self.worldModelRef, self.initialHrpPosition, rigType, nil)
	end

	self.isMounted = true
	self:handleSpin()
	self:setUpGamepad()
end

function AvatarViewport:didUpdate(prevProps, prevState)
	if self.props.visible and self.props.humanoidDescription ~= prevProps.humanoidDescription and self.model then
		coroutine.wrap(function()
			self.characterModelPool:maybeUpdateCharacter(self.props.humanoidDescription)
		end)()
	end

	self.gamepadRotating = false
	self.viewportCamera.Parent = self.viewportFrameRef.current
	self.viewportFrameRef.current.CurrentCamera = self.viewportCamera

	if self.props.gamepadEnabled ~= prevProps.gamepadEnabled then
		if self.props.gamepadEnabled then
			self:setUpGamepad()
		else
			self:unbindActions()
		end
	end
end

-- Note: Because the camera is the object moving, the character will always be upright.
function AvatarViewport:setRotation()
	local currentCharacter = self.model

	if currentCharacter then
		local hrp = currentCharacter.HumanoidRootPart
		-- Set the camera's position relative to the initialHrpPosition rather than the current hrp.Position
		-- So that moving the model for Popin fix purposes will not also move the camera
		local hrpPosition = self.initialHrpPosition or hrp.Position
		local offset = DEFAULT_CAMERA_OFFSET
		if self.model:FindFirstChildOfClass("Tool") then
			offset = TOOL_OFFSET
		end

		local cameraPosition = (
			CFrame.new(hrpPosition)
			* CFrame.Angles(0, -self.yRotation, 0)
			* CFrame.Angles(self.xRotation, 0, 0)
			* offset
		).Position

		self.viewportCamera.CFrame = CFrame.new(cameraPosition, hrpPosition)
	end
end

function AvatarViewport:render()
	local size = self.props.size
	local position = self.props.position
	local visible = self.props.visible
	local backgroundTransparency = self.props.backgroundTransparency

	return Roact.createElement("ViewportFrame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = position,
		Size = size,
		BackgroundTransparency = backgroundTransparency,
		BackgroundColor3 = Color.Color3FromHex(0x656668), --TODO: wrap in withstyle
		BorderSizePixel = 0,
		Active = true,
		Visible = visible,
		[Roact.Ref] = self.viewportFrameRef,
		[Roact.Event.InputBegan] = self.onInputBegan,
	}, {
		WorldModel = Roact.createElement("WorldModel", {
			[Roact.Ref] = self.worldModelRef,
		})
	})
end

--[[
	Handle rotating the avatar.
]]
function AvatarViewport:handleSpin()
	local isSpinning = false
	spawn(function()
		while self.isMounted do
			-- Automatically rotate the avatar if the user is not interacting with it.
			if tick() - self.lastInputTime > AUTO_ROTATE_WAIT_TIME and not self.mouseOrTouchDown
				and not self.gamepadRotating then
				isSpinning = true
			else
				isSpinning = false
			end

			local function returnToDefaultPosition(current, maxStep)
				current = (current :: number) % math.rad(360)
				if current > math.rad(180) then
					current = current + maxStep
					if current > math.rad(360) then
						return 0
					end
				else
					current = current - maxStep
					if current < 0 then
						return 0
					end
				end
				return current
			end

			if isSpinning then
				self.xRotation = returnToDefaultPosition(self.xRotation, math.rad(2))
				self.yRotation = self.yRotation + AUTO_SPIN_STEP
			elseif self.gamepadRotating then
				self.yRotation = self.yRotation + self.delta * self.rotationDeltaY
				self.xRotation = self.xRotation + self.delta * self.rotationDeltaX
			end

			self:setRotation()
			self.delta = RunService.RenderStepped:Wait()
		end
	end)
end

function AvatarViewport:setUpGamepad()
	if UserInputService.GamepadEnabled then
		local gamepadInput = Vector2.new(0, 0)

		ContextActionService:UnbindCoreAction("RotateModel")
		ContextActionService:BindCoreAction("RotateModel", function(actionName, inputState, inputObject)
			if inputState == Enum.UserInputState.Change then
				gamepadInput = inputObject.Position or gamepadInput
				gamepadInput = Vector2.new(gamepadInput.X, gamepadInput.Y)
				if math.abs(gamepadInput.X) > THUMBSTICK_DEADZONE or math.abs(gamepadInput.Y) > THUMBSTICK_DEADZONE then
					self.lastInputTime = tick()
					self.gamepadRotating = true
					self.rotationDeltaY = STICK_ROTATION_MULTIPLIER * gamepadInput.X
					self.rotationDeltaX = STICK_ROTATION_MULTIPLIER * gamepadInput.Y
				else
					self.gamepadRotating = false
				end
			end

			return Enum.ContextActionResult.Sink
		end,
		false, Enum.KeyCode.Thumbstick2, Enum.KeyCode.ButtonA)
	end
end

function AvatarViewport:unbindActions()
	ContextActionService:UnbindCoreAction("RotateModel")
end

function AvatarViewport:removeConnections()
	for _, listener in pairs(self.connections) do
		listener:disconnect()
	end
end

function AvatarViewport:willUnmount()
	self.isMounted = false

	if self.characterModelPool then
		self.characterModelPool:onDestroy()
	end
	self:unbindActions()
	self:removeConnections()
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			gamepadEnabled = false, --TODO: AVBURST-8610 AssetDetails Gamepad Support
		}
	end
)(AvatarViewport)
