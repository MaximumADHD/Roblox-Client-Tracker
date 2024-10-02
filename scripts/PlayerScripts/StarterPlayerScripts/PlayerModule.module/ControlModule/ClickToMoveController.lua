--!nonstrict
--[[
	-- Original By Kip Turner, Copyright Roblox 2014
	-- Updated by Garnold to utilize the new PathfindingService API, 2017
	-- 2018 PlayerScripts Update - AllYourBlox
--]]

--[[ Flags ]]
local FFlagUserExcludeNonCollidableForPathfindingSuccess, FFlagUserExcludeNonCollidableForPathfindingResult =
    pcall(function() return UserSettings():IsUserFeatureEnabled("UserExcludeNonCollidableForPathfinding") end)
local FFlagUserExcludeNonCollidableForPathfinding = FFlagUserExcludeNonCollidableForPathfindingSuccess and FFlagUserExcludeNonCollidableForPathfindingResult

local FFlagUserClickToMoveSupportAgentCanClimbSuccess, FFlagUserClickToMoveSupportAgentCanClimbResult =
    pcall(function() return UserSettings():IsUserFeatureEnabled("UserClickToMoveSupportAgentCanClimb2") end)
local FFlagUserClickToMoveSupportAgentCanClimb = FFlagUserClickToMoveSupportAgentCanClimbSuccess and FFlagUserClickToMoveSupportAgentCanClimbResult

--[[ Roblox Services ]]--
local UserInputService = game:GetService("UserInputService")
local PathfindingService = game:GetService("PathfindingService")
local Players = game:GetService("Players")
local DebrisService = game:GetService('Debris')
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")
local CollectionService = game:GetService("CollectionService")
local GuiService = game:GetService("GuiService")

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

local FFlagUserRaycastPerformanceImprovements = FlagUtil.getUserFlag("UserRaycastPerformanceImprovements")

--[[ Configuration ]]
local ShowPath = true
local PlayFailureAnimation = true
local UseDirectPath = false
local UseDirectPathForVehicle = true
local AgentSizeIncreaseFactor = 1.0
local UnreachableWaypointTimeout = 8

--[[ Constants ]]--
local movementKeys = {
	[Enum.KeyCode.W] = true;
	[Enum.KeyCode.A] = true;
	[Enum.KeyCode.S] = true;
	[Enum.KeyCode.D] = true;
	[Enum.KeyCode.Up] = true;
	[Enum.KeyCode.Down] = true;
}

local Player = Players.LocalPlayer

local ClickToMoveDisplay = require(script.Parent:WaitForChild("ClickToMoveDisplay"))

local ZERO_VECTOR3 = Vector3.new(0,0,0)
local ALMOST_ZERO = 0.000001

local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Exclude


--------------------------UTIL LIBRARY-------------------------------
local Utility = {}
if not FFlagUserRaycastPerformanceImprovements then
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

		local function Raycast(ray, ignoreNonCollidable: boolean, ignoreList: {Model})
			ignoreList = ignoreList or {}
			local hitPart, hitPos, hitNorm, hitMat = Workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
			if hitPart then
				if ignoreNonCollidable and hitPart.CanCollide == false then
					-- We always include character parts so a user can click on another character
					-- to walk to them.
					local _, humanoid = FindCharacterAncestor(hitPart)
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
end

local humanoidCache = {}
local function findPlayerHumanoid(player: Player)
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
local CurrentIgnoreList: {Model}
local CurrentIgnoreTag = nil

local TaggedInstanceAddedConnection: RBXScriptConnection? = nil
local TaggedInstanceRemovedConnection: RBXScriptConnection? = nil

local function GetCharacter(): Model
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

local function getIgnoreList(): {Model}
	if CurrentIgnoreList then
		return CurrentIgnoreList
	end
	CurrentIgnoreList = {}
	assert(CurrentIgnoreList, "")
	table.insert(CurrentIgnoreList, GetCharacter())
	return CurrentIgnoreList
end

local function minV(a: Vector3, b: Vector3)
	return Vector3.new(math.min(a.X, b.X), math.min(a.Y, b.Y), math.min(a.Z, b.Z))
end
local function maxV(a, b)
	return Vector3.new(math.max(a.X, b.X), math.max(a.Y, b.Y), math.max(a.Z, b.Z))
