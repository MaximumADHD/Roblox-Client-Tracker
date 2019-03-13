--[[
	-- Original By Kip Turner, Copyright Roblox 2014
	-- Updated by Garnold to utilize the new PathfindingService API, 2017
	-- 2018 PlayerScripts Update - AllYourBlox
--]]

--[[ Roblox Services ]]--
local UserInputService = game:GetService("UserInputService")
local PathfindingService = game:GetService("PathfindingService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local DebrisService = game:GetService('Debris')
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")
local CollectionService = game:GetService("CollectionService")

--[[ Configuration ]]
local ShowPath = true
local PlayFailureAnimation = true
local UseDirectPath = false

--[[ Constants ]]--
local movementKeys = {
	[Enum.KeyCode.W] = true;
	[Enum.KeyCode.A] = true;
	[Enum.KeyCode.S] = true;
	[Enum.KeyCode.D] = true;
	[Enum.KeyCode.Up] = true;
	[Enum.KeyCode.Down] = true;
}

local FFlagUserNavigationClickToMoveSkipPassedWaypointsSuccess, FFlagUserNavigationClickToMoveSkipPassedWaypointsResult = pcall(function() return UserSettings():IsUserFeatureEnabled("UserNavigationClickToMoveSkipPassedWaypoints") end)
local FFlagUserNavigationClickToMoveSkipPassedWaypoints = FFlagUserNavigationClickToMoveSkipPassedWaypointsSuccess and FFlagUserNavigationClickToMoveSkipPassedWaypointsResult
local FFlagUserNewClickToMoveDisplaySuccess, FFlagUserNewClickToMoveDisplayValue = pcall(function() return UserSettings():IsUserFeatureEnabled("UserNewClickToMoveDisplay") end)
local FFlagUserNewClickToMoveDisplay = FFlagUserNewClickToMoveDisplaySuccess and FFlagUserNewClickToMoveDisplayValue

local FFlagUserFixClickToMoveWithACMSuccess, FFlagUserFixClickToMoveWithACMResult = pcall(function()
	return UserSettings():IsUserFeatureEnabled("UserFixClickToMoveWithACM")
end)
local FFlagUserFixClickToMoveWithACM = FFlagUserFixClickToMoveWithACMSuccess and FFlagUserFixClickToMoveWithACMResult

local Player = Players.LocalPlayer

local ClickToMoveDisplay = nil
if FFlagUserNewClickToMoveDisplay then
	ClickToMoveDisplay = require(script.Parent:WaitForChild("ClickToMoveDisplay"))
end

local CurrentSeatPart = nil
local DrivingTo = nil

local ZERO_VECTOR3 = Vector3.new(0,0,0)
local ZERO_VECTOR2 = Vector2.new(0,0)

--------------------------UTIL LIBRARY-------------------------------
local Utility = {}
do
	local function FindCharacterAncestor(part)
		if part then
			local humanoid = part:FindFirstChildOfClass("Humanoid")
			if humanoid then
				return part, humanoid
			else
				return FindCharacterAncestor(part.Parent)
			end
		end
	end
	Utility.FindCharacterAncestor = FindCharacterAncestor

	local function Raycast(ray, ignoreNonCollidable, ignoreList)
		ignoreList = ignoreList or {}
		local hitPart, hitPos, hitNorm, hitMat = Workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
		if hitPart then
			if ignoreNonCollidable and hitPart.CanCollide == false then
				-- We always include character parts so a user can click on another character
				-- to walk to them.
				local _, humanoid = nil, nil
				if FFlagUserFixClickToMoveWithACM then
					_, humanoid = FindCharacterAncestor(hitPart)
				end
				if humanoid == nil then
					table.insert(ignoreList, hitPart)
					return Raycast(ray, ignoreNonCollidable, ignoreList)
				end
			end
			return hitPart, hitPos, hitNorm, hitMat
		end
		return nil, nil
	end
	Utility.Raycast = Raycast
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

--------------------------CHARACTER CONTROL-------------------------------
local CurrentIgnoreList
local CurrentIgnoreTag = nil

local TaggedInstanceAddedConnection = nil
local TaggedInstanceRemovedConnection = nil

local function GetCharacter()
	return Player and Player.Character
end

local function UpdateIgnoreTag(newIgnoreTag)
	if newIgnoreTag == CurrentIgnoreTag then
		return
	end
	if TaggedInstanceAddedConnection then
		TaggedInstanceAddedConnection:Disconnect()
		TaggedInstanceAddedConnection = nil
	end
	if TaggedInstanceRemovedConnection then
		TaggedInstanceRemovedConnection:Disconnect()
		TaggedInstanceRemovedConnection = nil
	end
	CurrentIgnoreTag = newIgnoreTag
	CurrentIgnoreList = {GetCharacter()}
	if CurrentIgnoreTag ~= nil then
		local ignoreParts = CollectionService:GetTagged(CurrentIgnoreTag)
		for _, ignorePart in ipairs(ignoreParts) do
			table.insert(CurrentIgnoreList, ignorePart)
		end
		TaggedInstanceAddedConnection = CollectionService:GetInstanceAddedSignal(
			CurrentIgnoreTag):Connect(function(ignorePart)
			table.insert(CurrentIgnoreList, ignorePart)
		end)
		TaggedInstanceRemovedConnection = CollectionService:GetInstanceRemovedSignal(
			CurrentIgnoreTag):Connect(function(ignorePart)
			for i = 1, #CurrentIgnoreList do
				if CurrentIgnoreList[i] == ignorePart then
					CurrentIgnoreList[i] = CurrentIgnoreList[#CurrentIgnoreList]
					table.remove(CurrentIgnoreList)
					break
				end
			end
		end)
	end
end

local function getIgnoreList()
	if CurrentIgnoreList then
		return CurrentIgnoreList
	end
	CurrentIgnoreList = {}
	table.insert(CurrentIgnoreList, GetCharacter())
	return CurrentIgnoreList
end

-----------------------------------PATHER--------------------------------------

-- Remove with FFlagUserNewClickToMoveDisplay
local popupAdornee
local function getPopupAdorneePart()
	--Handle the case of the adornee part getting deleted (camera changed, maybe)
	if popupAdornee and not popupAdornee.Parent then
		popupAdornee = nil
	end

	--If the adornee doesn't exist yet, create it
	if not popupAdornee then
		popupAdornee = Instance.new("Part")
		popupAdornee.Name = "ClickToMovePopupAdornee"
		popupAdornee.Transparency = 1
		popupAdornee.CanCollide = false
		popupAdornee.Anchored = true
		popupAdornee.Size = Vector3.new(2, 2, 2)
		popupAdornee.CFrame = CFrame.new()

		popupAdornee.Parent = Workspace.CurrentCamera
	end

	return popupAdornee
end

local activePopups = {}
local function createNewPopup(popupType)
	local newModel = Instance.new("ImageHandleAdornment")

	newModel.AlwaysOnTop = false
	newModel.Transparency = 1
	newModel.Size = ZERO_VECTOR2
	newModel.SizeRelativeOffset = ZERO_VECTOR3
	newModel.Image = "rbxasset://textures/ui/move.png"
	newModel.ZIndex = 20

	local radius = 0
	if popupType == "DestinationPopup" then
		newModel.Color3 = Color3.fromRGB(0, 175, 255)
		radius = 1.25
	elseif popupType == "DirectWalkPopup" then
		newModel.Color3 = Color3.fromRGB(0, 175, 255)
		radius = 1.25
	elseif popupType == "FailurePopup" then
		newModel.Color3 = Color3.fromRGB(255, 100, 100)
		radius = 1.25
	elseif popupType == "PatherPopup" then
		newModel.Color3 = Color3.fromRGB(255, 255, 255)
		radius = 1
		newModel.ZIndex = 10
	end
	newModel.Size = Vector2.new(5, 0.1) * radius

	local dataStructure = {}
	dataStructure.Model = newModel

	activePopups[#activePopups + 1] = newModel

	function dataStructure:TweenIn()
		local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out)
		local tween1 = TweenService:Create(newModel, tweenInfo, { Size = Vector2.new(2,2) * radius })
		tween1:Play()
		TweenService:Create(
			newModel,
			TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0.1),
			{ Transparency = 0, SizeRelativeOffset = Vector3.new(0, radius * 1.5, 0) }
		):Play()
		return tween1
	end

	function dataStructure:TweenOut()
		local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		local tween1 = TweenService:Create(newModel, tweenInfo, { Size = ZERO_VECTOR2 })
		tween1:Play()

		coroutine.wrap(function()
			tween1.Completed:Wait()

			for i = 1, #activePopups do
				if activePopups[i] == newModel then
					table.remove(activePopups, i)
					break
				end
			end
		end)()
		return tween1
	end

	function dataStructure:Place(position)
		-- place the model at position
		if not self.Model.Parent then
			local popupAdorneePart = getPopupAdorneePart()
			self.Model.Parent = popupAdorneePart
			self.Model.Adornee = popupAdorneePart

			--Start the 10-stud long ray 2.5 studs above where the tap happened and point straight down to try to find
			--the actual ground position.
			local ray = Ray.new(position + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0))
			local _, hitPoint = Workspace:FindPartOnRayWithIgnoreList(
				ray, { Workspace.CurrentCamera, Player.Character }
			)

			self.Model.CFrame = CFrame.new(hitPoint) + Vector3.new(0, -radius,0)
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
				coroutine.wrap(function()
					tween.Completed:Wait()
					v.Model:Destroy()
				end)()
				popups[iter] = nil
			end
		end
	end

	local function stopFunction()
		stopTraversing = true
		killPopup(#points)
	end

	coroutine.wrap(function()
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
				popup:Place(points[i].Position)
				popup:TweenIn()
				wait(0.2)
			end
		end
	end)()

	return stopFunction, killPopup
end

local function Pather(character, endPoint, surfaceNormal)
	local this = {}

	this.Cancelled = false
	this.Started = false

	this.Finished = Instance.new("BindableEvent")
	this.PathFailed = Instance.new("BindableEvent")

	this.PathComputing = false
	this.PathComputed = false

	this.OriginalPoint = endPoint
	this.TargetPoint = endPoint
	this.TargetSurfaceNormal = surfaceNormal

	this.DiedConn = nil
	this.SeatedConn = nil
	this.MoveToConn = nil
	this.BlockedConn = nil
	this.CurrentPoint = 0

	function this:Cleanup()
		if this.stopTraverseFunc then
			this.stopTraverseFunc()
			this.stopTraverseFunc = nil
		end

		if this.MoveToConn then
			this.MoveToConn:Disconnect()
			this.MoveToConn = nil
		end

		if this.BlockedConn then
			this.BlockedConn:Disconnect()
			this.BlockedConn = nil
		end

		if this.DiedConn then
			this.DiedConn:Disconnect()
			this.DiedConn = nil
		end

		if this.SeatedConn then
			this.SeatedConn:Disconnect()
			this.SeatedConn = nil
		end

		this.humanoid = nil
	end

	function this:Cancel()
		this.Cancelled = true
		this:Cleanup()
	end

	function this:IsActive()
		return this.humanoid and this.Started and not this.Cancelled
	end

	function this:OnPathInterrupted()
		-- Stop moving
		this.Cancelled = true
		this:OnPointReached(false)
	end

	function this:ComputePath()
		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		if torso then
			if this.PathComputed or this.PathComputing then return end
			this.PathComputing = true
			pcall(function()
				this.pathResult = PathfindingService:FindPathAsync(torso.CFrame.p, this.TargetPoint)
			end)
			this.pointList = this.pathResult and this.pathResult:GetWaypoints()
			if this.pathResult then
				this.BlockedConn = this.pathResult.Blocked:Connect(function(blockedIdx) this:OnPathBlocked(blockedIdx) end)
			end
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

	this.Recomputing = false
	function this:OnPathBlocked(blockedWaypointIdx)
		local pathBlocked = blockedWaypointIdx >= this.CurrentPoint
		if not pathBlocked or this.Recomputing then
			return
		end

		this.Recomputing = true

		if this.stopTraverseFunc then
			this.stopTraverseFunc()
			this.stopTraverseFunc = nil
		end

		this.pathResult:ComputeAsync(this.humanoid.Torso.CFrame.p, this.TargetPoint)
		this.pointList = this.pathResult:GetWaypoints()
		this.PathComputed = this.pathResult and this.pathResult.Status == Enum.PathStatus.Success or false

		if ShowPath then
			if FFlagUserNewClickToMoveDisplay then
				this.stopTraverseFunc, this.setPointFunc = ClickToMoveDisplay.CreatePathDisplay(this.pointList)
			else
				this.stopTraverseFunc, this.setPointFunc = createPopupPath(this.pointList, 4, true)
			end
		end
		if this.PathComputed then
			this.humanoid = findPlayerHumanoid(Player)
			this.CurrentPoint = 1 -- The first waypoint is always the start location. Skip it.
			this:OnPointReached(true) -- Move to first point
		else
			this.PathFailed:Fire()
			this:Cleanup()
		end

		this.Recomputing = false
	end

	function this:OnPointReached(reached)

		if reached and not this.Cancelled then

			local nextWaypointIdx = this.CurrentPoint + 1

			if nextWaypointIdx > #this.pointList then
				-- End of path reached
				if this.stopTraverseFunc then
					this.stopTraverseFunc()
				end
				this.Finished:Fire()
				this:Cleanup()
			else
				local currentWaypoint = this.pointList[this.CurrentPoint]
				local nextWaypoint = this.pointList[nextWaypointIdx]

				-- If airborne, only allow to keep moving
				-- if nextWaypoint.Action ~= Jump, or path mantains a direction
				-- Otherwise, wait until the humanoid gets to the ground
				local currentState = this.humanoid:GetState()
				local isInAir = currentState == Enum.HumanoidStateType.FallingDown
					or currentState == Enum.HumanoidStateType.Freefall
					or currentState == Enum.HumanoidStateType.Jumping

				if isInAir then
					local shouldWaitForGround = nextWaypoint.Action == Enum.PathWaypointAction.Jump
					if not shouldWaitForGround and this.CurrentPoint > 1 then
						local prevWaypoint = this.pointList[this.CurrentPoint - 1]

						local prevDir = currentWaypoint.Position - prevWaypoint.Position
						local currDir = nextWaypoint.Position - currentWaypoint.Position

						local prevDirXZ = Vector2.new(prevDir.x, prevDir.z).Unit
						local currDirXZ = Vector2.new(currDir.x, currDir.z).Unit

						local THRESHOLD_COS = 0.996 -- ~cos(5 degrees)
						shouldWaitForGround = prevDirXZ:Dot(currDirXZ) < THRESHOLD_COS
					end

					if shouldWaitForGround then
						this.humanoid.FreeFalling:Wait()

						-- Give time to the humanoid's state to change
						-- Otherwise, the jump flag in Humanoid
						-- will be reset by the state change
						wait(0.1)
					end
				end

				-- Move to the next point
				if FFlagUserNavigationClickToMoveSkipPassedWaypoints then
					-- First, check if we already passed the next point
					local nextWaypointAlreadyReached
					-- 1) Build plane (normal is from next waypoint towards current one
					-- (provided the two waypoints are not at the same location); location is at next waypoint)
					local planeNormal = currentWaypoint.Position - nextWaypoint.Position
					if planeNormal.Magnitude > 0.000001 then
						planeNormal	= planeNormal.Unit
						local planeDistance	= planeNormal:Dot(nextWaypoint.Position)
						-- 2) Find current Humanoid position
						local humanoidPosition = this.humanoid.RootPart.Position - Vector3.new(
							0, 0.5 * this.humanoid.RootPart.Size.y + this.humanoid.HipHeight, 0)
						-- 3) Compute distance from plane
						local dist = planeNormal:Dot(humanoidPosition) - planeDistance
						-- 4) If we are less then a stud in front of the plane or if we are behing the plane, we consider we reached it
						nextWaypointAlreadyReached = dist < 1.0
					else
						-- Next waypoint is the same as current waypoint so we reached it as well
						nextWaypointAlreadyReached = true
					end

					-- Prepare for next point
					if this.setPointFunc then
						this.setPointFunc(nextWaypointIdx)
					end
					this.CurrentPoint = nextWaypointIdx

					-- Either callback here right away if next waypoint is already passed
					-- Otherwise, ask the Humanoid to MoveTo
					if nextWaypointAlreadyReached then
						this:OnPointReached(true)
					else
						if nextWaypoint.Action == Enum.PathWaypointAction.Jump then
							this.humanoid.Jump = true
						end
						this.humanoid:MoveTo(nextWaypoint.Position)
					end
				else
					if this.setPointFunc then
						this.setPointFunc(nextWaypointIdx)
					end
					if nextWaypoint.Action == Enum.PathWaypointAction.Jump then
						this.humanoid.Jump = true
					end
					this.humanoid:MoveTo(nextWaypoint.Position)

					this.CurrentPoint = nextWaypointIdx
				end
			end
		else
			this.PathFailed:Fire()
			this:Cleanup()
		end
	end

	function this:Start(overrideShowPath)
		if CurrentSeatPart then
			return
		end

		this.humanoid = findPlayerHumanoid(Player)
		if not this.humanoid then
			this.PathFailed:Fire()
			return
		end

		if this.Started then return end
		this.Started = true

		if FFlagUserNewClickToMoveDisplay then
			ClickToMoveDisplay.CancelFailureAnimation()
		end

		if ShowPath then
			-- choose whichever one Mike likes best
			if FFlagUserNewClickToMoveDisplay then
				if overrideShowPath == nil or overrideShowPath then
					this.stopTraverseFunc, this.setPointFunc = ClickToMoveDisplay.CreatePathDisplay(this.pointList, this.OriginalPoint)
				end
			else
				this.stopTraverseFunc, this.setPointFunc = createPopupPath(this.pointList, 4)
			end
		end

		if #this.pointList > 0 then
			this.SeatedConn = this.humanoid.Seated:Connect(function(reached) this:OnPathInterrupted() end)
			this.DiedConn = this.humanoid.Died:Connect(function(reached) this:OnPathInterrupted() end)
			this.MoveToConn = this.humanoid.MoveToFinished:Connect(function(reached) this:OnPointReached(reached) end)

			this.CurrentPoint = 1 -- The first waypoint is always the start location. Skip it.
			this:OnPointReached(true) -- Move to first point
		else
			this.PathFailed:Fire()
			if this.stopTraverseFunc then
				this.stopTraverseFunc()
			end
		end
	end

	if FFlagUserNewClickToMoveDisplay then
		--We always raycast to the ground in the case that the user clicked a wall.
		local offsetPoint = this.TargetPoint + this.TargetSurfaceNormal*1.5
		local ray = Ray.new(offsetPoint, Vector3.new(0,-1,0)*50)
		local newHitPart, newHitPos = Workspace:FindPartOnRayWithIgnoreList(ray, getIgnoreList())
		if newHitPart then
			this.TargetPoint = newHitPos
		end
		this:ComputePath()
	else
		this:ComputePath()
		if not this.PathComputed then
			-- set the end point towards the camera and raycasted towards the ground in case we hit a wall
			local offsetPoint = this.TargetPoint + this.TargetSurfaceNormal*1.5
			local ray = Ray.new(offsetPoint, Vector3.new(0,-1,0)*50)
			local newHitPart, newHitPos = Workspace:FindPartOnRayWithIgnoreList(ray, getIgnoreList())
			if newHitPart then
				this.TargetPoint = newHitPos
			end
			-- try again
			this:ComputePath()
		end
	end

	return this
