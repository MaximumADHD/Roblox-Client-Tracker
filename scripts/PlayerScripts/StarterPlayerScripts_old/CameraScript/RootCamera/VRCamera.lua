local PlayersService = game:GetService('Players')
local UserInputService = game:GetService('UserInputService')
local VRService = game:GetService("VRService")
local ContextActionService = game:GetService("ContextActionService")

local LocalPlayer = PlayersService.LocalPlayer

local RootCameraCreator = require(script.Parent)

local XZ_VECTOR = Vector3.new(1, 0, 1)
local ZERO_VECTOR2 = Vector2.new(0, 0)

local PRESNAP_TIME_OFFSET = 0.5 --seconds
local PRESNAP_TIME_LATCH = PRESNAP_TIME_OFFSET * 10

local HEIGHT_OFFSET = 3
local HORZ_OFFSET = 4

local function CreateVRCamera()
	local module = RootCameraCreator()
	module.AllowOcclusion = false
	
	local lastUpdate = tick()
	
	local forceSnap = true
	local forceSnapPoint = nil
	local lastLook = Vector3.new(0, 0, -1)
	
	local movementUpdateEventConn = nil
	
	local lastSnapTimeEstimate = math.huge
	local snapId = 0	
	local waitingForSnap = false
	local snappedHeadOffset = VRService:GetUserCFrame(Enum.UserCFrame.Head).p
	local snapPendingWhileJumping = false
	local isJumping = false
	local autoSnapsPaused = false
	
	local currentDestination = nil	
	
	local function forceSnapTo(snapPoint)
		forceSnap = true
		forceSnapPoint = snapPoint
		snapId = snapId + 1
		waitingForSnap = false
	end	
	
	local function onMovementUpdateEvent(updateType, arg1, arg2)
		if updateType == "targetPoint" then
			currentDestination = arg1
		end
		if updateType == "timing" then
			local estimatedTimeRemaining = arg1
			local snapPoint = arg2
			
			if waitingForSnap and estimatedTimeRemaining > lastSnapTimeEstimate then
				--our estimate grew, so cancel this snap and potentially re-evaluate it
				waitingForSnap = false
				snapId = snapId + 1
			end
			
			if estimatedTimeRemaining < PRESNAP_TIME_LATCH and estimatedTimeRemaining > PRESNAP_TIME_OFFSET then
				waitingForSnap = true
				snapId = snapId + 1
				local thisSnapId = snapId
				
				local timeToWait = estimatedTimeRemaining - PRESNAP_TIME_OFFSET
				coroutine.wrap(function()
					wait(timeToWait)
					if waitingForSnap and snapId == thisSnapId then
						waitingForSnap = false
						forceSnap = true
						forceSnapPoint = snapPoint
					end
				end)()
			end
		elseif updateType == "shortPath" or updateType == "pathFailure" or updateType == "offtrack" and not autoSnapsPaused then
			if isJumping then
				snapPendingWhileJumping = true
				return
			end
			local snapPoint = arg1
			forceSnapTo(snapPoint)
		elseif updateType == "force" then
			snapPendingWhileJumping = false
			isJumping = false
			forceSnapTo(nil)
		end
	end

	local function onResetCameraAction(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin then 
			autoSnapsPaused = true
			onMovementUpdateEvent("force", nil, nil) 
		else
			autoSnapsPaused = false
		end
	end
	
	local function bindActions(bind)
		if bind then
			ContextActionService:BindActionAtPriority("ResetCameraVR", onResetCameraAction, false, Enum.ContextActionPriority.Low.Value, Enum.KeyCode.ButtonL2)
		else
			autoSnapsPaused = false
			ContextActionService:UnbindAction("ResetCameraVR")
		end
	end
	
	local lastKnownTorsoPosition = Vector3.new()
	local function onCharacterAdded(character)
		local humanoid = character:WaitForChild("Humanoid")

		humanoid.StateChanged:connect(function(oldState, newState)
			local camera = workspace.CurrentCamera
			if not camera or camera.CameraSubject ~= humanoid or not VRService.VREnabled then
				return
			end
			if newState == Enum.HumanoidStateType.Jumping then
				isJumping = true
			elseif newState == Enum.HumanoidStateType.Landed then
				if snapPendingWhileJumping then
					forceSnapTo(nil)
					snapPendingWhileJumping = false
				end
				isJumping = false
			elseif newState == Enum.HumanoidStateType.Dead then
				forceSnapTo(nil)
			elseif newState == Enum.HumanoidStateType.Swimming then
				if isJumping and snapPendingWhileJumping then
					--Jumped into water and let go of controls during flight, treat as a normal landing
					forceSnapTo(nil)
					snapPendingWhileJumping = false
				end
				isJumping = false
			end
		end)

		local humanoidRootPart = humanoid.Torso
		humanoidRootPart.Changed:connect(function(property)
			local camera = workspace.CurrentCamera
			local cameraSubject = camera.CameraSubject
			if camera and cameraSubject == humanoid and property == "CFrame" or property == "Position" then
				if (humanoidRootPart.Position - lastKnownTorsoPosition).magnitude > 5 then
					forceSnapTo(nil)
				end
			end
		end)
	end
	
	if LocalPlayer.Character then
		onCharacterAdded(LocalPlayer.Character)		
	end
	LocalPlayer.CharacterAdded:connect(onCharacterAdded)
	
	spawn(function()
		local rootCamera = script.Parent
		if not rootCamera then return end
		
		local cameraScript = rootCamera.Parent
		if not cameraScript then return end
		
		local playerScripts = cameraScript.Parent
		if not playerScripts then return end
		
		local controlScript = playerScripts:WaitForChild("ControlScript")
		local masterControlModule = controlScript:WaitForChild("MasterControl")
		local vrNavigationModule = masterControlModule:WaitForChild("VRNavigation")
		local movementUpdateEvent = vrNavigationModule:WaitForChild("MovementUpdate")
		
		movementUpdateEventConn = movementUpdateEvent.Event:connect(onMovementUpdateEvent)
	end)
	
	local onCameraSubjectChangedConn = nil
	local function onCameraSubjectChanged()
		local camera = workspace.CurrentCamera
		if camera and camera.CameraSubject then
			delay(1, function () forceSnap = true end)
		end
	end

	local function onCurrentCameraChanged()
		if onCameraSubjectChangedConn then
			onCameraSubjectChangedConn:disconnect()
			onCameraSubjectChangedConn = nil
		end
		if workspace.CurrentCamera then
			onCameraSubjectChangedConn = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):connect(onCameraSubjectChanged)
			onCameraSubjectChanged()
		end
	end
	workspace:GetPropertyChangedSignal("CurrentCamera"):connect(onCurrentCameraChanged)
	onCurrentCameraChanged()
	
	local function onVREnabled()
		bindActions(VRService.VREnabled)
	end
	VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabled)

	function module:Update()
		local now = tick()
		local timeDelta = now - lastUpdate
		
		local camera = workspace.CurrentCamera
		local cameraSubject = camera and camera.CameraSubject
		local player = PlayersService.LocalPlayer
		local subjectPosition = self:GetSubjectPosition()
		local zoom = self:GetCameraZoom()
		
		local subjectPosition = self:GetSubjectPosition()
		local gamepadRotation = self:UpdateGamepad()			
		
		if subjectPosition and currentDestination then
			local dist = (currentDestination - subjectPosition).magnitude
			if dist < 10 then
				forceSnap = true
				forceSnapPoint = currentDestination
				currentDestination = nil
			end
		end
		
		if cameraSubject and cameraSubject:IsA("Humanoid") then
			local rootPart = cameraSubject.RootPart
			if rootPart then
				lastKnownTorsoPosition = rootPart.Position
			end
		end
		
		local look = lastLook
		if subjectPosition and forceSnap then
			forceSnap = false

			local newFocusPoint = subjectPosition
			if forceSnapPoint then
				newFocusPoint = Vector3.new(forceSnapPoint.X, subjectPosition.Y, forceSnapPoint.Z)
			end			
			
			camera.Focus = CFrame.new(newFocusPoint)
			forceSnapPoint = nil
			look = camera:GetRenderCFrame().lookVector
			snappedHeadOffset = VRService:GetUserCFrame(Enum.UserCFrame.Head).p
		end
		if subjectPosition and player and camera then			
			local cameraFocusP = camera.Focus.p
			self.RotateInput = ZERO_VECTOR2
			look = (look * XZ_VECTOR).unit
			camera.CFrame = CFrame.new(cameraFocusP - (HORZ_OFFSET * look)) + Vector3.new(0, HEIGHT_OFFSET, 0) - snappedHeadOffset
			
			self.LastCameraTransform = camera.CFrame
			self.LastCameraFocus = camera.Focus
		end
		lastLook = look
		
		lastUpdate = now
	end
	
	return module
end

return CreateVRCamera