end
local function getCollidableExtentsSize(character: Model?)
	if character == nil or character.PrimaryPart == nil then return end
	assert(character, "")
	assert(character.PrimaryPart, "")
	local toLocalCFrame = character.PrimaryPart.CFrame:Inverse()
	local min = Vector3.new(math.huge, math.huge, math.huge)
	local max = Vector3.new(-math.huge, -math.huge, -math.huge)
	for _,descendant in pairs(character:GetDescendants()) do
		if descendant:IsA('BasePart') and descendant.CanCollide then
			local localCFrame = toLocalCFrame * descendant.CFrame
			local size = Vector3.new(descendant.Size.X / 2, descendant.Size.Y / 2, descendant.Size.Z / 2)
			local vertices = {
				Vector3.new( size.X,  size.Y,  size.Z),
				Vector3.new( size.X,  size.Y, -size.Z),
				Vector3.new( size.X, -size.Y,  size.Z),
				Vector3.new( size.X, -size.Y, -size.Z),
				Vector3.new(-size.X,  size.Y,  size.Z),
				Vector3.new(-size.X,  size.Y, -size.Z),
				Vector3.new(-size.X, -size.Y,  size.Z),
				Vector3.new(-size.X, -size.Y, -size.Z)
			}
			for _,vertex in ipairs(vertices) do
				local v = localCFrame * vertex
				min = minV(min, v)
				max = maxV(max, v)
			end
		end
	end
	local r = max - min
	if r.X < 0 or r.Y < 0 or r.Z < 0 then return nil end
	return r
end

-----------------------------------PATHER--------------------------------------

