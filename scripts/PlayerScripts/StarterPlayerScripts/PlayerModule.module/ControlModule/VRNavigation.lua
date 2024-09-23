--!nonstrict
--!nolint GlobalUsedAsLocal

--[[
		VRNavigation
--]]

local VRService = game:GetService("VRService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local PathfindingService = game:GetService("PathfindingService")
local ContextActionService = game:GetService("ContextActionService")
local StarterGui = game:GetService("StarterGui")

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

--local MasterControl = require(script.Parent)
local PathDisplay = nil
local LocalPlayer = Players.LocalPlayer

--[[ Constants ]]--
local RECALCULATE_PATH_THRESHOLD = 4
local NO_PATH_THRESHOLD = 12
local MAX_PATHING_DISTANCE = 200
local POINT_REACHED_THRESHOLD = 1
local OFFTRACK_TIME_THRESHOLD = 2
local THUMBSTICK_DEADZONE = 0.22

local ZERO_VECTOR3 = Vector3.new(0,0,0)
local XZ_VECTOR3 = Vector3.new(1,0,1)
local HEIGHT_OFFSET = Vector3.new(0, 100, 0)

local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Exclude

--[[ Flags ]]--
local FFlagUserRaycastPerformanceImprovements = FlagUtil.getUserFlag("UserRaycastPerformanceImprovements")

--[[ Utility Functions ]]--
local function IsFinite(num: number)
	return num == num and num ~= 1/0 and num ~= -1/0
end

local function IsFiniteVector3(vec3)
	return IsFinite(vec3.x) and IsFinite(vec3.y) and IsFinite(vec3.z)
end

local movementUpdateEvent = Instance.new("BindableEvent")
movementUpdateEvent.Name = "MovementUpdate"
movementUpdateEvent.Parent = script

coroutine.wrap(function()
	local PathDisplayModule = script.Parent:WaitForChild("PathDisplay")
	if PathDisplayModule then
		PathDisplay = require(PathDisplayModule)
	end
end)()


--[[ The Class ]]--
local BaseCharacterController = require(script.Parent:WaitForChild("BaseCharacterController"))
local VRNavigation = setmetatable({}, BaseCharacterController)
VRNavigation.__index = VRNavigation

function VRNavigation.new(CONTROL_ACTION_PRIORITY)
	local self = setmetatable(BaseCharacterController.new() :: any, VRNavigation)

	self.CONTROL_ACTION_PRIORITY = CONTROL_ACTION_PRIORITY

	self.navigationRequestedConn = nil
	self.heartbeatConn = nil

	self.currentDestination = nil
	self.currentPath = nil
	self.currentPoints = nil
	self.currentPointIdx = 0

	self.expectedTimeToNextPoint = 0
	self.timeReachedLastPoint = tick()
	self.moving = false

	self.isJumpBound = false
	self.moveLatch = false

	self.userCFrameEnabledConn = nil

	return self
end

function VRNavigation:SetLaserPointerMode(mode)
	pcall(function()
		StarterGui:SetCore("VRLaserPointerMode", mode)
	end)
end

function VRNavigation:GetLocalHumanoid()
	local character = LocalPlayer.Character
	if not character then
		return
	end

	for _, child in pairs(character:GetChildren()) do
		if child:IsA("Humanoid") then
			return child
		end
	end
	return nil
end

function VRNavigation:HasBothHandControllers()
	return VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) and VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
end

function VRNavigation:HasAnyHandControllers()
	return VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) or VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
end

function VRNavigation:IsMobileVR()
	return UserInputService.TouchEnabled
end

function VRNavigation:HasGamepad()
	return UserInputService.GamepadEnabled
end

