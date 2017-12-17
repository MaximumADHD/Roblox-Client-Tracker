-- Written By Kip Turner, Copyright Roblox 2014
-- Updated by Garnold to utilize the new PathfindingService API, 2017

local DEBUG_NAME = "ClickToMoveController"

local UIS = game:GetService("UserInputService")
local PathfindingService = game:GetService("PathfindingService")
local PlayerService = game:GetService("Players")
local RunService = game:GetService("RunService")
local DebrisService = game:GetService('Debris')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local tweenService = game:GetService("TweenService")



local Player = PlayerService.LocalPlayer
local PlayerScripts = Player.PlayerScripts

local CameraScript = script:FindFirstAncestor("CameraScript")
local InvisicamModule = nil
if CameraScript then
	InvisicamModule = require(CameraScript:WaitForChild("Invisicam"))
end

local MasterControlModule = script.Parent
local MasterControl = require(MasterControlModule)
local TouchJump = nil
if MasterControl then
	local TouchJumpModule = MasterControlModule:FindFirstChild("TouchJump")
	if TouchJumpModule then
		TouchJump = require(TouchJumpModule)
	end
end

local SHOW_PATH = true

local RayCastIgnoreList = workspace.FindPartOnRayWithIgnoreList

local math_min = math.min
local math_max = math.max
local math_pi = math.pi
local math_atan2 = math.atan2

local Vector3_new = Vector3.new
local Vector2_new = Vector2.new
local CFrame_new = CFrame.new

local CurrentSeatPart = nil
local DrivingTo = nil

local XZ_VECTOR3 = Vector3_new(1, 0, 1)
local ZERO_VECTOR3 = Vector3_new(0, 0, 0)
local ZERO_VECTOR2 = Vector2_new(0, 0)

local lastFailedPosition = nil

local BindableEvent_OnFailStateChanged = nil
if UIS.TouchEnabled then
	BindableEvent_OnFailStateChanged = MasterControl:GetClickToMoveFailStateChanged()
end

--------------------------UTIL LIBRARY-------------------------------
local Utility = {}
do
	local Signal = {}
	function Signal.Create()
		local sig = {}

		local mSignaler = Instance.new('BindableEvent')

		local mArgData = nil
		local mArgDataCount = nil

		function sig:fire(...)
			mArgData = {...}
			mArgDataCount = select('#', ...)
			mSignaler:Fire()
		end

		function sig:connect(f)
			if not f then error("connect(nil)", 2) end
			return mSignaler.Event:connect(function()
				f(unpack(mArgData, 1, mArgDataCount))
			end)
		end

		function sig:wait()
			mSignaler.Event:wait()
			assert(mArgData, "Missing arg data, likely due to :TweenSize/Position corrupting threadrefs.")
			return unpack(mArgData, 1, mArgDataCount)
		end

		return sig
	end
	Utility.Signal = Signal

	function Utility.Create(instanceType)
		return function(data)
			local obj = Instance.new(instanceType)
			for k, v in pairs(data) do
				if type(k) == 'number' then
					v.Parent = obj
				else
					obj[k] = v
				end
			end
			return obj
		end
	end

	local function ViewSizeX()
		local camera = workspace.CurrentCamera
		local x = camera and camera.ViewportSize.X or 0
		local y = camera and camera.ViewportSize.Y or 0
		if x == 0 then
			return 1024
		else
			if x > y then
				return x
			else
				return y
			end
		end
	end
	Utility.ViewSizeX = ViewSizeX

	local function ViewSizeY()
		local camera = workspace.CurrentCamera
		local x = camera and camera.ViewportSize.X or 0
		local y = camera and camera.ViewportSize.Y or 0
		if y == 0 then
			return 768
		else
			if x > y then
				return y
			else
				return x
			end
		end
	end
	Utility.ViewSizeY = ViewSizeY

	local function FindChacterAncestor(part)
		if part then
			local humanoid = part:FindFirstChild("Humanoid")
			if humanoid then
				return part, humanoid
			else
				return FindChacterAncestor(part.Parent)
			end
		end
	end
	Utility.FindChacterAncestor = FindChacterAncestor

	local function Raycast(ray, ignoreNonCollidable, ignoreList)
		local ignoreList = ignoreList or {}
		local hitPart, hitPos, hitNorm, hitMat = RayCastIgnoreList(workspace, ray, ignoreList)
		if hitPart then
			if ignoreNonCollidable and hitPart.CanCollide == false then
				table.insert(ignoreList, hitPart)
				return Raycast(ray, ignoreNonCollidable, ignoreList)
			end
			return hitPart, hitPos, hitNorm, hitMat
		end
		return nil, nil
	end
	Utility.Raycast = Raycast
	
	local function AveragePoints(positions)
		local avgPos = ZERO_VECTOR2
		if #positions > 0 then
			for i = 1, #positions do
				avgPos = avgPos + positions[i]
			end
			avgPos = avgPos / #positions
		end
		return avgPos
	end
	Utility.AveragePoints = AveragePoints

	local function FuzzyEquals(numa, numb)
		return numa + 0.1 > numb and numa - 0.1 < numb
	end
	Utility.FuzzyEquals = FuzzyEquals

	local LastInput = 0
	UIS.InputBegan:connect(function(inputObject, wasSunk)
		if not wasSunk then
			if inputObject.UserInputType == Enum.UserInputType.Touch or
					inputObject.UserInputType == Enum.UserInputType.MouseButton1 or
					inputObject.UserInputType == Enum.UserInputType.MouseButton2 then
				LastInput = tick()
			end
		end
	end)
	Utility.GetLastInput = function()
		return LastInput
	end