local function Pather(endPoint, surfaceNormal, overrideUseDirectPath: boolean?)
	local this = {}

	local directPathForHumanoid
	local directPathForVehicle
	if overrideUseDirectPath ~= nil then
		directPathForHumanoid = overrideUseDirectPath
		directPathForVehicle = overrideUseDirectPath
	else
		directPathForHumanoid = UseDirectPath
		directPathForVehicle = UseDirectPathForVehicle
	end

	this.Cancelled = false
	this.Started = false

	this.Finished = Instance.new("BindableEvent")
	this.PathFailed = Instance.new("BindableEvent")

	this.PathComputing = false
	this.PathComputed = false

	this.OriginalTargetPoint = endPoint
	this.TargetPoint = endPoint
	this.TargetSurfaceNormal = surfaceNormal

	this.DiedConn = nil
	this.SeatedConn = nil
	this.BlockedConn = nil
	this.TeleportedConn = nil

	this.CurrentPoint = 0

	this.HumanoidOffsetFromPath = ZERO_VECTOR3

	this.CurrentWaypointPosition = nil
	this.CurrentWaypointPlaneNormal = ZERO_VECTOR3
	this.CurrentWaypointPlaneDistance = 0
	this.CurrentWaypointNeedsJump = false;

	this.CurrentHumanoidPosition = ZERO_VECTOR3
	this.CurrentHumanoidVelocity = 0 :: Vector3 | number

	this.NextActionMoveDirection = ZERO_VECTOR3
	this.NextActionJump = false

	this.Timeout = 0

	this.Humanoid = findPlayerHumanoid(Player)
	this.OriginPoint = nil
	this.AgentCanFollowPath = false
	this.DirectPath = false
	this.DirectPathRiseFirst = false

	this.stopTraverseFunc = nil :: (() -> ())?
	this.setPointFunc = nil :: ((number) -> ())?
	this.pointList = nil :: {PathWaypoint}?

	local rootPart: BasePart = this.Humanoid and this.Humanoid.RootPart
	if rootPart then
		-- Setup origin
		this.OriginPoint = rootPart.CFrame.Position

		-- Setup agent
		local agentRadius = 2
		local agentHeight = 5
		local agentCanJump = true

		local seat = this.Humanoid.SeatPart
		if seat and seat:IsA("VehicleSeat") then
			-- Humanoid is seated on a vehicle
			local vehicle = seat:FindFirstAncestorOfClass("Model")
			if vehicle then
				-- Make sure the PrimaryPart is set to the vehicle seat while we compute the extends.
				local tempPrimaryPart = vehicle.PrimaryPart
				vehicle.PrimaryPart = seat

				-- For now, only direct path
				if directPathForVehicle then
					local extents: Vector3 = vehicle:GetExtentsSize()
					agentRadius = AgentSizeIncreaseFactor * 0.5 * math.sqrt(extents.X * extents.X + extents.Z * extents.Z)
					agentHeight = AgentSizeIncreaseFactor * extents.Y
					agentCanJump = false
					this.AgentCanFollowPath = true
					this.DirectPath = directPathForVehicle
				end

				-- Reset PrimaryPart
				vehicle.PrimaryPart = tempPrimaryPart
			end
		else
			local extents: Vector3?
			if FFlagUserExcludeNonCollidableForPathfinding then
				local character: Model? = GetCharacter()
				if character ~= nil then
					extents = getCollidableExtentsSize(character)
				end
			end
			if extents == nil then
				extents = GetCharacter():GetExtentsSize()
			end
			assert(extents, "")
			agentRadius = AgentSizeIncreaseFactor * 0.5 * math.sqrt(extents.X * extents.X + extents.Z * extents.Z)
			agentHeight = AgentSizeIncreaseFactor * extents.Y
			agentCanJump = (this.Humanoid.JumpPower > 0)
			this.AgentCanFollowPath = true
			this.DirectPath = directPathForHumanoid :: boolean
			this.DirectPathRiseFirst = this.Humanoid.Sit
		end

		-- Build path object
		if FFlagUserClickToMoveSupportAgentCanClimb then
			this.pathResult = PathfindingService:CreatePath({AgentRadius = agentRadius, AgentHeight = agentHeight, AgentCanJump = agentCanJump, AgentCanClimb = true})
		else
			this.pathResult = PathfindingService:CreatePath({AgentRadius = agentRadius, AgentHeight = agentHeight, AgentCanJump = agentCanJump})
		end
	end

	function this:Cleanup()
		if this.stopTraverseFunc then
			this.stopTraverseFunc()
			this.stopTraverseFunc = nil
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

		if this.TeleportedConn then
			this.TeleportedConn:Disconnect()
			this.TeleportedConn = nil
		end

		this.Started = false
	end

	function this:Cancel()
		this.Cancelled = true
		this:Cleanup()
	end

	function this:IsActive()
		return this.AgentCanFollowPath and this.Started and not this.Cancelled
	end

	function this:OnPathInterrupted()
		-- Stop moving
		this.Cancelled = true
		this:OnPointReached(false)
	end

	function this:ComputePath()
		if this.OriginPoint then
			if this.PathComputed or this.PathComputing then return end
			this.PathComputing = true
			if this.AgentCanFollowPath then
				if this.DirectPath then
					this.pointList = {
						PathWaypoint.new(this.OriginPoint, Enum.PathWaypointAction.Walk),
						PathWaypoint.new(this.TargetPoint, this.DirectPathRiseFirst and Enum.PathWaypointAction.Jump or Enum.PathWaypointAction.Walk)
					}
					this.PathComputed = true
				else
					this.pathResult:ComputeAsync(this.OriginPoint, this.TargetPoint)
					this.pointList = this.pathResult:GetWaypoints()
					this.BlockedConn = this.pathResult.Blocked:Connect(function(blockedIdx) this:OnPathBlocked(blockedIdx) end)
					this.PathComputed = this.pathResult.Status == Enum.PathStatus.Success
				end
			end
			this.PathComputing = false
		end
	end

	function this:IsValidPath()
		this:ComputePath()
		return this.PathComputed and this.AgentCanFollowPath
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

		this.OriginPoint = this.Humanoid.RootPart.CFrame.p

		this.pathResult:ComputeAsync(this.OriginPoint, this.TargetPoint)
		this.pointList = this.pathResult:GetWaypoints()
		if #this.pointList > 0 then
			this.HumanoidOffsetFromPath = this.pointList[1].Position - this.OriginPoint
		end
		this.PathComputed = this.pathResult.Status == Enum.PathStatus.Success

		if ShowPath then
			this.stopTraverseFunc, this.setPointFunc = ClickToMoveDisplay.CreatePathDisplay(this.pointList)
		end
		if this.PathComputed then
			this.CurrentPoint = 1 -- The first waypoint is always the start location. Skip it.
			this:OnPointReached(true) -- Move to first point
		else
			this.PathFailed:Fire()
			this:Cleanup()
		end

		this.Recomputing = false
	end

	function this:OnRenderStepped(dt: number)
		if this.Started and not this.Cancelled then
			-- Check for Timeout (if a waypoint is not reached within the delay, we fail)
			this.Timeout = this.Timeout + dt
			if this.Timeout > UnreachableWaypointTimeout then
				this:OnPointReached(false)
				return
			end

			-- Get Humanoid position and velocity
			this.CurrentHumanoidPosition = this.Humanoid.RootPart.Position + this.HumanoidOffsetFromPath
			this.CurrentHumanoidVelocity = this.Humanoid.RootPart.Velocity

			-- Check if it has reached some waypoints
			while this.Started and this:IsCurrentWaypointReached() do
				this:OnPointReached(true)
			end

			-- If still started, update actions
			if this.Started then
				-- Move action
				this.NextActionMoveDirection = this.CurrentWaypointPosition - this.CurrentHumanoidPosition
				if this.NextActionMoveDirection.Magnitude > ALMOST_ZERO then
					this.NextActionMoveDirection = this.NextActionMoveDirection.Unit
				else
					this.NextActionMoveDirection = ZERO_VECTOR3
				end
				-- Jump action
				if this.CurrentWaypointNeedsJump then
					this.NextActionJump = true
					this.CurrentWaypointNeedsJump = false	-- Request jump only once
				else
					this.NextActionJump = false
				end
			end
		end
	end

	function this:IsCurrentWaypointReached()
		local reached = false

		-- Check we do have a plane, if not, we consider the waypoint reached
		if this.CurrentWaypointPlaneNormal ~= ZERO_VECTOR3 then
			-- Compute distance of Humanoid from destination plane
			local dist = this.CurrentWaypointPlaneNormal:Dot(this.CurrentHumanoidPosition) - this.CurrentWaypointPlaneDistance
			-- Compute the component of the Humanoid velocity that is towards the plane
			local velocity = -this.CurrentWaypointPlaneNormal:Dot(this.CurrentHumanoidVelocity)
			-- Compute the threshold from the destination plane based on Humanoid velocity
			local threshold = math.max(1.0, 0.0625 * velocity)
			-- If we are less then threshold in front of the plane (between 0 and threshold) or if we are behing the plane (less then 0), we consider we reached it
			reached = dist < threshold
		else
			reached = true
		end

		if reached then
			this.CurrentWaypointPosition = nil
			this.CurrentWaypointPlaneNormal	= ZERO_VECTOR3
			this.CurrentWaypointPlaneDistance = 0
		end

		return reached
	end

	function this:OnPointReached(reached)

		if reached and not this.Cancelled then
			-- First, destroyed the current displayed waypoint
			if this.setPointFunc then
				this.setPointFunc(this.CurrentPoint)
			end

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
				local currentState = this.Humanoid:GetState()
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
						this.Humanoid.FreeFalling:Wait()

						-- Give time to the humanoid's state to change
						-- Otherwise, the jump flag in Humanoid
						-- will be reset by the state change
						wait(0.1)
					end
				end

				-- Move to the next point
				this:MoveToNextWayPoint(currentWaypoint, nextWaypoint, nextWaypointIdx)
			end
		else
			this.PathFailed:Fire()
			this:Cleanup()
		end
	end

	function this:MoveToNextWayPoint(currentWaypoint: PathWaypoint, nextWaypoint: PathWaypoint, nextWaypointIdx: number)
		-- Build next destination plane
		-- (plane normal is perpendicular to the y plane and is from next waypoint towards current one (provided the two waypoints are not at the same location))
		-- (plane location is at next waypoint)
		this.CurrentWaypointPlaneNormal = currentWaypoint.Position - nextWaypoint.Position
		
		-- plane normal isn't perpendicular to the y plane when climbing up
		if not FFlagUserClickToMoveSupportAgentCanClimb or (nextWaypoint.Label ~= "Climb") then
			this.CurrentWaypointPlaneNormal = Vector3.new(this.CurrentWaypointPlaneNormal.X, 0, this.CurrentWaypointPlaneNormal.Z)
		end
		if this.CurrentWaypointPlaneNormal.Magnitude > ALMOST_ZERO then
			this.CurrentWaypointPlaneNormal	= this.CurrentWaypointPlaneNormal.Unit
			this.CurrentWaypointPlaneDistance = this.CurrentWaypointPlaneNormal:Dot(nextWaypoint.Position)
		else
			-- Next waypoint is the same as current waypoint so no plane
			this.CurrentWaypointPlaneNormal	= ZERO_VECTOR3
			this.CurrentWaypointPlaneDistance = 0
		end

		-- Should we jump
		this.CurrentWaypointNeedsJump = nextWaypoint.Action == Enum.PathWaypointAction.Jump;

		-- Remember next waypoint position
		this.CurrentWaypointPosition = nextWaypoint.Position

		-- Move to next point
		this.CurrentPoint = nextWaypointIdx

		-- Finally reset Timeout
		this.Timeout = 0
	end

	function this:Start(overrideShowPath)
		if not this.AgentCanFollowPath then
			this.PathFailed:Fire()
			return
		end

		if this.Started then return end
		this.Started = true

		ClickToMoveDisplay.CancelFailureAnimation()

		if ShowPath then
			if overrideShowPath == nil or overrideShowPath then
				this.stopTraverseFunc, this.setPointFunc = ClickToMoveDisplay.CreatePathDisplay(this.pointList, this.OriginalTargetPoint)
			end
		end

		if #this.pointList > 0 then
			-- Determine the humanoid offset from the path's first point
			-- Offset of the first waypoint from the path's origin point
			this.HumanoidOffsetFromPath = Vector3.new(0, this.pointList[1].Position.Y - this.OriginPoint.Y, 0)

			-- As well as its current position and velocity
			this.CurrentHumanoidPosition = this.Humanoid.RootPart.Position + this.HumanoidOffsetFromPath
			this.CurrentHumanoidVelocity = this.Humanoid.RootPart.Velocity

			-- Connect to events
			this.SeatedConn = this.Humanoid.Seated:Connect(function(isSeated, seat) this:OnPathInterrupted() end)
			this.DiedConn = this.Humanoid.Died:Connect(function() this:OnPathInterrupted() end)
			this.TeleportedConn = this.Humanoid.RootPart:GetPropertyChangedSignal("CFrame"):Connect(function() this:OnPathInterrupted() end)

			-- Actually start
			this.CurrentPoint = 1 -- The first waypoint is always the start location. Skip it.
			this:OnPointReached(true) -- Move to first point
		else
			this.PathFailed:Fire()
			if this.stopTraverseFunc then
				this.stopTraverseFunc()
			end
		end
	end

	--We always raycast to the ground in the case that the user clicked a wall.
	local offsetPoint = this.TargetPoint + this.TargetSurfaceNormal*1.5
	if FFlagUserRaycastPerformanceImprovements then
		raycastParams.FilterDescendantsInstances = getIgnoreList()
		local raycastResult = Workspace:Raycast(offsetPoint, -Vector3.yAxis * 50, raycastParams)
	
		if raycastResult then
			this.TargetPoint = raycastResult.Position
		end
	else
		local ray = Ray.new(offsetPoint, Vector3.new(0,-1,0)*50)
		local newHitPart, newHitPos = Workspace:FindPartOnRayWithIgnoreList(ray, getIgnoreList())
		if newHitPart then
			this.TargetPoint = newHitPos
		end
	end
	this:ComputePath()

	return this
