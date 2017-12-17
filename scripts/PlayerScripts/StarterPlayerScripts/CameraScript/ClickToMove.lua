-- Written By Kip Turner, Copyright Roblox 2014

local newClickToMove = script:FindFirstChild("NewClickToMove")
if newClickToMove then
	local newClickToMoveFlagSuccess, newClickToMoveFlagEnabled = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserUseNewClickToMove")
	end)
	local useNewClickToMove = newClickToMoveFlagSuccess and newClickToMoveFlagEnabled
	if useNewClickToMove then
		return require(newClickToMove)
	end
end

local UIS = game:GetService("UserInputService")
local PathfindingService = game:GetService("PathfindingService")
local PlayerService = game:GetService("Players")
local RunService = game:GetService("RunService")
local DebrisService = game:GetService('Debris')
local ReplicatedStorage = game:GetService('ReplicatedStorage')

local CameraScript = script.Parent
local ClassicCameraModule = require(CameraScript:WaitForChild('RootCamera'):WaitForChild('ClassicCamera'))

local Player = PlayerService.localPlayer
local MyMouse = Player:GetMouse()


local DirectPathEnabled = false
local SHOW_PATH = false

local Y_VECTOR3 = Vector3.new(0, 1, 0)
local XZ_VECTOR3 = Vector3.new(1, 0, 1)
local ZERO_VECTOR3 = Vector3.new(0, 0, 0)
local ZERO_VECTOR2 = Vector2.new(0, 0)

local RayCastIgnoreList = workspace.FindPartOnRayWithIgnoreList
local GetPartsTouchingExtents = workspace.FindPartsInRegion3

local math_min = math.min
local math_max = math.max
local math_pi = math.pi
local math_floor = math.floor
local math_abs = math.abs
local math_deg = math.deg
local math_acos = math.acos
local math_sin = math.sin
local math_atan2 = math.atan2

local Vector3_new = Vector3.new
local Vector2_new = Vector2.new
local CFrame_new = CFrame.new

local CurrentSeatPart = nil
local DrivingTo = nil

-- Bindable for when we want touch emergency controls
-- TODO: Click to move should probably have it's own gui touch controls
-- to manage this.
local BindableEvent_OnFailStateChanged = nil
local BindableEvent_EnableTouchJump = nil
if UIS.TouchEnabled then
	BindableEvent_OnFailStateChanged = Instance.new('BindableEvent')
	BindableEvent_OnFailStateChanged.Name = "OnClickToMoveFailStateChange"
	BindableEvent_EnableTouchJump = Instance.new('BindableEvent')
	BindableEvent_EnableTouchJump.Name = "EnableTouchJump"
	local CameraScript = script.Parent
	local PlayerScripts = CameraScript.Parent
	BindableEvent_OnFailStateChanged.Parent = PlayerScripts
	BindableEvent_EnableTouchJump.Parent = PlayerScripts
end

local function clamp(low, high, num)
	return (num > high and high or num < low and low or num)
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

	local function AspectRatio()
		return ViewSizeX() / ViewSizeY()
	end
	Utility.AspectRatio = AspectRatio

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


	local function GetUnitRay(x, y, viewWidth, viewHeight, camera)
		return camera:ScreenPointToRay(x, y)
	end
	Utility.GetUnitRay = GetUnitRay

	local function Raycast(ray, ignoreNonCollidable, ignoreList)
		local ignoreList = ignoreList or {}
		local hitPart, hitPos = RayCastIgnoreList(workspace, ray, ignoreList)
		if hitPart then
			if ignoreNonCollidable and hitPart.CanCollide == false then
				table.insert(ignoreList, hitPart)
				return Raycast(ray, ignoreNonCollidable, ignoreList)
			end
			return hitPart, hitPos
		end
		return nil, nil
	end
	Utility.Raycast = Raycast


	Utility.Round = function(num, roundToNearest)
		roundToNearest = roundToNearest or 1
		return math_floor((num + roundToNearest/2) / roundToNearest) * roundToNearest
	end

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

local GetThetaBetweenCFrames; do
	local components = CFrame.new().components
	local inverse = CFrame.new().inverse
	local acos = math.acos
	
	GetThetaBetweenCFrames = function(c0, c1) -- (CFrame from, CFrame to) -> (float theta)
		local _, _, _, xx, yx, zx,
		               xy, yy, zy,
		               xz, yz, zz = components(inverse(c0)*c1)
		local cosTheta = (xx + yy + zz - 1)/2
	
		if cosTheta >= 0.999 then
			-- Same rotation
			return 0
		elseif cosTheta <= -0.999 then
			-- Oposite rotations
			return math_pi
		else
			return acos(cosTheta)
		end
	end
end

---------------------------------------------------------

local Signal = Utility.Signal
local Create = Utility.Create