end

-------------------------------------------------------------------------

local function CheckAlive()
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
		PathCompleteListener:Disconnect()
		PathCompleteListener = nil
	end
	if PathFailedListener then
		PathFailedListener:Disconnect()
		PathFailedListener = nil
	end
	if ExistingIndicator then
		if FFlagUserNewClickToMoveDisplay then
			ExistingIndicator:Destroy()
		else
			local obj = ExistingIndicator
			local tween = obj:TweenOut()
			local tweenCompleteEvent = nil
			tweenCompleteEvent = tween.Completed:connect(function()
				tweenCompleteEvent:Disconnect()
				obj.Model:Destroy()
			end)
			ExistingIndicator = nil
		end
	end
end

local function getExtentsSize(Parts)
	local maxX,maxY,maxZ = -math.huge,-math.huge,-math.huge
	local minX,minY,minZ = math.huge,math.huge,math.huge
	for i = 1, #Parts do
		local position = Parts[i].Position
		maxX = math.max(maxX, position.X)
		maxY = math.max(maxY, position.Y)
		maxZ = math.max(maxZ, position.Z)
		minX = math.min(minX, position.X)
		minY = math.min(minY, position.Y)
		minZ = math.min(minZ, position.Z)
	end
	return Region3.new(Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ))
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

-- Remove with FFlagUserNewClickToMoveDisplay
local function showQuickPopupAsync(position, popupType)
	local popup = createNewPopup(popupType)
	popup:Place(position)
	local tweenIn = popup:TweenIn()
	tweenIn.Completed:Wait()
	local tweenOut = popup:TweenOut()
	tweenOut.Completed:Wait()
	popup.Model:Destroy()