end

-------------------------------------------------------------------------

local function CheckAlive()
	local humanoid = findPlayerHumanoid(Player)
	return humanoid ~= nil and humanoid.Health > 0
end

local function GetEquippedTool(character: Model?)
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
	if ExistingPather then
		ExistingPather:Cancel()
		ExistingPather = nil
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
		ExistingIndicator:Destroy()
	end
end

local function HandleMoveTo(thisPather, hitPt, hitChar, character, overrideShowPath)
	if ExistingPather then
		CleanupPath()
	end
	ExistingPather = thisPather
	thisPather:Start(overrideShowPath)

	PathCompleteListener = thisPather.Finished.Event:Connect(function()
		CleanupPath()
		if hitChar then
			local currentWeapon = GetEquippedTool(character)
			if currentWeapon then
				currentWeapon:Activate()
			end
		end
	end)
	PathFailedListener = thisPather.PathFailed.Event:Connect(function()
		CleanupPath()
		if overrideShowPath == nil or overrideShowPath then
			local shouldPlayFailureAnim = PlayFailureAnimation and not (ExistingPather and ExistingPather:IsActive())
			if shouldPlayFailureAnim then
				ClickToMoveDisplay.PlayFailureAnimation()
			end
			ClickToMoveDisplay.DisplayFailureWaypoint(hitPt)
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

function OnTap(tapPositions: {Vector3}, goToPoint: Vector3?, wasTouchTap: boolean?)
	-- Good to remember if this is the latest tap event
	local camera = Workspace.CurrentCamera
	local character = Player.Character

	if not CheckAlive() then return end

	-- This is a path tap position
	if #tapPositions == 1 or goToPoint then
		if camera then
			local unitRay = camera:ScreenPointToRay(tapPositions[1].X, tapPositions[1].Y)
			
			if FFlagUserRaycastPerformanceImprovements then
				local humanoidResult, characterResult, raycastResult
				local ignoreList = getIgnoreList() or {}
				repeat
					local encounteredCollider = true
					raycastParams.FilterDescendantsInstances = ignoreList
					raycastResult = Workspace:Raycast(unitRay.Origin, unitRay.Direction * 1000, raycastParams)

					if raycastResult then
						local instance = raycastResult.Instance
						if not instance.CanCollide then
							repeat
								humanoidResult = instance:FindFirstChildOfClass("Humanoid")

								characterResult = instance
								instance = instance.Parent
							until humanoidResult or not instance or instance == Workspace

							if not humanoidResult then
								characterResult = nil
								encounteredCollider = false

								table.insert(ignoreList, instance)
							end
						end
					end
				until encounteredCollider

				if wasTouchTap and humanoidResult and StarterGui:GetCore("AvatarContextMenuEnabled") then
					local clickedPlayer = Players:GetPlayerFromCharacter(humanoidResult.Parent)
					if clickedPlayer then
						CleanupPath()
						return
					end
				end

				if not raycastResult or not character then
					return
				end

				local position = raycastResult.Position
				if goToPoint then 
					position = goToPoint
					characterResult = nil
				end
					-- Clean up current path
				CleanupPath()
				local thisPather = Pather(position, raycastResult.Normal)
				if thisPather:IsValidPath() then
					HandleMoveTo(thisPather, position, characterResult, character)
				else
					-- Clean up
					thisPather:Cleanup()
					-- Feedback here for when we don't have a good path
					ShowPathFailedFeedback(position)
				end
			else
				local ray = Ray.new(unitRay.Origin, unitRay.Direction*1000)
				local hitPart, hitPt, hitNormal = Utility.Raycast(ray, true, getIgnoreList())

				local hitChar, hitHumanoid = Utility.FindCharacterAncestor(hitPart)
				if wasTouchTap and hitHumanoid and StarterGui:GetCore("AvatarContextMenuEnabled") then
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
				if hitPt and character then
					-- Clean up current path
					CleanupPath()
					local thisPather = Pather(hitPt, hitNormal)
					if thisPather:IsValidPath() then
						HandleMoveTo(thisPather, hitPt, hitChar, character)
					else
						-- Clean up
						thisPather:Cleanup()
						-- Feedback here for when we don't have a good path
						ShowPathFailedFeedback(hitPt)
					end
				end
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

	self.keyboardMoveVector = ZERO_VECTOR3

	self.tapConn = nil
	self.inputBeganConn = nil
	self.inputChangedConn = nil
	self.inputEndedConn = nil
	self.humanoidDiedConn = nil
	self.characterChildAddedConn = nil
	self.onCharacterAddedConn = nil
	self.characterChildRemovedConn = nil
	self.renderSteppedConn = nil
	self.menuOpenedConnection = nil

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
	DisconnectEvent(self.menuOpenedConnection)
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

		-- Cancel path when you use the keyboard controls if wasd is enabled.
		if self.wasdEnabled and processed == false and input.UserInputType == Enum.UserInputType.Keyboard
			and movementKeys[input.KeyCode] then
			CleanupPath()
			ClickToMoveDisplay.CancelFailureAnimation()
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
			local currPos: Vector3 = input.Position
			-- We allow click to move during path following or if there is no keyboard movement
			local allowed = ExistingPather or self.keyboardMoveVector.Magnitude <= 0
			if self.mouse2UpTime - self.mouse2DownTime < 0.25 and (currPos - self.mouse2DownPos).magnitude < 5 and allowed then
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

	self.menuOpenedConnection = GuiService.MenuOpened:Connect(function()
		CleanupPath()
	end)

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

function ClickToMove:CleanupPath()
	CleanupPath()
end

function ClickToMove:Enable(enable: boolean, enableWASD: boolean, touchJumpController)
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
			self.running = false
		end
		if self.touchJumpController and not self.jumpEnabled then
			self.touchJumpController:Enable(true)
		end
		self.touchJumpController = nil
	end

	-- Extension for initializing Keyboard input as this class now derives from Keyboard
	KeyboardController.Enable(self, enable)

	self.wasdEnabled = enable and enableWASD or false
	self.enabled = enable
end

function ClickToMove:OnRenderStepped(dt)
	-- Reset jump
	self.isJumping = false

	-- Handle Pather
	if ExistingPather then
		-- Let the Pather update
		ExistingPather:OnRenderStepped(dt)

		-- If we still have a Pather, set the resulting actions
		if ExistingPather then
			-- Setup move (NOT relative to camera)
			self.moveVector = ExistingPather.NextActionMoveDirection
			self.moveVectorIsCameraRelative = false

			-- Setup jump (but do NOT prevent the base Keayboard class from requesting jumps as well)
			if ExistingPather.NextActionJump then
				self.isJumping = true
			end
		else
			self.moveVector = self.keyboardMoveVector
			self.moveVectorIsCameraRelative = true
		end
	else
		self.moveVector = self.keyboardMoveVector
		self.moveVectorIsCameraRelative = true
	end

	-- Handle Keyboard's jump
	if self.jumpRequested then
		self.isJumping = true
	end
end

-- Overrides Keyboard:UpdateMovement(inputState) to conditionally consider self.wasdEnabled and let OnRenderStepped handle the movement
function ClickToMove:UpdateMovement(inputState)
	if inputState == Enum.UserInputState.Cancel then
		self.keyboardMoveVector = ZERO_VECTOR3
	elseif self.wasdEnabled then
		self.keyboardMoveVector = Vector3.new(self.leftValue + self.rightValue, 0, self.forwardValue + self.backwardValue)
	end
end

-- Overrides Keyboard:UpdateJump() because jump is handled in OnRenderStepped
function ClickToMove:UpdateJump()
	-- Nothing to do (handled in OnRenderStepped)
end

--Public developer facing functions
function ClickToMove:SetShowPath(value)
	ShowPath = value
end

function ClickToMove:GetShowPath()
	return ShowPath
end

function ClickToMove:SetWaypointTexture(texture)
	ClickToMoveDisplay.SetWaypointTexture(texture)
end

function ClickToMove:GetWaypointTexture()
	return ClickToMoveDisplay.GetWaypointTexture()
end

function ClickToMove:SetWaypointRadius(radius)
	ClickToMoveDisplay.SetWaypointRadius(radius)
end

function ClickToMove:GetWaypointRadius()
	return ClickToMoveDisplay.GetWaypointRadius()
end

function ClickToMove:SetEndWaypointTexture(texture)
	ClickToMoveDisplay.SetEndWaypointTexture(texture)
end

function ClickToMove:GetEndWaypointTexture()
	return ClickToMoveDisplay.GetEndWaypointTexture()
end

function ClickToMove:SetWaypointsAlwaysOnTop(alwaysOnTop)
	ClickToMoveDisplay.SetWaypointsAlwaysOnTop(alwaysOnTop)
end

function ClickToMove:GetWaypointsAlwaysOnTop()
	return ClickToMoveDisplay.GetWaypointsAlwaysOnTop()
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

function ClickToMove:SetAgentSizeIncreaseFactor(increaseFactorPercent: number)
	AgentSizeIncreaseFactor = 1.0 + (increaseFactorPercent / 100.0)
end

function ClickToMove:GetAgentSizeIncreaseFactor()
	return (AgentSizeIncreaseFactor - 1.0) * 100.0
end

function ClickToMove:SetUnreachableWaypointTimeout(timeoutInSec)
	UnreachableWaypointTimeout = timeoutInSec
end

function ClickToMove:GetUnreachableWaypointTimeout()
	return UnreachableWaypointTimeout
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

function ClickToMove:MoveTo(position, showPath, useDirectPath)
	local character = Player.Character
	if character == nil then
		return false
	end
	local thisPather = Pather(position, Vector3.new(0, 1, 0), useDirectPath)
	if thisPather and thisPather:IsValidPath() then
		HandleMoveTo(thisPather, position, nil, character, showPath)
		return true
	end
	return false
end

return ClickToMove