--------------------------CHARACTER CONTROL-------------------------------
local function CreateController()
	local this = {}

	this.TorsoLookPoint = nil

	function this:SetTorsoLookPoint(point)
		local humanoid = findPlayerHumanoid(Player)
		if humanoid then
			humanoid.AutoRotate = false
		end
		this.TorsoLookPoint = point
		self:UpdateTorso()
		delay(2,
			function()
			-- this isnt technically correct for detecting if this is the last issue to the setTorso function
			if this.TorsoLookPoint == point then
				this.TorsoLookPoint = nil
				if humanoid then
					humanoid.AutoRotate = true
				end
			end
		end)
	end

	function this:UpdateTorso(point)
		if this.TorsoLookPoint then
			point = this.TorsoLookPoint
		else
			return
		end

		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		if torso then
			local lookVec = (point - torso.CFrame.p).unit
			local squashedLookVec = Vector3_new(lookVec.X, 0, lookVec.Z).unit
			torso.CFrame = CFrame.new(torso.CFrame.p, torso.CFrame.p + squashedLookVec)
		end
	end

	return this
end

local CharacterControl = CreateController()
-----------------------------------------------------------------------

--------------------------PC AUTO JUMPER-------------------------------

local function GetCharacter()
	return Player and Player.Character
end

local function GetTorso()
	local humanoid = findPlayerHumanoid(Player)
	return humanoid and humanoid.Torso
end

local function IsPartAHumanoid(part)
	return part and part.Parent and (part.Parent:FindFirstChild('Humanoid') ~= nil)
end

local function doAutoJump()
	local character = GetCharacter()
	if (character == nil) then
		return;
	end

	local humanoid = findPlayerHumanoid(Player)
	if (humanoid == nil) then
		return;
	end

	local rayLength = 1.5;
	-- This is how high a ROBLOXian jumps from the mid point of his torso
	local jumpHeight = 7.0;

	local torso = GetTorso()
	if (torso == nil) then
		return;
	end

	local torsoCFrame = torso.CFrame;
	local torsoLookVector = torsoCFrame.lookVector;
	local torsoPos = torsoCFrame.p;

	local torsoRay = Ray.new(torsoPos + Vector3_new(0, -torso.Size.Y/2, 0), torsoLookVector * rayLength);
	local jumpRay = Ray.new(torsoPos + Vector3_new(0, jumpHeight - torso.Size.Y, 0), torsoLookVector * rayLength);

	local hitPart, _ = RayCastIgnoreList(workspace, torsoRay, {character}, false)
	local jumpHitPart, _ = RayCastIgnoreList(workspace, jumpRay, {character}, false)

	if (hitPart and jumpHitPart == nil and hitPart.CanCollide == true) then
		 -- NOTE: this follow line is not in the C++ impl, but an improvement  in Click to Move
		if not IsPartAHumanoid(hitPart) then
			humanoid.Jump = true;
		end
	end
end

local NO_JUMP_STATES =
{
	[Enum.HumanoidStateType.FallingDown] = false;
	[Enum.HumanoidStateType.Flying] = false;
	[Enum.HumanoidStateType.Freefall] = false;
	[Enum.HumanoidStateType.GettingUp] = false;
	[Enum.HumanoidStateType.Ragdoll] = false;
	[Enum.HumanoidStateType.Running] = false;
	[Enum.HumanoidStateType.Seated] = false;
	[Enum.HumanoidStateType.Swimming] = false;

	-- Special case to detect if we are on a ladder
	[Enum.HumanoidStateType.Climbing] = false;
}

local function enableAutoJump()
	local humanoid = findPlayerHumanoid(Player)
	local currentState = humanoid and humanoid:GetState()
	if currentState then
		return NO_JUMP_STATES[currentState] == nil
	end
	return false
end

local function getAutoJump()
	return true
end

local function vec3IsZero(vec3)
	return vec3.magnitude < 0.05
end

-- NOTE: This function is radically different from the engine's implementation
local walkVelocityVector = Vector3_new(1,1,1)
local function calcDesiredWalkVelocity()
	-- TEMP
	return walkVelocityVector
end

local function preStepSimulatorSide(dt)
	if getAutoJump() and enableAutoJump() then
		local desiredWalkVelocity = calcDesiredWalkVelocity();
		if (not vec3IsZero(desiredWalkVelocity)) then
			doAutoJump();
		end
	end
end

local function AutoJumper()
	local this = {}
	local running = false
	local runRoutine = nil

	function this:Run()
		running = true
		local thisRoutine = nil
		thisRoutine = coroutine.create(function()
			while running and thisRoutine == runRoutine do
				this:Step()
				wait()
			end
		end)
		runRoutine = thisRoutine
		coroutine.resume(thisRoutine)
	end

	function this:Stop()
		running = false
	end

	function this:Step()
		preStepSimulatorSide()
	end

	return this
end

-----------------------------------------------------------------------------

-----------------------------------PATHER--------------------------------------