end

local humanoidCache = {}
local function findPlayerHumanoid(player)
	local character = player and player.Character
	if character then
		local resultHumanoid = humanoidCache[player]
		if resultHumanoid and resultHumanoid.Parent == character then
			return resultHumanoid
		else
			humanoidCache[player] = nil -- Bust Old Cache
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoidCache[player] = humanoid
			end
			return humanoid
		end
	end
end

---------------------------------------------------------

local Signal = Utility.Signal
local Create = Utility.Create

--------------------------CHARACTER CONTROL-------------------------------
local CurrentIgnoreList

local function GetCharacter()
	return Player and Player.Character
end

local function GetTorso()
	local humanoid = findPlayerHumanoid(Player)
	return humanoid and humanoid.Torso
end

local function getIgnoreList()
	if CurrentIgnoreList then
		return CurrentIgnoreList
	end
	CurrentIgnoreList = {}
	table.insert(CurrentIgnoreList, GetCharacter())
	return CurrentIgnoreList
end

-----------------------------------------------------------------------------

-----------------------------------PATHER--------------------------------------

local function createNewPopup(popupType)	
	
	local newModel = Instance.new("ImageHandleAdornment")
	
	newModel.AlwaysOnTop = false
	newModel.Image = "rbxasset://textures/ui/move.png"
	newModel.ZIndex = 2
	
	local size = ZERO_VECTOR2
	if popupType == "DestinationPopup" then
		newModel.Color3 = Color3.fromRGB(0, 175, 255)
		size = Vector2.new(4,4)
	elseif popupType == "DirectWalkPopup" then
		newModel.Color3 = Color3.fromRGB(0, 175, 255)
		size = Vector2.new(4,4)
	elseif popupType == "FailurePopup" then
		newModel.Color3 = Color3.fromRGB(255, 100, 100)
		size = Vector2.new(4,4)
	elseif popupType == "PatherPopup" then
		newModel.Color3 = Color3.fromRGB(255, 255, 255)
		size = Vector2.new(3,3)
		newModel.ZIndex = 1
	end
	
	local dataStructure = {}
	dataStructure.Model = newModel	
	
	function dataStructure:TweenIn()
		local tween1 = tweenService:Create(self.Model,
			TweenInfo.new(
				1,
				Enum.EasingStyle.Elastic,
				Enum.EasingDirection.Out,
				0,
				false,
				0
			),{
				Size = size
			}	
		)
		tween1:Play()
		return tween1
	end
	
	function dataStructure:TweenOut()
		local tween1 = tweenService:Create(self.Model,
			TweenInfo.new(
				.25,
				Enum.EasingStyle.Quad,
				Enum.EasingDirection.In,
				0,
				false,
				0
			),{
				Size = ZERO_VECTOR2
			}	
		)
		tween1:Play()
		return tween1
	end
	
	function dataStructure:Place(position, dest)
		-- place the model at position
		if not self.Model.Parent then
			self.Model.Parent = workspace.Terrain
			self.Model.Adornee = workspace.Terrain

			local ray = Ray.new(position + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0))
			local hitPart, hitPoint, hitNormal = workspace:FindPartOnRayWithIgnoreList(ray, { workspace.CurrentCamera, Player.Character })

			self.Model.CFrame = CFrame.new(hitPoint, hitPoint + hitNormal) * CFrame.Angles(0,0,0) + Vector3.new(0, 0.2,0)
		end
	end
	
	return dataStructure