end

local function HandleDirectMoveTo(hitPt, myHumanoid)
	if myHumanoid then
		if myHumanoid.Sit then
			myHumanoid.Jump = true
		end
		myHumanoid:MoveTo(hitPt)
	end

	local endWaypoint = ClickToMoveDisplay.CreateEndWaypoint(hitPt)
	ExistingIndicator = endWaypoint
	coroutine.wrap(function()
		myHumanoid.MoveToFinished:wait()
		endWaypoint:Destroy()
	end)
end

local OnTap --Forward declared so it can be used in HandleDriveTo

local function HandleDriveTo(tapPositions, hitPt, character)
	local destinationPopup
	if FFlagUserNewClickToMoveDisplay then
		destinationPopup = ClickToMoveDisplay.CreateEndWaypoint(hitPt)
	else
		destinationPopup = createNewPopup("DestinationPopup")
		ExistingIndicator = destinationPopup
		destinationPopup:Place(hitPt)
		destinationPopup:TweenIn()
	end

	DrivingTo = hitPt
	local ConnectedParts = CurrentSeatPart:GetConnectedParts(true)

	local heartBeatConnection
	heartBeatConnection = RunService.Heartbeat:Connect(function()
		if CurrentSeatPart and ExistingIndicator == destinationPopup then
			local ExtentsSize = getExtentsSize(ConnectedParts)
			if inExtents(ExtentsSize, hitPt) then
				if FFlagUserNewClickToMoveDisplay then
					destinationPopup:Destroy()
				else
					local popup = destinationPopup
					coroutine.wrap(function()
						local tweenOut = popup:TweenOut()
						tweenOut.Completed:Wait()
						popup.Model:Destroy()
					end)()
				end
				DrivingTo = nil
				heartBeatConnection:Disconnect()
			end
		else
			if CurrentSeatPart == nil and destinationPopup == ExistingIndicator then
				DrivingTo = nil
				OnTap(tapPositions, hitPt)
			end
			if FFlagUserNewClickToMoveDisplay then
				destinationPopup:Destroy()
			else
				local popup = destinationPopup
				coroutine.wrap(function()
					local tweenOut = popup:TweenOut()
					tweenOut.Completed:Wait()
					popup.Model:Destroy()
				end)()
			end
			heartBeatConnection:Disconnect()
		end
	end)