function VRNavigation:ShouldUseNavigationLaser()
	--Places where we use the navigation laser:
	-- mobile VR with any number of hands tracked
	-- desktop VR with only one hand tracked
	-- desktop VR with no hands and no gamepad (i.e. with Oculus remote?)
	--using an Xbox controller with a desktop VR headset means no laser since the user has a thumbstick.
	--in the future, we should query thumbstick presence with a features API
	if self:IsMobileVR() then
		return true
	else
		if self:HasBothHandControllers() then
			return false
		end
		if not self:HasAnyHandControllers() then
			return not self:HasGamepad()
		end
		return true
	end
end



function VRNavigation:StartFollowingPath(newPath)
	currentPath = newPath
	currentPoints = currentPath:GetPointCoordinates()
	currentPointIdx = 1
	moving = true

	timeReachedLastPoint = tick()

	local humanoid = self:GetLocalHumanoid()
	if humanoid and humanoid.Torso and #currentPoints >= 1 then
		local dist = (currentPoints[1] - humanoid.Torso.Position).magnitude
		expectedTimeToNextPoint = dist / humanoid.WalkSpeed
	end

	movementUpdateEvent:Fire("targetPoint", self.currentDestination)
end

function VRNavigation:GoToPoint(point)
	currentPath = true
	currentPoints = { point }
	currentPointIdx = 1
	moving = true

	local humanoid = self:GetLocalHumanoid()
	local distance = (humanoid.Torso.Position - point).magnitude
	local estimatedTimeRemaining = distance / humanoid.WalkSpeed

	timeReachedLastPoint = tick()
	expectedTimeToNextPoint = estimatedTimeRemaining

	movementUpdateEvent:Fire("targetPoint", point)
end

function VRNavigation:StopFollowingPath()
	currentPath = nil
	currentPoints = nil
	currentPointIdx = 0
	moving = false
	self.moveVector = ZERO_VECTOR3
end

function VRNavigation:TryComputePath(startPos: Vector3, destination: Vector3)
	local numAttempts = 0
	local newPath = nil

	while not newPath and numAttempts < 5 do
		newPath = PathfindingService:ComputeSmoothPathAsync(startPos, destination, MAX_PATHING_DISTANCE)
		numAttempts = numAttempts + 1

		if newPath.Status == Enum.PathStatus.ClosestNoPath or newPath.Status == Enum.PathStatus.ClosestOutOfRange then
			newPath = nil
			break
		end

		if newPath and newPath.Status == Enum.PathStatus.FailStartNotEmpty then
			startPos = startPos + (destination - startPos).Unit
			newPath = nil
		end

		if newPath and newPath.Status == Enum.PathStatus.FailFinishNotEmpty then
			destination = destination + Vector3.new(0, 1, 0)
			newPath = nil
		end
	end

	return newPath
end