end

local function createPopupPath(points, numCircles)
	-- creates a path with the provided points, using the path and number of circles provided
	local popups = {}
	local stopTraversing = false
	
	local function killPopup(i)
		-- kill all popups before and at i
		for iter, v in pairs(popups) do
			if iter <= i then
				local tween = v:TweenOut()
				spawn(function()
					tween.Completed:wait()
					v.Model:Destroy()
				end)
				popups[iter] = nil
			end
		end
	end	
	
	local function stopFunction()
		stopTraversing = true
		killPopup(#points)
	end
	
	spawn(function()
		for i = 1, #points do
			if stopTraversing then
				break
			end

			local includeWaypoint = i % numCircles == 0
			                    and i < #points
			                    and (points[#points].Position - points[i].Position).magnitude > 4
			if includeWaypoint then
				local popup = createNewPopup("PatherPopup")
				popups[i] = popup
				local nextPopup = points[i+1]
				popup:Place(points[i].Position, nextPopup and nextPopup.Position or points[#points].Position)
				local tween = popup:TweenIn()
				wait(0.2)
			end
		end
	end)
	
	return stopFunction, killPopup
end

local function Pather(character, endPoint, surfaceNormal)
	local this = {}

	this.Cancelled = false
	this.Started = false

	this.Finished = Signal.Create()
	this.PathFailed = Signal.Create()
	this.PathStarted = Signal.Create()
	
	this.PathComputing = false
	this.PathComputed = false
	
	this.TargetPoint = endPoint
	this.TargetSurfaceNormal = surfaceNormal
	
	this.MoveToConn = nil
	this.CurrentPoint = 0

	function this:Cleanup()
		if this.stopTraverseFunc then
			this.stopTraverseFunc()
		end

		if this.MoveToConn then
			this.MoveToConn:disconnect()
			this.MoveToConn = nil
			this.humanoid = nil
		end

		this.humanoid = nil
	end

	function this:Cancel()
		this.Cancelled = true
		this:Cleanup()
	end
	
	function this:ComputePath()
		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		local success = false
		if torso then
			if this.PathComputed or this.PathComputing then return end
			this.PathComputing = true
			success = pcall(function()
				this.pathResult = PathfindingService:FindPathAsync(torso.CFrame.p, this.TargetPoint)
			end)
			this.pointList = this.pathResult and this.pathResult:GetWaypoints()
			this.PathComputing = false
			this.PathComputed = this.pathResult and this.pathResult.Status == Enum.PathStatus.Success or false
		end
		return true
	end

	function this:IsValidPath()
		if not this.pathResult then
			this:ComputePath()
		end
		return this.pathResult.Status == Enum.PathStatus.Success
	end

	function this:OnPointReached(reached)

		if reached and not this.Cancelled then

			this.CurrentPoint = this.CurrentPoint + 1

			if this.CurrentPoint > #this.pointList then
				-- End of path reached
				if this.stopTraverseFunc then
					this.stopTraverseFunc()
				end
				this.Finished:fire()
				this:Cleanup()
			else
				-- If next action == Jump, but the humanoid
				-- is still jumping from a previous action
				-- wait until it gets to the ground
				if this.CurrentPoint + 1 <= #this.pointList then
					local nextAction = this.pointList[this.CurrentPoint + 1].Action
					if nextAction == Enum.PathWaypointAction.Jump then
						local currentState = this.humanoid:GetState()
						if currentState == Enum.HumanoidStateType.FallingDown or
						   currentState == Enum.HumanoidStateType.Freefall or
						   currentState == Enum.HumanoidStateType.Jumping then
						   
						   this.humanoid.FreeFalling:wait()

						   -- Give time to the humanoid's state to change
						   -- Otherwise, the jump flag in Humanoid
						   -- will be reset by the state change
						   wait(0.1)
						end
					end
				end

				-- Move to the next point
				if this.setPointFunc then
					this.setPointFunc(this.CurrentPoint)
				end

				local nextWaypoint = this.pointList[this.CurrentPoint]
				
				if nextWaypoint.Action == Enum.PathWaypointAction.Jump then
					this.humanoid.Jump = true
				end
				this.humanoid:MoveTo(nextWaypoint.Position)
			end
		else
			this.PathFailed:fire()
			this:Cleanup()
		end
	end

	function this:Start()
		if CurrentSeatPart then
			return
		end
		
		this.humanoid = findPlayerHumanoid(Player)
		if this.Started then return end
		this.Started = true
		
		if SHOW_PATH then
			-- choose whichever one Mike likes best
			this.stopTraverseFunc, this.setPointFunc = createPopupPath(this.pointList, 4)
		end

		if #this.pointList > 0 then
			this.MoveToConn = this.humanoid.MoveToFinished:connect(function(reached) this:OnPointReached(reached) end)
			this.CurrentPoint = 1 -- The first waypoint is always the start location. Skip it.
			this:OnPointReached(true) -- Move to first point
		else
			this.PathFailed:fire()
			if this.stopTraverseFunc then
				this.stopTraverseFunc()
			end
		end
	end
	
	this:ComputePath()
	if not this.PathComputed then
		-- set the end point towards the camera and raycasted towards the ground in case we hit a wall
		local offsetPoint = this.TargetPoint + this.TargetSurfaceNormal*1.5
		local ray = Ray.new(offsetPoint, Vector3_new(0,-1,0)*50)
		local newHitPart, newHitPos = RayCastIgnoreList(workspace, ray, getIgnoreList())
		if newHitPart then
			this.TargetPoint = newHitPos
		end
		-- try again
		this:ComputePath()
	end
	
	return this
end

-------------------------------------------------------------------------

local function IsInBottomLeft(pt)
	local joystickHeight = math_min(Utility.ViewSizeY() * 0.33, 250)
	local joystickWidth = joystickHeight
	return pt.X <= joystickWidth and pt.Y > Utility.ViewSizeY() - joystickHeight
end

local function IsInBottomRight(pt)
	local joystickHeight = math_min(Utility.ViewSizeY() * 0.33, 250)
	local joystickWidth = joystickHeight
	return pt.X >= Utility.ViewSizeX() - joystickWidth and pt.Y > Utility.ViewSizeY() - joystickHeight
end

local function CheckAlive(character)
	local humanoid = findPlayerHumanoid(Player)
	return humanoid ~= nil and humanoid.Health > 0
end

local function GetEquippedTool(character)
	if character ~= nil then
		for _, child in pairs(character:GetChildren()) do
			if child:IsA('Tool') then
				return child
			end
		end
	end
end

local ExistingPather = nil
local ExistingIndicator = nil
local PathCompleteListener = nil
local PathFailedListener = nil

local function CleanupPath()
	DrivingTo = nil
	if ExistingPather then
		ExistingPather:Cancel()
	end
	if PathCompleteListener then
		PathCompleteListener:disconnect()
		PathCompleteListener = nil
	end
	if PathFailedListener then
		PathFailedListener:disconnect()
		PathFailedListener = nil
	end
	if ExistingIndicator then
		local obj = ExistingIndicator
		local tween = obj:TweenOut()
		local tweenCompleteEvent = nil
		tweenCompleteEvent = tween.Completed:connect(function()
			tweenCompleteEvent:disconnect()
			obj.Model:Destroy()
		end)
		ExistingIndicator = nil
	end
end

local function getExtentsSize(Parts)
	local maxX,maxY,maxZ = -math.huge,-math.huge,-math.huge
	local minX,minY,minZ = math.huge,math.huge,math.huge
	for i = 1, #Parts do
		maxX,maxY,maxZ = math_max(maxX, Parts[i].Position.X), math_max(maxY, Parts[i].Position.Y), math_max(maxZ, Parts[i].Position.Z)
		minX,minY,minZ = math_min(minX, Parts[i].Position.X), math_min(minY, Parts[i].Position.Y), math_min(minZ, Parts[i].Position.Z)
	end
	return Region3.new(Vector3_new(minX, minY, minZ), Vector3_new(maxX, maxY, maxZ))
end

local function inExtents(Extents, Position)
	if Position.X < (Extents.CFrame.p.X - Extents.Size.X/2) or Position.X > (Extents.CFrame.p.X + Extents.Size.X/2) then
		return false
	end
	if Position.Z < (Extents.CFrame.p.Z - Extents.Size.Z/2) or Position.Z > (Extents.CFrame.p.Z + Extents.Size.Z/2) then
		return false
	end
	--ignoring Y for now
	return true
end

local FailCount = 0
local function OnTap(tapPositions, goToPoint)
	-- Good to remember if this is the latest tap event
	local camera = workspace.CurrentCamera
	local character = Player.Character
	
	if not CheckAlive(character) then return end
	
	-- This is a path tap position
	if #tapPositions == 1 or goToPoint then
		if camera then
			local unitRay = camera:ScreenPointToRay(tapPositions[1].x, tapPositions[1].y)
			local ray = Ray.new(unitRay.Origin, unitRay.Direction*1000)
			
			-- inivisicam stuff
			local initIgnore = getIgnoreList()
			local invisicamParts = InvisicamModule and InvisicamModule:GetObscuredParts() or {}
			local ignoreTab = {}
			
			-- add to the ignore list
			for i, v in pairs(invisicamParts) do
				ignoreTab[#ignoreTab+1] = i
			end
			for i = 1, #initIgnore do
				ignoreTab[#ignoreTab+1] = initIgnore[i]
			end
			--			
			local myHumanoid = findPlayerHumanoid(Player)
			local hitPart, hitPt, hitNormal, hitMat = Utility.Raycast(ray, true, ignoreTab)

			local hitChar, hitHumanoid = Utility.FindChacterAncestor(hitPart)
			local torso = GetTorso()
			local startPos = torso.CFrame.p
			if goToPoint then
				hitPt = goToPoint
				hitChar = nil
			end
			if hitChar and hitHumanoid and hitHumanoid.Torso and (hitHumanoid.Torso.CFrame.p - torso.CFrame.p).magnitude < 7 then
				CleanupPath()
				
				if myHumanoid then
					myHumanoid:MoveTo(hitPt)
				end
				-- Do shoot
				local currentWeapon = GetEquippedTool(character)
				if currentWeapon then
					currentWeapon:Activate()
					LastFired = tick()
				end
			elseif hitPt and character and not CurrentSeatPart then
				local thisPather = Pather(character, hitPt, hitNormal)
				if thisPather:IsValidPath() then
					FailCount = 0
					
					thisPather:Start()
					if BindableEvent_OnFailStateChanged then
						BindableEvent_OnFailStateChanged:Fire(false)
					end
					CleanupPath()
					
					local destinationPopup = createNewPopup("DestinationPopup")	
					destinationPopup:Place(hitPt, Vector3_new(0,hitPt.y,0))
					local failurePopup = createNewPopup("FailurePopup")
					local currentTween = destinationPopup:TweenIn()
					
					
					ExistingPather = thisPather
					ExistingIndicator = destinationPopup

					PathCompleteListener = thisPather.Finished:connect(function()
						if destinationPopup then
							if ExistingIndicator == destinationPopup then
								ExistingIndicator = nil
							end
							local tween = destinationPopup:TweenOut()
							local tweenCompleteEvent = nil
							tweenCompleteEvent = tween.Completed:connect(function()
								tweenCompleteEvent:disconnect()
								destinationPopup.Model:Destroy()
								destinationPopup = nil
							end)
						end
						if hitChar then
							local humanoid = findPlayerHumanoid(Player)
							local currentWeapon = GetEquippedTool(character)
							if currentWeapon then
								currentWeapon:Activate()
								LastFired = tick()
							end
							if humanoid then
	
								humanoid:MoveTo(hitPt)
							end
						end
					end)
					PathFailedListener = thisPather.PathFailed:connect(function()
						if failurePopup then
							failurePopup:Place(hitPt, Vector3_new(0,hitPt.y,0))
							local failTweenIn = failurePopup:TweenIn()
							failTweenIn.Completed:wait()
							local failTweenOut = failurePopup:TweenOut()
							failTweenOut.Completed:wait()
							failurePopup.Model:Destroy()
							failurePopup = nil
						end
					end)
				else
					if hitPt then
						-- Feedback here for when we don't have a good path
						local foundDirectPath = false
						if (hitPt-startPos).Magnitude < 25 and (startPos.y-hitPt.y > -3) then
							-- move directly here
							if myHumanoid then
								if myHumanoid.Sit then
									myHumanoid.Jump = true
								end
								local currentPosition
								myHumanoid:MoveTo(hitPt)
								foundDirectPath = true
							end
						end						
						
						spawn(function()
							local directPopup = createNewPopup(foundDirectPath and "DirectWalkPopup" or "FailurePopup")
							directPopup:Place(hitPt, Vector3_new(0,hitPt.y,0))
							local directTweenIn = directPopup:TweenIn()
							directTweenIn.Completed:wait()
							local directTweenOut = directPopup:TweenOut()
							directTweenOut.Completed:wait()
							directPopup.Model:Destroy()
							directPopup = nil
						end)
					end
				end
			elseif hitPt and character and CurrentSeatPart then 
				local destinationPopup = createNewPopup("DestinationPopup")	
				ExistingIndicator = destinationPopup
				destinationPopup:Place(hitPt, Vector3_new(0,hitPt.y,0))
				destinationPopup:TweenIn()
				
				DrivingTo = hitPt
				local ConnectedParts = CurrentSeatPart:GetConnectedParts(true)
				
				while wait() do
					if CurrentSeatPart and ExistingIndicator == destinationPopup then
						local ExtentsSize = getExtentsSize(ConnectedParts)
						if inExtents(ExtentsSize, hitPt) then
							local popup = destinationPopup
							spawn(function()
								local tweenOut = popup:TweenOut()
								tweenOut.Completed:wait()
								popup.Model:Destroy()
							end)
							destinationPopup = nil
							DrivingTo = nil
							break
						end
					else
						if CurrentSeatPart == nil and destinationPopup == ExistingIndicator then
							DrivingTo = nil
							OnTap(tapPositions, hitPt)
						end
						local popup = destinationPopup
						spawn(function()
							local tweenOut = popup:TweenOut()
							tweenOut.Completed:wait()
							popup.Model:Destroy()
						end)
						destinationPopup = nil
						break
					end
				end
			end
		end
	elseif #tapPositions >= 2 then
		if camera then
			-- Do shoot
			local avgPoint = Utility.AveragePoints(tapPositions)
			local unitRay = camera:ScreenPointToRay(avgPoint.x, avgPoint.y)
			local currentWeapon = GetEquippedTool(character)
			if currentWeapon then
				currentWeapon:Activate()
				LastFired = tick()
			end
		end
	end
end


local function CreateClickToMoveModule()
	local this = {}

	local LastStateChange = 0
	local LastState = Enum.HumanoidStateType.Running
	local FingerTouches = {}
	local NumUnsunkTouches = 0
	-- PC simulation
	local mouse1Down = tick()
	local mouse1DownPos = Vector2_new()
	local mouse2Down = tick()
	local mouse2DownPos = Vector2_new()
	local mouse2Up = tick()

	local movementKeys = {
		[Enum.KeyCode.W] = true;
		[Enum.KeyCode.A] = true;
		[Enum.KeyCode.S] = true;
		[Enum.KeyCode.D] = true;
		[Enum.KeyCode.Up] = true;
		[Enum.KeyCode.Down] = true;
	}

	local TapConn = nil
	local InputBeganConn = nil
	local InputChangedConn = nil
	local InputEndedConn = nil
	local HumanoidDiedConn = nil
	local CharacterChildAddedConn = nil
	local OnCharacterAddedConn = nil
	local CharacterChildRemovedConn = nil
	local RenderSteppedConn = nil
	local HumanoidSeatedConn = nil

	local function disconnectEvent(event)
		if event then
			event:disconnect()
		end
	end

	local function DisconnectEvents()
		disconnectEvent(TapConn)
		disconnectEvent(InputBeganConn)
		disconnectEvent(InputChangedConn)
		disconnectEvent(InputEndedConn)
		disconnectEvent(HumanoidDiedConn)
		disconnectEvent(CharacterChildAddedConn)
		disconnectEvent(OnCharacterAddedConn)
		disconnectEvent(RenderSteppedConn)
		disconnectEvent(CharacterChildRemovedConn)
		pcall(function() RunService:UnbindFromRenderStep("ClickToMoveRenderUpdate") end)
		disconnectEvent(HumanoidSeatedConn)
	end



	local function IsFinite(num)
		return num == num and num ~= 1/0 and num ~= -1/0
	end
	
	local function findAngleBetweenXZVectors(vec2, vec1)
		return math_atan2(vec1.X*vec2.Z-vec1.Z*vec2.X, vec1.X*vec2.X + vec1.Z*vec2.Z)
	end

	local function OnTouchBegan(input, processed)
		if FingerTouches[input] == nil and not processed then
			NumUnsunkTouches = NumUnsunkTouches + 1
		end
		FingerTouches[input] = processed
	end

	local function OnTouchChanged(input, processed)
		if FingerTouches[input] == nil then
			FingerTouches[input] = processed
			if not processed then
				NumUnsunkTouches = NumUnsunkTouches + 1
			end
		end
	end

	local function OnTouchEnded(input, processed)
		if FingerTouches[input] ~= nil and FingerTouches[input] == false then
			NumUnsunkTouches = NumUnsunkTouches - 1
		end
		FingerTouches[input] = nil
	end


	local function OnCharacterAdded(character)
		DisconnectEvents()

		InputBeganConn = UIS.InputBegan:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				OnTouchBegan(input, processed)

				-- Give back controls when they tap both sticks
				local wasInBottomLeft = IsInBottomLeft(input.Position)
				local wasInBottomRight = IsInBottomRight(input.Position)
				if wasInBottomRight or wasInBottomLeft then
					for otherInput, _ in pairs(FingerTouches) do
						if otherInput ~= input then
							local otherInputInLeft = IsInBottomLeft(otherInput.Position)
							local otherInputInRight = IsInBottomRight(otherInput.Position)
							if otherInput.UserInputState ~= Enum.UserInputState.End and ((wasInBottomLeft and otherInputInRight) or (wasInBottomRight and otherInputInLeft)) then
								if BindableEvent_OnFailStateChanged then
									BindableEvent_OnFailStateChanged:Fire(true)
								end
								return
							end
						end
					end
				end
			end

			 -- Cancel path when you use the keyboard controls.
			if processed == false and input.UserInputType == Enum.UserInputType.Keyboard and movementKeys[input.KeyCode] then
				CleanupPath()
			end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				mouse1Down = tick()
				mouse1DownPos = input.Position
			end
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				mouse2Down = tick()
				mouse2DownPos = input.Position
			end
		end)

		InputChangedConn = UIS.InputChanged:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				OnTouchChanged(input, processed)
			end
		end)

		InputEndedConn = UIS.InputEnded:connect(function(input, processed)
			if input.UserInputType == Enum.UserInputType.Touch then
				OnTouchEnded(input, processed)
			end

			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				mouse2Up = tick()
				local currPos = input.Position
				if mouse2Up - mouse2Down < 0.25 and (currPos - mouse2DownPos).magnitude < 5 then
					local positions = {currPos}
					OnTap(positions)
				end
			end
		end)

		TapConn = UIS.TouchTap:connect(function(touchPositions, processed)
			if not processed then
				OnTap(touchPositions)
			end
		end)
		
		local function computeThrottle(dist)
			if dist > .2 then
				return 0.5+(dist^2)/2
			else
				return 0
			end
		end		

		local lastSteer = 0

		--kP = how much the steering corrects for the current error in driving angle
		--kD = how much the steering corrects for how quickly the error in driving angle is changing
		local kP = 1
		local kD = 0.5
		local function getThrottleAndSteer(object, point)
			local throttle, steer = 0, 0
			local oCF = object.CFrame
			
			local relativePosition = oCF:pointToObjectSpace(point)
			local relativeZDirection = -relativePosition.z
			local relativeDistance = relativePosition.magnitude
			
			-- throttle quadratically increases from 0-1 as distance from the selected point goes from 0-50, after 50, throttle is 1.
			-- this allows shorter distance travel to have more fine-tuned control.
			throttle = computeThrottle(math_min(1,relativeDistance/50))*math.sign(relativeZDirection)
			
			local steerAngle = -math_atan2(-relativePosition.x, -relativePosition.z)
			steer = steerAngle/(math_pi/4)

			local steerDelta = steer - lastSteer
			lastSteer = steer
			local pdSteer = kP * steer + kD * steer
			return throttle, pdSteer
		end
		
		local function Update()
			if CurrentSeatPart then
				if DrivingTo then
					local throttle, steer = getThrottleAndSteer(CurrentSeatPart, DrivingTo)
					CurrentSeatPart.ThrottleFloat = throttle
					CurrentSeatPart.SteerFloat = steer
				else
					CurrentSeatPart.ThrottleFloat = 0
					CurrentSeatPart.SteerFloat = 0
				end
			end
		end
		
		RunService:BindToRenderStep("ClickToMoveRenderUpdate",Enum.RenderPriority.Camera.Value - 1,Update)
	
		local function onSeated(child, active, currentSeatPart)
			if active then
				if TouchJump and UIS.TouchEnabled then
					TouchJump:Enable()
				end
				if currentSeatPart and currentSeatPart.ClassName == "VehicleSeat" then
					CurrentSeatPart = currentSeatPart
				end
			else
				CurrentSeatPart = nil
				if TouchJump and UIS.TouchEnabled then
					TouchJump:Disable()
				end
			end
		end

		local function OnCharacterChildAdded(child)
			if UIS.TouchEnabled then
				if child:IsA('Tool') then
					child.ManualActivationOnly = true
				end
			end
			if child:IsA('Humanoid') then
				disconnectEvent(HumanoidDiedConn)
				HumanoidDiedConn = child.Died:connect(function()
					if ExistingIndicator then
						DebrisService:AddItem(ExistingIndicator.Model, 1)
					end
				end)
				HumanoidSeatedConn = child.Seated:connect(function(active, seat) onSeated(child, active, seat) end)
				if child.SeatPart then
					onSeated(child, true, child.SeatPart)
				end
			end
		end

		CharacterChildAddedConn = character.ChildAdded:connect(function(child)
			OnCharacterChildAdded(child)
		end)
		CharacterChildRemovedConn = character.ChildRemoved:connect(function(child)
			if UIS.TouchEnabled then
				if child:IsA('Tool') then
					child.ManualActivationOnly = false
				end
			end
		end)
		for _, child in pairs(character:GetChildren()) do
			OnCharacterChildAdded(child)
		end
	end

	local Running = false

	function this:Stop()
		if Running then
			DisconnectEvents()
			CleanupPath()
			-- Restore tool activation on shutdown
			if UIS.TouchEnabled then
				local character = Player.Character
				if character then
					for _, child in pairs(character:GetChildren()) do
						if child:IsA('Tool') then
							child.ManualActivationOnly = false
						end
					end
				end
			end
			DrivingTo = nil
			Running = false
		end
	end

	function this:Start()
		if not Running then
			if Player.Character then -- retro-listen
				OnCharacterAdded(Player.Character)
			end
			OnCharacterAddedConn = Player.CharacterAdded:connect(OnCharacterAdded)
			Running = true
		end
	end

	function this:Enable()
		self:Start()
	end
	
	function this:Disable()
		self:Stop()
	end

	function this:GetName()
		return DEBUG_NAME
	end

	return this
end

return CreateClickToMoveModule()