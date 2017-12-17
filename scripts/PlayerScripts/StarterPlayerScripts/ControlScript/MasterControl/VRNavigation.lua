local VRService = game:GetService("VRService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local PathfindingService = game:GetService("PathfindingService")
local ContextActionService = game:GetService("ContextActionService")
local StarterGui = game:GetService("StarterGui")

local MasterControl = require(script.Parent)
local PathDisplay = nil
local LocalPlayer = Players.LocalPlayer

local VRNavigation = {}

local RECALCULATE_PATH_THRESHOLD = 4
local NO_PATH_THRESHOLD = 12
local MAX_PATHING_DISTANCE = 200
local POINT_REACHED_THRESHOLD = 1
local STOPPING_DISTANCE = 4
local OFFTRACK_TIME_THRESHOLD = 2

local ZERO_VECTOR3 = Vector3.new(0, 0, 0)
local XZ_VECTOR3 = Vector3.new(1, 0, 1)

local THUMBSTICK_DEADZONE = 0.22

local navigationRequestedConn = nil
local heartbeatConn = nil

local currentDestination = nil
local currentPath = nil
local currentPoints = nil
local currentPointIdx = 0
local currentMoveVector = Vector3.new(0, 0, 0)

local expectedTimeToNextPoint = 0
local timeReachedLastPoint = tick()

local movementUpdateEvent = Instance.new("BindableEvent")
movementUpdateEvent.Name = "MovementUpdate"
movementUpdateEvent.Parent = script

coroutine.wrap(function()
	local PathDisplayModule = script.Parent.Parent:WaitForChild("PathDisplay")
	if PathDisplayModule then
		PathDisplay = require(PathDisplayModule)
	end
end)()

local function setLaserPointerMode(mode)
	pcall(function()
		StarterGui:SetCore("VRLaserPointerMode", mode)
	end)
end

local function getLocalHumanoid()
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

local function hasBothHandControllers()
	return VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) and VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
end

local function hasAnyHandControllers()
	return VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand) or VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand)
end

local function isMobileVR()
	return UserInputService.TouchEnabled
end

local function hasGamepad()
	return UserInputService.GamepadEnabled
end

local function shouldUseNavigationLaser()
	--Places where we use the navigation laser:
	-- mobile VR with any number of hands tracked
	-- desktop VR with only one hand tracked
	-- desktop VR with no hands and no gamepad (i.e. with Oculus remote?)
	--using an Xbox controller with a desktop VR headset means no laser since the user has a thumbstick.
	--in the future, we should query thumbstick presence with a features API
	if isMobileVR() then
		return true		
	else
		if hasBothHandControllers() then
			return false
		end
		if not hasAnyHandControllers() then
			return not hasGamepad()
		end
		return true
	end
end

local function IsFinite(num)
	return num == num and num ~= 1/0 and num ~= -1/0
end

local function IsFiniteVector3(vec3)
	return IsFinite(vec3.x) and IsFinite(vec3.y) and IsFinite(vec3.z)
end

local moving = false

local function startFollowingPath(newPath)
	currentPath = newPath
	currentPoints = currentPath:GetPointCoordinates()
	currentPointIdx = 1
	moving = true
	
	timeReachedLastPoint = tick()
	
	local humanoid = getLocalHumanoid()
	if humanoid and humanoid.Torso and #currentPoints >= 1 then
		local dist = (currentPoints[1] - humanoid.Torso.Position).magnitude
		expectedTimeToNextPoint = dist / humanoid.WalkSpeed
	end
	
	movementUpdateEvent:Fire("targetPoint", currentDestination)	
end

local function goToPoint(point)
	currentPath = true
	currentPoints = { point }
	currentPointIdx = 1
	moving = true

	local humanoid = getLocalHumanoid()
	local distance = (humanoid.Torso.Position - point).magnitude	
	local estimatedTimeRemaining = distance / humanoid.WalkSpeed 
	
	timeReachedLastPoint = tick()
	expectedTimeToNextPoint = estimatedTimeRemaining
	
	movementUpdateEvent:Fire("targetPoint", point)
end

local function stopFollowingPath()
	currentPath = nil
	currentPoints = nil
	currentPointIdx = 0
	moving = false
	MasterControl:AddToPlayerMovement(-currentMoveVector)
	currentMoveVector = ZERO_VECTOR3
end

local function tryComputePath(startPos, destination)
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
			startPos = startPos + (destination - startPos).unit
			newPath = nil
		end
		
		if newPath and newPath.Status == Enum.PathStatus.FailFinishNotEmpty then
			destination = destination + Vector3.new(0, 1, 0)
			newPath = nil
		end
	end
	
	return newPath
end