function VRNavigation:OnNavigationRequest(destinationCFrame: CFrame, inputUserCFrame: CFrame)
	local destinationPosition = destinationCFrame.Position
	local lastDestination = self.currentDestination

	if not IsFiniteVector3(destinationPosition) then
		return
	end

	self.currentDestination = destinationPosition

	local humanoid = self:GetLocalHumanoid()
	if not humanoid or not humanoid.Torso then
		return
	end

	local currentPosition = humanoid.Torso.Position
	local distanceToDestination = (self.currentDestination - currentPosition).magnitude

	if distanceToDestination < NO_PATH_THRESHOLD then
		self:GoToPoint(self.currentDestination)
		return
	end

	if not lastDestination or (self.currentDestination - lastDestination).magnitude > RECALCULATE_PATH_THRESHOLD then
		local newPath = self:TryComputePath(currentPosition, self.currentDestination)
		if newPath then
			self:StartFollowingPath(newPath)
			if PathDisplay then
				PathDisplay.setCurrentPoints(self.currentPoints)
				PathDisplay.renderPath()
			end
		else
			self:StopFollowingPath()
			if PathDisplay then
				PathDisplay.clearRenderedPath()
			end
		end
	else
		if moving then
			self.currentPoints[#currentPoints] = self.currentDestination
		else
			self:GoToPoint(self.currentDestination)
		end
	end
end

function VRNavigation:OnJumpAction(actionName, inputState, inputObj)
	if inputState == Enum.UserInputState.Begin then
		self.isJumping = true
	end
	return Enum.ContextActionResult.Sink
end
function VRNavigation:BindJumpAction(active)
	if active then
		if not self.isJumpBound then
			self.isJumpBound = true
			ContextActionService:BindActionAtPriority("VRJumpAction", (function() return self:OnJumpAction() end), false,
				self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.ButtonA)
		end
	else
		if self.isJumpBound then
			self.isJumpBound = false
			ContextActionService:UnbindAction("VRJumpAction")
		end
	end
end

function VRNavigation:ControlCharacterGamepad(actionName, inputState, inputObject)
	if inputObject.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end

	if inputState == Enum.UserInputState.Cancel then
		self.moveVector =  ZERO_VECTOR3
		return
	end

	if inputState ~= Enum.UserInputState.End then
		self:StopFollowingPath()
		if PathDisplay then
			PathDisplay.clearRenderedPath()
		end

		if self:ShouldUseNavigationLaser() then
			self:BindJumpAction(true)
			self:SetLaserPointerMode("Hidden")
		end

		if inputObject.Position.magnitude > THUMBSTICK_DEADZONE then
			self.moveVector = Vector3.new(inputObject.Position.X, 0, -inputObject.Position.Y)
			if self.moveVector.magnitude > 0 then
				self.moveVector = self.moveVector.unit * math.min(1, inputObject.Position.magnitude)
			end

			self.moveLatch = true
		end
	else
		self.moveVector =  ZERO_VECTOR3

		if self:ShouldUseNavigationLaser() then
			self:BindJumpAction(false)
			self:SetLaserPointerMode("Navigation")
		end

		if self.moveLatch then
			self.moveLatch = false
			movementUpdateEvent:Fire("offtrack")
		end
	end
	return Enum.ContextActionResult.Sink
end

function VRNavigation:OnHeartbeat(dt)
	local newMoveVector = self.moveVector
	local humanoid = self:GetLocalHumanoid()
	if not humanoid or not humanoid.Torso then
		return
	end

	if self.moving and self.currentPoints then
		local currentPosition = humanoid.Torso.Position
		local goalPosition = currentPoints[1]
		local vectorToGoal = (goalPosition - currentPosition) * XZ_VECTOR3
		local moveDist = vectorToGoal.magnitude
		local moveDir = vectorToGoal / moveDist

		if moveDist < POINT_REACHED_THRESHOLD then
			local estimatedTimeRemaining = 0
			local prevPoint = currentPoints[1]
			for i, point in pairs(currentPoints) do
				if i ~= 1 then
					local dist = (point - prevPoint).magnitude
					prevPoint = point
					estimatedTimeRemaining = estimatedTimeRemaining + (dist / humanoid.WalkSpeed)
				end
			end

			table.remove(currentPoints, 1)
			currentPointIdx = currentPointIdx + 1

			if #currentPoints == 0 then
				self:StopFollowingPath()
				if PathDisplay then
					PathDisplay.clearRenderedPath()
				end
				return
			else
				if PathDisplay then
					PathDisplay.setCurrentPoints(currentPoints)
					PathDisplay.renderPath()
				end

				local newGoal = currentPoints[1]
				local distanceToGoal = (newGoal - currentPosition).magnitude
				expectedTimeToNextPoint = distanceToGoal / humanoid.WalkSpeed
				timeReachedLastPoint = tick()
			end
		else
			if FFlagUserRaycastPerformanceImprovements then
				raycastParams.FilterDescendantsInstances = { (game.Players.LocalPlayer :: Player).Character, workspace.CurrentCamera}
				local raycastResult = workspace:Raycast(currentPosition - Vector3.yAxis, moveDir * 3, raycastParams)
			
				if raycastResult then
					raycastResult = workspace:Raycast(raycastResult.Position + moveDir * 0.5 + HEIGHT_OFFSET, -HEIGHT_OFFSET, raycastParams)

					local heightDifference = raycastResult.Position.Y - currentPosition.Y
					if heightDifference < 6 and heightDifference > -2 then
						humanoid.Jump = true
					end
				end
			else
				local ignoreTable = {
					(game.Players.LocalPlayer :: Player).Character,
					workspace.CurrentCamera
				}
				local obstructRay = Ray.new(currentPosition - Vector3.new(0, 1, 0), moveDir * 3)
				local obstructPart, obstructPoint, obstructNormal = workspace:FindPartOnRayWithIgnoreList(obstructRay, ignoreTable)

				if obstructPart then
					local heightOffset = Vector3.new(0, 100, 0)
					local jumpCheckRay = Ray.new(obstructPoint + moveDir * 0.5 + heightOffset, -heightOffset)
					local jumpCheckPart, jumpCheckPoint, jumpCheckNormal = workspace:FindPartOnRayWithIgnoreList(jumpCheckRay, ignoreTable)

					local heightDifference = jumpCheckPoint.Y - currentPosition.Y
					if heightDifference < 6 and heightDifference > -2 then
						humanoid.Jump = true
					end
				end
			end

			local timeSinceLastPoint = tick() - timeReachedLastPoint
			if timeSinceLastPoint > expectedTimeToNextPoint + OFFTRACK_TIME_THRESHOLD then
				self:StopFollowingPath()
				if PathDisplay then
					PathDisplay.clearRenderedPath()
				end

				movementUpdateEvent:Fire("offtrack")
			end

			newMoveVector = self.moveVector:Lerp(moveDir, dt * 10)
		end
	end

	if IsFiniteVector3(newMoveVector) then
		self.moveVector = newMoveVector
	end
end


function VRNavigation:OnUserCFrameEnabled()
	if self:ShouldUseNavigationLaser() then
		self:BindJumpAction(false)
		self:SetLaserPointerMode("Navigation")
	else
		self:BindJumpAction(true)
		self:SetLaserPointerMode("Hidden")
	end
end

function VRNavigation:Enable(enable)

	self.moveVector = ZERO_VECTOR3
	self.isJumping = false

	if enable then
		self.navigationRequestedConn = VRService.NavigationRequested:Connect(function(destinationCFrame, inputUserCFrame) self:OnNavigationRequest(destinationCFrame, inputUserCFrame) end)
		self.heartbeatConn = RunService.Heartbeat:Connect(function(dt) self:OnHeartbeat(dt) end)

		ContextActionService:BindAction("MoveThumbstick", (function(actionName, inputState, inputObject) return self:ControlCharacterGamepad(actionName, inputState, inputObject) end),
			false, self.CONTROL_ACTION_PRIORITY, Enum.KeyCode.Thumbstick1)
		ContextActionService:BindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)

		self.userCFrameEnabledConn = VRService.UserCFrameEnabled:Connect(function() self:OnUserCFrameEnabled() end)
		self:OnUserCFrameEnabled()

		VRService:SetTouchpadMode(Enum.VRTouchpad.Left, Enum.VRTouchpadMode.VirtualThumbstick)
		VRService:SetTouchpadMode(Enum.VRTouchpad.Right, Enum.VRTouchpadMode.ABXY)

		self.enabled = true
	else
		-- Disable
		self:StopFollowingPath()

		ContextActionService:UnbindAction("MoveThumbstick")
		ContextActionService:UnbindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)

		self:BindJumpAction(false)
		self:SetLaserPointerMode("Disabled")

		if self.navigationRequestedConn then
			self.navigationRequestedConn:Disconnect()
			self.navigationRequestedConn = nil
		end
		if self.heartbeatConn then
			self.heartbeatConn:Disconnect()
			self.heartbeatConn = nil
		end
		if self.userCFrameEnabledConn then
			self.userCFrameEnabledConn:Disconnect()
			self.userCFrameEnabledConn = nil
		end
		self.enabled = false
	end
end

return VRNavigation