end

local function HandleMoveTo(thisPather, hitPt, hitChar, character, overrideShowPath)
	thisPather:Start(overrideShowPath)
	CleanupPath()

	local destinationPopup = nil
	local failurePopup = nil
	if not FFlagUserNewClickToMoveDisplay then
		destinationPopup = createNewPopup("DestinationPopup")
		destinationPopup:Place(hitPt, Vector3.new(0, hitPt.y, 0))
		failurePopup = createNewPopup("FailurePopup")
		destinationPopup:TweenIn()
		ExistingIndicator = destinationPopup
	end

	ExistingPather = thisPather

	PathCompleteListener = thisPather.Finished.Event:Connect(function()
		if destinationPopup then -- Remove with FFlagUserNewClickToMoveDisplay
			if ExistingIndicator == destinationPopup then
				ExistingIndicator = nil
			end
			local tween = destinationPopup:TweenOut()
			local tweenCompleteEvent = nil
			tweenCompleteEvent = tween.Completed:Connect(function()
				tweenCompleteEvent:Disconnect()
				destinationPopup.Model:Destroy()
				destinationPopup = nil
			end)
		end
		if hitChar then
			local currentWeapon = GetEquippedTool(character)
			if currentWeapon then
				currentWeapon:Activate()
			end
		end
	end)
	PathFailedListener = thisPather.PathFailed.Event:Connect(function()
		CleanupPath()
		if FFlagUserNewClickToMoveDisplay then
			if overrideShowPath == nil or overrideShowPath then
				local shouldPlayFailureAnim = PlayFailureAnimation and not (ExistingPather and ExistingPather:IsActive())
				if shouldPlayFailureAnim then
					ClickToMoveDisplay.PlayFailureAnimation()
				end
				ClickToMoveDisplay.DisplayFailureWaypoint(hitPt)
			end
		else
			if failurePopup then
				failurePopup:Place(hitPt, Vector3.new(0,hitPt.y,0))
				local failTweenIn = failurePopup:TweenIn()
				failTweenIn.Completed:Wait()
				local failTweenOut = failurePopup:TweenOut()
				failTweenOut.Completed:Wait()
				failurePopup.Model:Destroy()
				failurePopup = nil
			end
		end
	end)