local function onNavigationRequest(destinationCFrame, requestedWith)
	local destinationPosition = destinationCFrame.p
	local lastDestination = currentDestination

	if not IsFiniteVector3(destinationPosition) then
		return
	end
	
	currentDestination = destinationPosition
		
	local humanoid = getLocalHumanoid()
	if not humanoid or not humanoid.Torso then
		return
	end
		
	local currentPosition = humanoid.Torso.Position
	local distanceToDestination = (currentDestination - currentPosition).magnitude
		
	if distanceToDestination < NO_PATH_THRESHOLD then
		goToPoint(currentDestination)
		return
	end		
		
	if not lastDestination or (currentDestination - lastDestination).magnitude > RECALCULATE_PATH_THRESHOLD then
		local newPath = tryComputePath(currentPosition, currentDestination)	
		if newPath then
			startFollowingPath(newPath)
			if PathDisplay then
				PathDisplay.setCurrentPoints(currentPoints)
				PathDisplay.renderPath()
			end
		else
			stopFollowingPath()
			if PathDisplay then
				PathDisplay.clearRenderedPath()
			end
		end
	else
		if moving then
			currentPoints[#currentPoints] = currentDestination
		else
			goToPoint(currentDestination)
		end
	end
end

local isJumpBound = false
local function onJumpAction(actionName, inputState, inputObj)
	if inputState == Enum.UserInputState.Begin then
		MasterControl:DoJump()
	end
end

local function bindJumpAction(active)
	if active then
		if not isJumpBound then
			isJumpBound = true
			ContextActionService:BindAction("VRJumpAction", onJumpAction, false, Enum.KeyCode.ButtonA)
		end
	else
		if isJumpBound then
			isJumpBound = false
			ContextActionService:UnbindAction("VRJumpAction")
		end
	end
end

local moveLatch = false
local controlCharacterGamepad = function(actionName, inputState, inputObject)
	if inputObject.KeyCode ~= Enum.KeyCode.Thumbstick1 then return end
	
	if inputState == Enum.UserInputState.Cancel then
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		currentMoveVector =  Vector3.new(0,0,0)
		return
	end
	
	if inputState ~= Enum.UserInputState.End then
		stopFollowingPath()		
		if PathDisplay then
			PathDisplay.clearRenderedPath()
		end
		
		if shouldUseNavigationLaser() then
			bindJumpAction(true)
			setLaserPointerMode("Hidden")
		end
		
		if inputObject.Position.magnitude > THUMBSTICK_DEADZONE then
			MasterControl:AddToPlayerMovement(-currentMoveVector)
			currentMoveVector = Vector3.new(inputObject.Position.X, 0, -inputObject.Position.Y)
			if currentMoveVector.magnitude > 0 then
				currentMoveVector = currentMoveVector.unit * math.min(1, inputObject.Position.magnitude)
			end
			MasterControl:AddToPlayerMovement(currentMoveVector)

			moveLatch = true
		end
	else
		MasterControl:AddToPlayerMovement(-currentMoveVector)
		currentMoveVector =  Vector3.new(0,0,0)
		
		if shouldUseNavigationLaser() then
			bindJumpAction(false)
			setLaserPointerMode("Navigation")
		end
		
		if moveLatch then
			moveLatch = false
			movementUpdateEvent:Fire("offtrack")
		end
	end
end

local function onHeartbeat(dt)
	local newMoveVector = currentMoveVector
	local humanoid = getLocalHumanoid()
	if not humanoid or not humanoid.Torso then
		return
	end

	if moving and currentPoints then
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
				stopFollowingPath()
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
			local ignoreTable = { 
				game.Players.LocalPlayer.Character, 
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
			
			local timeSinceLastPoint = tick() - timeReachedLastPoint
			if timeSinceLastPoint > expectedTimeToNextPoint + OFFTRACK_TIME_THRESHOLD then
				stopFollowingPath()
				if PathDisplay then
					PathDisplay.clearRenderedPath()
				end
				
				movementUpdateEvent:Fire("offtrack")
			end
				
			newMoveVector = currentMoveVector:Lerp(moveDir, dt * 10)
		end
	end
	
	if IsFiniteVector3(newMoveVector) then
		MasterControl:AddToPlayerMovement(newMoveVector - currentMoveVector)
		currentMoveVector = newMoveVector
	end
end

local userCFrameEnabledConn = nil
local function onUserCFrameEnabled()
	if shouldUseNavigationLaser() then
		bindJumpAction(false)
		setLaserPointerMode("Navigation")
	else
		bindJumpAction(true)
		setLaserPointerMode("Hidden")
	end
end

function VRNavigation:Enable()
	navigationRequestedConn = VRService.NavigationRequested:connect(onNavigationRequest)
	heartbeatConn = RunService.Heartbeat:connect(onHeartbeat)
	
	ContextActionService:BindAction("MoveThumbstick", controlCharacterGamepad, false, Enum.KeyCode.Thumbstick1)
	ContextActionService:BindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)	
	
	userCFrameEnabledConn = VRService.UserCFrameEnabled:connect(onUserCFrameEnabled)
	onUserCFrameEnabled()

	pcall(function()
		VRService:SetTouchpadMode(Enum.VRTouchpad.Left, Enum.VRTouchpadMode.VirtualThumbstick)
		VRService:SetTouchpadMode(Enum.VRTouchpad.Right, Enum.VRTouchpadMode.ABXY)
	end)
end

function VRNavigation:Disable()
	stopFollowingPath()
	
	ContextActionService:UnbindAction("MoveThumbstick")
	ContextActionService:UnbindActivate(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonR2)
	
	bindJumpAction(false)
	setLaserPointerMode("Disabled")
	
	if navigationRequestedConn then
		navigationRequestedConn:disconnect()
		navigationRequestedConn = nil
	end
	if heartbeatConn then
		heartbeatConn:disconnect()
		heartbeatConn = nil
	end
	if userCFrameEnabledConn then
		userCFrameEnabledConn:disconnect()
		userCFrameEnabledConn = nil
	end
end

return VRNavigation