local function CreateDestinationIndicator(pos)
	local destinationGlobe = Create'Part'
	{
		Name = 'PathGlobe';
		TopSurface = 'Smooth';
		BottomSurface = 'Smooth';
		Shape = 'Ball';
		CanCollide = false;
		Size = Vector3_new(2,2,2);
		BrickColor = BrickColor.new('Institutional white');
		Transparency = 0;
		Anchored = true;
		CFrame = CFrame.new(pos);
	}
	return destinationGlobe
end

local function Pather(character, point)
	local this = {}

	this.Cancelled = false
	this.Started = false

	this.Finished = Signal.Create()
	this.PathFailed = Signal.Create()
	this.PathStarted = Signal.Create()

	this.PathComputed = false

	function this:YieldUntilPointReached(character, point, timeout)
		timeout = timeout or 10000000

		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		local start = tick()
		local lastMoveTo = start
		while torso and tick() - start < timeout and this.Cancelled == false do
			local diffVector = (point - torso.CFrame.p)
			local xzMagnitude = (diffVector * XZ_VECTOR3).magnitude
			if xzMagnitude < 6 then
				-- Jump if the path is telling is to go upwards
				if diffVector.Y >= 2.2 then
					humanoid.Jump = true
				end
			end
			-- The hard-coded number 2 here is from the engine's MoveTo implementation
			if xzMagnitude < 2 then
				return true
			end
			-- Keep on issuing the move command because it will automatically quit every so often.
			if tick() - lastMoveTo > 1.5 then
				humanoid:MoveTo(point)
				lastMoveTo = tick()
			end
			CharacterControl:UpdateTorso(point)
			wait()
		end
		return false
	end

	function this:Cancel()
		this.Cancelled = true
		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		if humanoid and torso then
			humanoid:MoveTo(torso.CFrame.p)
		end
	end

	function this:CheckOcclusion(point1, point2, character, torsoRadius)
		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		if torsoRadius == nil then
			torsoRadius = torso and Vector3_new(torso.Size.X/2,0,torso.Size.Z/2) or XZ_VECTOR3
		end

		local diffVector = point2 - point1
		local directionVector = diffVector.unit

		local rightVector = Y_VECTOR3:Cross(directionVector) * torsoRadius

		local rightPart, _ = Utility.Raycast(Ray.new(point1 + rightVector, diffVector + rightVector), true, {character})
		local hitPart, _ = Utility.Raycast(Ray.new(point1, diffVector), true, {character})
		local leftPart, _ = Utility.Raycast(Ray.new(point1 - rightVector, diffVector - rightVector), true, {character})

		if rightPart or hitPart or leftPart then
			return false
		end

		-- Make sure we have somewhere to stand on
		local midPt = (point2 + point1) / 2
		local studsBetweenSamples = 2
		for i = 1, math_floor(diffVector.magnitude/studsBetweenSamples) do
			local downPart, _ = Utility.Raycast(Ray.new(point1 + directionVector * i * studsBetweenSamples, Vector3_new(0,-7,0)), true, {character})
			if not downPart then
				return false
			end
		end

		return true
	end

	function this:SmoothPoints(pathToSmooth)
		local result = {}

		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		for i = 1, #pathToSmooth do
			table.insert(result, pathToSmooth[i])
		end

		-- Backwards for safe-deletion
		for i = #result - 1, 1, -1 do
			if i + 1 <= #result then

				local nextPoint = result[i+1]
				local thisPoint = result[i]

				local lastPoint = result[i-1]
				if lastPoint == nil then
					lastPoint = torso and Vector3_new(torso.CFrame.p.X, thisPoint.Y, torso.CFrame.p.Z)
				end

				if lastPoint and Utility.FuzzyEquals(thisPoint.Y, lastPoint.Y) and Utility.FuzzyEquals(thisPoint.Y, nextPoint.Y) then
					if this:CheckOcclusion(lastPoint, nextPoint, character) then
						table.remove(result, i)
						-- Move i back one to recursively-smooth
						i = i + 1
					end
				end
			end
		end

		return result
	end

	function this:CheckNeighboringCells(character)
		local pathablePoints = {}
		local humanoid = findPlayerHumanoid(Player)
		local torso = character and humanoid and humanoid.Torso
		if torso then
			local torsoCFrame = torso.CFrame
			local torsoPos = torsoCFrame.p
			-- Minus and plus 2 is so we can get it into the cell-corner space and then translate it back into cell-center space
			local roundedPos = Vector3_new(Utility.Round(torsoPos.X-2,4)+2, Utility.Round(torsoPos.Y-2,4)+2, Utility.Round(torsoPos.Z-2,4)+2)
			local neighboringCells = {}
			for x = -4, 4, 8 do
				for z = -4, 4, 8 do
					table.insert(neighboringCells, roundedPos + Vector3_new(x,0,z))
				end
			end
			for _, testPoint in pairs(neighboringCells) do
				local pathable = this:CheckOcclusion(roundedPos, testPoint, character, ZERO_VECTOR3)
				if pathable then
					table.insert(pathablePoints, testPoint)
				end
			end
		end
		return pathablePoints
	end

	function this:ComputeDirectPath()
		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		if torso then
			local startPt = torso.CFrame.p
			local finishPt = point
			if (finishPt - startPt).magnitude < 150 then
				-- move back the destination by 2 studs or otherwise the pather will collide with the object we are trying to reach
				finishPt = finishPt - (finishPt - startPt).unit * 2
				if this:CheckOcclusion(startPt, finishPt, character, ZERO_VECTOR3) then
					local pathResult = {}
					pathResult.Status = Enum.PathStatus.Success
					function pathResult:GetPointCoordinates()
						return {finishPt}
					end
					return pathResult
				end
			end
		end
	end

	local function AllAxisInThreshhold(targetPt, otherPt, threshold)
		return math_abs(targetPt.X - otherPt.X) <= threshold and
			math_abs(targetPt.Y - otherPt.Y) <= threshold and
			math_abs(targetPt.Z - otherPt.Z) <= threshold
	end

	function this:ComputePath()
		local smoothed = false
		local humanoid = findPlayerHumanoid(Player)
		local torso = humanoid and humanoid.Torso
		if torso then
			if this.PathComputed then return end
			this.PathComputed = true
			-- Will yield the script since it is an Async script (start, finish, maxDistance)
			-- Try to use the smooth function, but it may not exist yet :(
			local success = pcall(function()
				-- 3 is height from torso cframe to ground
				this.pathResult = PathfindingService:ComputeSmoothPathAsync(torso.CFrame.p - Vector3_new(0,3,0), point, 400)
				smoothed = true
			end)
			if not success then
				-- 3 is height from torso cframe to ground
				this.pathResult = PathfindingService:ComputeRawPathAsync(torso.CFrame.p - Vector3_new(0,3,0), point, 400)
				smoothed = false
			end
			this.pointList = this.pathResult and this.pathResult:GetPointCoordinates()
			local pathFound = false
			if this.pathResult.Status == Enum.PathStatus.FailFinishNotEmpty then
				-- Lets try again with a slightly set back start point; it is ok to do this again so the FailFinishNotEmpty uses little computation
				local diffVector = point - workspace.CurrentCamera.CoordinateFrame.p
				if diffVector.magnitude > 2 then
					local setBackPoint = point - (diffVector).unit * 2.1
					local success = pcall(function()
						this.pathResult = PathfindingService:ComputeSmoothPathAsync(torso.CFrame.p, setBackPoint, 400)
						smoothed = true
					end)
					if not success then
						this.pathResult = PathfindingService:ComputeRawPathAsync(torso.CFrame.p, setBackPoint, 400)
						smoothed = false
					end
					this.pointList = this.pathResult and this.pathResult:GetPointCoordinates()
					pathFound = true
				end
			end
			if this.pathResult.Status == Enum.PathStatus.ClosestNoPath and #this.pointList >= 1 and pathFound == false then
				local otherPt = this.pointList[#this.pointList]
				if AllAxisInThreshhold(point, otherPt, 4) and (torso.CFrame.p - point).magnitude > (otherPt - point).magnitude then
					local pathResult = {}
					pathResult.Status = Enum.PathStatus.Success
					function pathResult:GetPointCoordinates()
						return {this.pointList}
					end
					this.pathResult = pathResult
					pathFound = true
				end
			end
			if (this.pathResult.Status == Enum.PathStatus.FailStartNotEmpty or this.pathResult.Status == Enum.PathStatus.ClosestNoPath) and pathFound == false then
				local pathablePoints = this:CheckNeighboringCells(character)
				for _, otherStart in pairs(pathablePoints) do
					local pathResult;
					local success = pcall(function()
						pathResult = PathfindingService:ComputeSmoothPathAsync(otherStart, point, 400)
						smoothed = true
					end)
					if not success then
						pathResult = PathfindingService:ComputeRawPathAsync(otherStart, point, 400)
						smoothed = false
					end
					if pathResult and pathResult.Status == Enum.PathStatus.Success then
						this.pathResult = pathResult
						if this.pathResult then
							this.pointList = this.pathResult:GetPointCoordinates()
							table.insert(this.pointList, 1, otherStart)
						end
						break
					end
				end
			end
			if DirectPathEnabled then
				if this.pathResult.Status ~= Enum.PathStatus.Success then
					local directPathResult = this:ComputeDirectPath()
					if directPathResult and directPathResult.Status == Enum.PathStatus.Success then
						this.pathResult = directPathResult
						this.pointList = directPathResult:GetPointCoordinates()
					end
				end
			end
		end
		return smoothed
	end

	function this:IsValidPath()
		this:ComputePath()
		local pathStatus = this.pathResult.Status
		return pathStatus == Enum.PathStatus.Success
	end

	function this:GetPathStatus()
		this:ComputePath()
		return this.pathResult.Status
	end

	function this:Start()
		if CurrentSeatPart then
			return
		end
		spawn(function()
			local humanoid = findPlayerHumanoid(Player)
			--humanoid.AutoRotate = false
			local torso = humanoid and humanoid.Torso
			if torso then
				if this.Started then return end
				this.Started = true
				-- Will yield the script since it is an Async function script (start, finish, maxDistance)
				local smoothed = this:ComputePath()
				if this:IsValidPath() then
					this.PathStarted:fire()
					-- smooth out zig-zaggy paths
					local smoothPath = smoothed and this.pointList or this:SmoothPoints(this.pointList)
					for i, point in pairs(smoothPath) do
						if humanoid then
							if this.Cancelled then
								return
							end

							local wayPoint = nil
							if SHOW_PATH then
								wayPoint = CreateDestinationIndicator(point)
								wayPoint.BrickColor = BrickColor.new("New Yeller")
								wayPoint.Parent = workspace
								print(wayPoint.CFrame.p)
							end

							humanoid:MoveTo(point)

							local distance = ((torso.CFrame.p - point) * XZ_VECTOR3).magnitude
							local approxTime = 10
							if math_abs(humanoid.WalkSpeed) > 0 then
								approxTime = distance / math_abs(humanoid.WalkSpeed)
							end

							local yielding = true

							if i == 1 then
								--local rotatedCFrame = CameraModule:LookAtPreserveHeight(point)
								if CameraModule then
									local rotatedCFrame = CameraModule:LookAtPreserveHeight(smoothPath[#smoothPath])
									local finishedSignal, duration = CameraModule:TweenCameraLook(rotatedCFrame)
								end
								--CharacterControl:SetTorsoLookPoint(point)
							end
							---[[
							if (humanoid.Torso.CFrame.p - point).magnitude > 9 then
								spawn(function()
									while yielding and this.Cancelled == false do
										if CameraModule then
											local look = CameraModule:GetCameraLook()
											local squashedLook = (look * XZ_VECTOR3).unit
											local direction = ((point - CameraModule.cframe.p) * XZ_VECTOR3).unit

											local theta = math_deg(math_acos(squashedLook:Dot(direction)))

											if tick() - Utility.GetLastInput() > 2 and theta > (workspace.CurrentCamera.FieldOfView / 2) then
												local rotatedCFrame = CameraModule:LookAtPreserveHeight(point)
												local finishedSignal, duration = CameraModule:TweenCameraLook(rotatedCFrame)
												--return
											end
										end
										wait(0.1)
									end
								end)
							end
							--]]
							local didReach = this:YieldUntilPointReached(character, point, approxTime * 3 + 1)

							yielding = false

							if SHOW_PATH then
								wayPoint:Destroy()
							end

							if not didReach then
								this.PathFailed:fire()
								return
							end
						end
					end

					this.Finished:fire()
					return
				end
			end
			this.PathFailed:fire()
		end)
	end

	return this
end

-------------------------------------------------------------------------

local function FlashRed(object)
	local origColor = object.BrickColor
	local redColor = BrickColor.new("Really red")
	local start = tick()
	local duration = 4
	spawn(function()
		while object and tick() - start < duration do
			object.BrickColor = origColor
			wait(0.13)
			if object then
				object.BrickColor = redColor
			end
			wait(0.13)
		end
	end)
end

--local joystickWidth = 250
--local joystickHeight = 250
local function IsInBottomLeft(pt)
	local joystickHeight = math.min(Utility.ViewSizeY() * 0.33, 250)
	local joystickWidth = joystickHeight
	return pt.X <= joystickWidth and pt.Y > Utility.ViewSizeY() - joystickHeight
end

local function IsInBottomRight(pt)
	local joystickHeight = math.min(Utility.ViewSizeY() * 0.33, 250)
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

local function ExploreWithRayCast(currentPoint, originDirection)
	local TestDistance = 40
	local TestVectors = {}
	do
		local forwardVector = originDirection;
		for i = 0, 15 do
			table.insert(TestVectors, CFrame.Angles(0, math.pi / 8 * i, 0) * forwardVector)
		end
	end

	local testResults = {}
	-- Heuristic should be something along the lines of distance and closeness to the traveling direction
	local function ExploreHeuristic()
		for _, testData in pairs(testResults) do
			local walkDirection = -1 * originDirection
			local directionCoeff = (walkDirection:Dot(testData['Vector']) + 1) / 2
			local distanceCoeff = testData['Distance'] / TestDistance
			testData["Value"] = directionCoeff * distanceCoeff
		end
	end

	for i, vec in pairs(TestVectors) do
		local hitPart, hitPos = Utility.Raycast(Ray.new(currentPoint, vec * TestDistance), true, {Player.Character})
		if hitPos then
			table.insert(testResults, {Vector = vec; Distance = (hitPos - currentPoint).magnitude})
		else
			table.insert(testResults, {Vector = vec; Distance = TestDistance})
		end
	end

	ExploreHeuristic()

	table.sort(testResults, function(a,b) return a["Value"] > b["Value"] end)

	return testResults
end

local TapId = 1
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
		DebrisService:AddItem(ExistingIndicator, 0)
		ExistingIndicator = nil
	end
end

local function getExtentsSize(Parts)
	local maxX = Parts[1].Position.X
	local maxY = Parts[1].Position.Y
	local maxZ = Parts[1].Position.Z
	local minX = Parts[1].Position.X
	local minY = Parts[1].Position.Y
	local minZ = Parts[1].Position.Z
	for i = 2, #Parts do
		maxX = math_max(maxX, Parts[i].Position.X)
		maxY = math_max(maxY, Parts[i].Position.Y)
		maxZ = math_max(maxZ, Parts[i].Position.Z)
		minX = math_min(minX, Parts[i].Position.X)
		minY = math_min(minY, Parts[i].Position.Y)
		minZ = math_min(minZ, Parts[i].Position.Z)
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

local AutoJumperInstance = nil
local ShootCount = 0
local FailCount = 0
local function OnTap(tapPositions, goToPoint)
	-- Good to remember if this is the latest tap event
	TapId = TapId + 1
	local thisTapId = TapId


	local camera = workspace.CurrentCamera
	local character = Player.Character


	if not CheckAlive(character) then return end

	-- This is a path tap position
	if #tapPositions == 1 or goToPoint then
		if camera then
			local unitRay = Utility.GetUnitRay(tapPositions[1].x, tapPositions[1].y, MyMouse.ViewSizeX, MyMouse.ViewSizeY, camera)
			local ray = Ray.new(unitRay.Origin, unitRay.Direction*400)
			local hitPart, hitPt = Utility.Raycast(ray, true, {character})

			local hitChar, hitHumanoid = Utility.FindChacterAncestor(hitPart)
			local torso = character and character:FindFirstChild("Humanoid") and character:FindFirstChild("Humanoid").Torso
			local startPos = torso.CFrame.p
			if goToPoint then
				hitPt = goToPoint
				hitChar = nil
			end
			if hitChar and hitHumanoid and hitHumanoid.Torso and (hitHumanoid.Torso.CFrame.p - torso.CFrame.p).magnitude < 7 then
				CleanupPath()

				local myHumanoid = findPlayerHumanoid(Player)
				if myHumanoid then
					myHumanoid:MoveTo(hitPt)
				end

				ShootCount = ShootCount + 1
				local thisShoot = ShootCount
				-- Do shooot
				local currentWeapon = GetEquippedTool(character)
				if currentWeapon then
					currentWeapon:Activate()
					LastFired = tick()
				end
			elseif hitPt and character and not CurrentSeatPart then
				local thisPather = Pather(character, hitPt)
				if thisPather:IsValidPath() then
					FailCount = 0
					-- TODO: Remove when bug in engine is fixed
					Player:Move(Vector3_new(1, 0, 0))
					Player:Move(ZERO_VECTOR3)
					thisPather:Start()
					if BindableEvent_OnFailStateChanged then
						BindableEvent_OnFailStateChanged:Fire(false)
					end
					CleanupPath()

					local destinationGlobe = CreateDestinationIndicator(hitPt)
					destinationGlobe.Parent = camera

					ExistingPather = thisPather
					ExistingIndicator = destinationGlobe

					if AutoJumperInstance then
						AutoJumperInstance:Run()
					end

					PathCompleteListener = thisPather.Finished:connect(function()
						if AutoJumperInstance then
							AutoJumperInstance:Stop()
						end
						if destinationGlobe then
							if ExistingIndicator == destinationGlobe then
								ExistingIndicator = nil
							end
							DebrisService:AddItem(destinationGlobe, 0)
							destinationGlobe = nil
						end
						if hitChar then
							local humanoid = findPlayerHumanoid(Player)
							ShootCount = ShootCount + 1
							local thisShoot = ShootCount
							-- Do shoot
							local currentWeapon = GetEquippedTool(character)
							if currentWeapon then
								currentWeapon:Activate()
								LastFired = tick()
							end
							if humanoid then
								humanoid:MoveTo(hitPt)
							end
						end
						local finishPos = torso and torso.CFrame.p --hitPt
						if finishPos and startPos and tick() - Utility.GetLastInput() > 2 then
							local exploreResults = ExploreWithRayCast(finishPos, ((startPos - finishPos) * XZ_VECTOR3).unit)
							-- Check for Nans etc..
							if exploreResults[1] and exploreResults[1]["Vector"] and exploreResults[1]["Vector"].magnitude >= 0.5 and exploreResults[1]["Distance"] > 3 then
								if CameraModule then
									local rotatedCFrame = CameraModule:LookAtPreserveHeight(finishPos + exploreResults[1]["Vector"] * exploreResults[1]["Distance"])
									local finishedSignal, duration = CameraModule:TweenCameraLook(rotatedCFrame)
								end
							end
						end
					end)
					PathFailedListener = thisPather.PathFailed:connect(function()
						if AutoJumperInstance then
							AutoJumperInstance:Stop()
						end
						if destinationGlobe then
							FlashRed(destinationGlobe)
							DebrisService:AddItem(destinationGlobe, 3)
						end
					end)
				else
					if hitPt then
						-- Feedback here for when we don't have a good path
						local failedGlobe = CreateDestinationIndicator(hitPt)
						FlashRed(failedGlobe)
						DebrisService:AddItem(failedGlobe, 1)
						failedGlobe.Parent = camera
						if ExistingIndicator == nil then
							FailCount = FailCount + 1
							if FailCount >= 3 then
								if BindableEvent_OnFailStateChanged then
									BindableEvent_OnFailStateChanged:Fire(true)
								end
								CleanupPath()
							end
						end
					end
				end
			elseif hitPt and character and CurrentSeatPart then 
				local destinationGlobe = CreateDestinationIndicator(hitPt)
				destinationGlobe.Parent = camera
				ExistingIndicator = destinationGlobe
				DrivingTo = hitPt		
				local ConnectedParts = CurrentSeatPart:GetConnectedParts(true)
				
				while wait() do
					if CurrentSeatPart and ExistingIndicator == destinationGlobe then
						local ExtentsSize = getExtentsSize(ConnectedParts)
						if inExtents(ExtentsSize, destinationGlobe.Position) then
							DebrisService:AddItem(destinationGlobe, 0)
							destinationGlobe = nil
							DrivingTo = nil
							break
						end
					else
						DebrisService:AddItem(destinationGlobe, 0)
						if CurrentSeatPart == nil and destinationGlobe == ExistingIndicator then
							DrivingTo = nil
							OnTap(tapPositions, hitPt)
						end
						destinationGlobe = nil
						break
					end
				end		
				
			else
				-- no hit pt
			end
		end
	elseif #tapPositions >= 2 then
		if camera then
			ShootCount = ShootCount + 1
			local thisShoot = ShootCount
			-- Do shoot
			local avgPoint = Utility.AveragePoints(tapPositions)
			local unitRay = Utility.GetUnitRay(avgPoint.x, avgPoint.y, MyMouse.ViewSizeX, MyMouse.ViewSizeY, camera)
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
	local mouse1DownPos = Vector2.new()
	local mouse2Down = tick()
	local mouse2DownPos = Vector2.new()
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
	
	-- Setup the camera
	CameraModule = ClassicCameraModule()

	do
		-- Extend The Camera Module Class
		function CameraModule:LookAtPreserveHeight(newLookAtPt)
			local camera = 	workspace.CurrentCamera

			local focus = camera.Focus.p

			local cameraCFrame = CameraModule.cframe
			local mag = Vector3_new(cameraCFrame.lookVector.x, 0, cameraCFrame.lookVector.z).magnitude
			local newLook = (Vector3_new(newLookAtPt.x, focus.y, newLookAtPt.z) - focus).unit * mag
			local flippedLook = newLook + Vector3_new(0, cameraCFrame.lookVector.y, 0)

			local distance = (focus - cameraCFrame.p).magnitude

			local newCamPos = focus - flippedLook.unit * distance
			return CFrame.new(newCamPos, newCamPos + flippedLook)
		end

		local lerp = CFrame.new().lerp
		function CameraModule:TweenCameraLook(desiredCFrame, speed)
			local e = 2.718281828459
			
			local function SCurve(t)
				return 1/(1 + e^(-t*1.5))
			end

			local function easeOutSine(t, b, c, d)
				if t >= d then return b + c end
				return c * math_sin(t/d * (math_pi/2)) + b;
			end

			local c0, c1 = CFrame_new(ZERO_VECTOR3, self:GetCameraLook()), desiredCFrame - desiredCFrame.p
			local theta = GetThetaBetweenCFrames(c0, c1)
			theta = clamp(0, math_pi, theta)
			local duration = 0.65 * SCurve(theta - math_pi/4) + 0.15
			if speed then
				duration = theta / speed
			end
			local start = tick()
			local finish = start + duration

			self.UpdateTweenFunction = function()
				local currTime = tick() - start
				local alpha = clamp(0, 1, easeOutSine(currTime, 0, 1, duration))
				local newCFrame = lerp(c0, c1, alpha)
				local y = findAngleBetweenXZVectors(newCFrame.lookVector, self:GetCameraLook())
				if IsFinite(y) and math_abs(y) > 0.0001 then
					self.RotateInput = self.RotateInput + Vector2_new(y, 0)
				end
				return (currTime >= finish or alpha >= 1)
			end
		end
	end
	--- Done Extending


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
			--print("Touch tap fake:" , processed)
			--if not processed then
			--	OnTap({input.Position})
			--end
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

		if not UIS.TouchEnabled then -- PC
			if AutoJumperInstance then
				AutoJumperInstance:Stop()
				AutoJumperInstance = nil
			end
			AutoJumperInstance = AutoJumper()
		end
		
		local function getThrottleAndSteer(object, point)
			local lookVector = (point - object.Position)
			lookVector = Vector3_new(lookVector.X, 0, lookVector.Z).unit
			local objectVector = Vector3_new(object.CFrame.lookVector.X, 0, object.CFrame.lookVector.Z).unit
			local dirVector = lookVector - objectVector
			local mag = dirVector.magnitude
			local degrees = math_deg(math_acos(lookVector:Dot(objectVector)))
			local side = (object.CFrame:pointToObjectSpace(point).X > 0)
			local throttle = 0
			if mag < 0.25 then
				throttle = 1
			end
			if mag > 1.8 then
				throttle = -1
			end
			local distance = CurrentSeatPart.Position - DrivingTo
			local velocity = CurrentSeatPart.Velocity
			if velocity.magnitude*1.5 > distance.magnitude then
				if velocity.magnitude*0.5 > distance.magnitude then
					throttle = -throttle
				else
					throttle = 0
				end
			end
			local steer = 0
			if degrees > 5 and degrees < 175 then
				if side then
					steer = 1
				else
					steer = -1
				end
			end
			local rotatingAt = math_deg(CurrentSeatPart.RotVelocity.magnitude)
			local degreesAway = math_max(math_min(degrees, 180 - degrees), 10)
			if (CurrentSeatPart.RotVelocity.X < 0)== (steer < 0) then
				if rotatingAt*1.5 > degreesAway then
					if rotatingAt*0.5 > degreesAway then
						steer = -steer
					else
						steer = 0
					end
				end
			end
			return throttle, steer
		end
		
		local function Update()
			if CameraModule then
				if CameraModule.UserPanningTheCamera then
					CameraModule.UpdateTweenFunction = nil
				else
					if CameraModule.UpdateTweenFunction then
						local done = CameraModule.UpdateTweenFunction()
						if done then
							CameraModule.UpdateTweenFunction = nil
						end
					end
				end
				CameraModule:Update()
			end

			if CurrentSeatPart then
				if DrivingTo then
					local throttle, steer = getThrottleAndSteer(CurrentSeatPart, DrivingTo)
					CurrentSeatPart.Throttle = throttle
					CurrentSeatPart.Steer = steer
				end
			end
		end
		
		local success = pcall(function() RunService:BindToRenderStep("ClickToMoveRenderUpdate",Enum.RenderPriority.Camera.Value - 1,Update) end)
		if not success then
			if RenderSteppedConn then
				RenderSteppedConn:disconnect()
			end
			RenderSteppedConn = RunService.RenderStepped:connect(Update)
		end
		
		local WasAutoJumper = false
		local WasAutoJumpMobile = false		
		local function onSeated(child, active, currentSeatPart)
			if active then
				if BindableEvent_EnableTouchJump then
					BindableEvent_EnableTouchJump:Fire(true)
				end
				if currentSeatPart and currentSeatPart.ClassName == "VehicleSeat" then
					CurrentSeatPart = currentSeatPart
					if AutoJumperInstance then
						AutoJumperInstance:Stop()
						AutoJumperInstance = nil
						WasAutoJumper = true
					else
						WasAutoJumper = false
					end
					if child.AutoJumpEnabled then
						WasAutoJumpMobile = true
						child.AutoJumpEnabled = false
					end
				end
			else
				CurrentSeatPart = nil
				if BindableEvent_EnableTouchJump then
					BindableEvent_EnableTouchJump:Fire(false)
				end
				if WasAutoJumper then
					AutoJumperInstance = AutoJumper()
					WasAutoJumper = false
				end
				if WasAutoJumpMobile then
					child.AutoJumpEnabled = true
					WasAutoJumpMobile = false
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
					DebrisService:AddItem(ExistingIndicator, 1)
					if AutoJumperInstance then
						AutoJumperInstance:Stop()
						AutoJumperInstance = nil
					end
				end)
				local WasAutoJumper = false
				local WasAutoJumpMobile = false
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
			if AutoJumperInstance then
				AutoJumperInstance:Stop()
				AutoJumperInstance = nil
			end
			if CameraModule then
				CameraModule.UpdateTweenFunction = nil
				CameraModule:SetEnabled(false)
			end
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
			if CameraModule then
				CameraModule:SetEnabled(true)
			end
			Running = true
		end
	end

	return this
end

return CreateClickToMoveModule