end

local function ShowPathFailedFeedback(hitPt)
	if ExistingPather and ExistingPather:IsActive() then
		ExistingPather:Cancel()
	end
	if PlayFailureAnimation then
		ClickToMoveDisplay.PlayFailureAnimation()
	end
	ClickToMoveDisplay.DisplayFailureWaypoint(hitPt)
end

function OnTap(tapPositions, goToPoint, wasTouchTap)
	-- Good to remember if this is the latest tap event
	local camera = Workspace.CurrentCamera
	local character = Player.Character

	if not CheckAlive() then return end

	-- This is a path tap position
	if #tapPositions == 1 or goToPoint then
		if camera then
			local unitRay = camera:ScreenPointToRay(tapPositions[1].x, tapPositions[1].y)
			local ray = Ray.new(unitRay.Origin, unitRay.Direction*1000)

			local myHumanoid = findPlayerHumanoid(Player)
			local hitPart, hitPt, hitNormal = Utility.Raycast(ray, true, getIgnoreList())

			local hitChar, hitHumanoid = Utility.FindCharacterAncestor(hitPart)
			if FFlagUserFixClickToMoveWithACM and wasTouchTap and
				hitHumanoid and StarterGui:GetCore("AvatarContextMenuEnabled") then
				local clickedPlayer = Players:GetPlayerFromCharacter(hitHumanoid.Parent)
				if clickedPlayer then
					CleanupPath()
					return
				end
			end
			if goToPoint then
				hitPt = goToPoint
				hitChar = nil
			end
			if UseDirectPath and hitPt and character and not CurrentSeatPart then
				HandleDirectMoveTo(hitPt, myHumanoid)
			elseif hitPt and character and not CurrentSeatPart then
				local thisPather = Pather(character, hitPt, hitNormal)
				if thisPather:IsValidPath() then
					HandleMoveTo(thisPather, hitPt, hitChar, character)
				else
					if hitPt then
						-- Feedback here for when we don't have a good path
						if FFlagUserNewClickToMoveDisplay then
							ShowPathFailedFeedback(hitPt)
						else
							coroutine.wrap(showQuickPopupAsync)(hitPt, "FailurePopup")
						end
					end
				end
			elseif hitPt and character and CurrentSeatPart then
				HandleDriveTo(tapPositions, hitPt, character)
			end
		end
	elseif #tapPositions >= 2 then
		if camera then
			-- Do shoot
			local currentWeapon = GetEquippedTool(character)
			if currentWeapon then
				currentWeapon:Activate()
			end
		end
	end
end

local function DisconnectEvent(event)
	if event then
		event:Disconnect()
	end
end

--[[ The ClickToMove Controller Class ]]--
local KeyboardController = require(script.Parent:WaitForChild("Keyboard"))
local ClickToMove = setmetatable({}, KeyboardController)
ClickToMove.__index = ClickToMove

function ClickToMove.new(CONTROL_ACTION_PRIORITY)
	local self = setmetatable(KeyboardController.new(CONTROL_ACTION_PRIORITY), ClickToMove)

	self.fingerTouches = {}
	self.numUnsunkTouches = 0
	-- PC simulation
	self.mouse1Down = tick()
	self.mouse1DownPos = Vector2.new()
	self.mouse2DownTime = tick()
	self.mouse2DownPos = Vector2.new()
	self.mouse2UpTime = tick()



	self.tapConn = nil
	self.inputBeganConn = nil
	self.inputChangedConn = nil
	self.inputEndedConn = nil
	self.humanoidDiedConn = nil
	self.characterChildAddedConn = nil
	self.onCharacterAddedConn = nil
	self.characterChildRemovedConn = nil
	self.renderSteppedConn = nil
	self.humanoidSeatedConn = nil

	self.running = false

	self.wasdEnabled = false

	return self
end

function ClickToMove:DisconnectEvents()
	DisconnectEvent(self.tapConn)
	DisconnectEvent(self.inputBeganConn)
	DisconnectEvent(self.inputChangedConn)
	DisconnectEvent(self.inputEndedConn)
	DisconnectEvent(self.humanoidDiedConn)
	DisconnectEvent(self.characterChildAddedConn)
	DisconnectEvent(self.onCharacterAddedConn)
	DisconnectEvent(self.renderSteppedConn)
	DisconnectEvent(self.characterChildRemovedConn)

	-- TODO: Resolve with ControlScript handling of seating for vehicles
	DisconnectEvent(self.humanoidSeatedConn)

	RunService:UnbindFromRenderStep("ClickToMoveRenderUpdate")
end

function ClickToMove:OnTouchBegan(input, processed)
	if self.fingerTouches[input] == nil and not processed then
		self.numUnsunkTouches = self.numUnsunkTouches + 1
	end
	self.fingerTouches[input] = processed
end

function ClickToMove:OnTouchChanged(input, processed)
	if self.fingerTouches[input] == nil then
		self.fingerTouches[input] = processed
		if not processed then
			self.numUnsunkTouches = self.numUnsunkTouches + 1
		end
	end
end

function ClickToMove:OnTouchEnded(input, processed)
	if self.fingerTouches[input] ~= nil and self.fingerTouches[input] == false then
		self.numUnsunkTouches = self.numUnsunkTouches - 1
	end
	self.fingerTouches[input] = nil
end


function ClickToMove:OnCharacterAdded(character)
	self:DisconnectEvents()

	self.inputBeganConn = UserInputService.InputBegan:Connect(function(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			self:OnTouchBegan(input, processed)
		end

		-- Cancel path when you use the keyboard controls.
		if processed == false and input.UserInputType == Enum.UserInputType.Keyboard and movementKeys[input.KeyCode] then
			CleanupPath()
		end
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.mouse1DownTime = tick()
			self.mouse1DownPos = input.Position
		end
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			self.mouse2DownTime = tick()
			self.mouse2DownPos = input.Position
		end
	end)

	self.inputChangedConn = UserInputService.InputChanged:Connect(function(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			self:OnTouchChanged(input, processed)
		end
	end)

	self.inputEndedConn = UserInputService.InputEnded:Connect(function(input, processed)
		if input.UserInputType == Enum.UserInputType.Touch then
			self:OnTouchEnded(input, processed)
		end

		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			self.mouse2UpTime = tick()
			local currPos = input.Position
			if self.mouse2UpTime - self.mouse2DownTime < 0.25 and
				(currPos - self.mouse2DownPos).magnitude < 5 and self.moveVector.Magnitude<=0 then
				local positions = {currPos}
				OnTap(positions)
			end
		end
	end)

	self.tapConn = UserInputService.TouchTap:Connect(function(touchPositions, processed)
		if not processed then
			OnTap(touchPositions, nil, true)
		end
	end)

	local function computeThrottle(dist)
		if dist > .2 then
			return 0.5+(dist^2)/2
		else
			return 0
		end
	end

	--kP = how much the steering corrects for the current error in driving angle
	--kD = how much the steering corrects for how quickly the error in driving angle is changing
	local kP = 1
	local kD = 0.5
	local function getThrottleAndSteer(object, point)
		local oCF = object.CFrame

		local relativePosition = oCF:pointToObjectSpace(point)
		local relativeZDirection = -relativePosition.z
		local relativeDistance = relativePosition.magnitude

		-- throttle quadratically increases from 0-1 as distance from the selected point goes from 0-50, after 50, throttle is 1.
		-- this allows shorter distance travel to have more fine-tuned control.
		local throttle = computeThrottle(math.min(1,relativeDistance/50))*math.sign(relativeZDirection)

		local steerAngle = -math.atan2(-relativePosition.x, -relativePosition.z)
		local steer = steerAngle/(math.pi/4)

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

		local cameraPos = Workspace.CurrentCamera.CFrame.p
		for i = 1, #activePopups do
			local popup = activePopups[i]
			popup.CFrame = CFrame.new(popup.CFrame.p, cameraPos)
		end
	end

	RunService:BindToRenderStep("ClickToMoveRenderUpdate",Enum.RenderPriority.Camera.Value - 1,Update)

	local function onSeated(active, currentSeatPart)
		if active then
			if currentSeatPart and currentSeatPart:IsA("VehicleSeat") then
				CurrentSeatPart = currentSeatPart
			end
		else
			CurrentSeatPart = nil
		end
	end

	local function OnCharacterChildAdded(child)
		if UserInputService.TouchEnabled then
			if child:IsA('Tool') then
				child.ManualActivationOnly = true
			end
		end
		if child:IsA('Humanoid') then
			DisconnectEvent(self.humanoidDiedConn)
			self.humanoidDiedConn = child.Died:Connect(function()
				if ExistingIndicator then
					DebrisService:AddItem(ExistingIndicator.Model, 1)
				end
			end)
			if FFlagUserNewClickToMoveDisplay then
				--[[ TODO: Restore this when click to move for vehicles has been fixed.
				self.humanoidSeatedConn = child.Seated:Connect(onSeated)
				if child.SeatPart then
					onSeated(true, child.SeatPart)
				end --]]
			end
		end
	end

	self.characterChildAddedConn = character.ChildAdded:Connect(function(child)
		OnCharacterChildAdded(child)
	end)
	self.characterChildRemovedConn = character.ChildRemoved:Connect(function(child)
		if UserInputService.TouchEnabled then
			if child:IsA('Tool') then
				child.ManualActivationOnly = false
			end
		end
	end)
	for _, child in pairs(character:GetChildren()) do
		OnCharacterChildAdded(child)
	end
end

function ClickToMove:Start()
	self:Enable(true)
end

function ClickToMove:Stop()
	self:Enable(false)
end

function ClickToMove:Enable(enable, enableWASD, touchJumpController)
	if enable then
		if not self.running then
			if Player.Character then -- retro-listen
				self:OnCharacterAdded(Player.Character)
			end
			self.onCharacterAddedConn = Player.CharacterAdded:Connect(function(char)
				self:OnCharacterAdded(char)
			end)
			self.running = true
		end
		self.touchJumpController = touchJumpController
		if self.touchJumpController then
			self.touchJumpController:Enable(self.jumpEnabled)
		end
	else
		if self.running then
			self:DisconnectEvents()
			CleanupPath()
			-- Restore tool activation on shutdown
			if UserInputService.TouchEnabled then
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
			self.running = false
		end
		if self.touchJumpController and not self.jumpEnabled then
			self.touchJumpController:Enable(true)
		end
		self.touchJumpController = nil
	end

	-- Extension for initializing Keyboard input as this class now derives from Keyboard
	if UserInputService.KeyboardEnabled and enable ~= self.enabled then

		self.forwardValue  = 0
		self.backwardValue = 0
		self.leftValue = 0
		self.rightValue = 0

		self.moveVector = ZERO_VECTOR3

		if enable then
			self:BindContextActions()
			self:ConnectFocusEventListeners()
		else
			self:UnbindContextActions()
			self:DisconnectFocusEventListeners()
		end
	end

	self.wasdEnabled = enable and enableWASD or false
	self.enabled = enable
end

-- Overrides Keyboard:UpdateMovement(inputState) to conditionally consider self.wasdEnabled
function ClickToMove:UpdateMovement(inputState)
	if inputState == Enum.UserInputState.Cancel then
		self.moveVector = ZERO_VECTOR3
	elseif self.wasdEnabled then
		self.moveVector = Vector3.new(self.leftValue + self.rightValue, 0, self.forwardValue + self.backwardValue)
		if FFlagUserNewClickToMoveDisplay and self.moveVector.magnitude > 0 then
			CleanupPath()
			ClickToMoveDisplay.CancelFailureAnimation()
		end
	end
end

--Public developer facing functions
function ClickToMove:SetShowPath(value)
	ShowPath = value
end

function ClickToMove:GetShowPath()
	return ShowPath
end

function ClickToMove:SetWaypointTexture(texture)
	if FFlagUserNewClickToMoveDisplay then
		ClickToMoveDisplay.SetWaypointTexture(texture)
	end
end

function ClickToMove:GetWaypointTexture()
	if FFlagUserNewClickToMoveDisplay then
		return ClickToMoveDisplay.GetWaypointTexture()
	end
	return ""
end

function ClickToMove:SetWaypointRadius(radius)
	if FFlagUserNewClickToMoveDisplay then
		ClickToMoveDisplay.SetWaypointRadius(radius)
	end
end

function ClickToMove:GetWaypointRadius()
	if FFlagUserNewClickToMoveDisplay then
		return ClickToMoveDisplay.GetWaypointRadius()
	end
	return 0
end

function ClickToMove:SetEndWaypointTexture(texture)
	if FFlagUserNewClickToMoveDisplay then
		ClickToMoveDisplay.SetEndWaypointTexture(texture)
	end
end

function ClickToMove:GetEndWaypointTexture()
	if FFlagUserNewClickToMoveDisplay then
		return ClickToMoveDisplay.GetEndWaypointTexture()
	end
	return ""
end

function ClickToMove:SetWaypointsAlwaysOnTop(alwaysOnTop)
	if FFlagUserNewClickToMoveDisplay then
		ClickToMoveDisplay.SetWaypointsAlwaysOnTop(alwaysOnTop)
	end
end

function ClickToMove:GetWaypointsAlwaysOnTop()
	if FFlagUserNewClickToMoveDisplay then
		return ClickToMoveDisplay.GetWaypointsAlwaysOnTop()
	end
	return false
end

function ClickToMove:SetFailureAnimationEnabled(enabled)
	PlayFailureAnimation = enabled
end

function ClickToMove:GetFailureAnimationEnabled()
	return PlayFailureAnimation
end

function ClickToMove:SetIgnoredPartsTag(tag)
	UpdateIgnoreTag(tag)
end

function ClickToMove:GetIgnoredPartsTag()
	return CurrentIgnoreTag
end

function ClickToMove:SetUseDirectPath(directPath)
	UseDirectPath = directPath
end

function ClickToMove:GetUseDirectPath()
	return UseDirectPath
end

function ClickToMove:SetUserJumpEnabled(jumpEnabled)
	self.jumpEnabled = jumpEnabled
	if self.touchJumpController then
		self.touchJumpController:Enable(jumpEnabled)
	end
end

function ClickToMove:GetUserJumpEnabled()
	return self.jumpEnabled
end

function ClickToMove:MoveTo(position, showPath)
	local character = Player.Character
	if character == nil then
		return false
	end
	local thisPather = Pather(character, position, Vector3.new(0, 1, 0))
	if thisPather:IsValidPath() then
		HandleMoveTo(thisPather, position, nil, character, showPath)
		return true
	end
	return false
end

return ClickToMove
