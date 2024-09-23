--!nonstrict
local ClickToMoveDisplay = {}

local FAILURE_ANIMATION_ID = "rbxassetid://2874840706"

local TrailDotIcon = "rbxasset://textures/ui/traildot.png"
local EndWaypointIcon = "rbxasset://textures/ui/waypoint.png"

local WaypointsAlwaysOnTop = false

local WAYPOINT_INCLUDE_FACTOR = 2
local LAST_DOT_DISTANCE = 3

local WAYPOINT_BILLBOARD_SIZE = UDim2.new(0, 1.68 * 25, 0, 2 * 25)

local ENDWAYPOINT_SIZE_OFFSET_MIN = Vector2.new(0, 0.5)
local ENDWAYPOINT_SIZE_OFFSET_MAX = Vector2.new(0, 1)

local FAIL_WAYPOINT_SIZE_OFFSET_CENTER = Vector2.new(0, 0.5)
local FAIL_WAYPOINT_SIZE_OFFSET_LEFT = Vector2.new(0.1, 0.5)
local FAIL_WAYPOINT_SIZE_OFFSET_RIGHT = Vector2.new(-0.1, 0.5)

local FAILURE_TWEEN_LENGTH = 0.125
local FAILURE_TWEEN_COUNT = 4

local TWEEN_WAYPOINT_THRESHOLD = 5

local TRAIL_DOT_PARENT_NAME = "ClickToMoveDisplay"

local TrailDotSize = Vector2.new(1.5, 1.5)

local TRAIL_DOT_MIN_SCALE = 1
local TRAIL_DOT_MIN_DISTANCE = 10
local TRAIL_DOT_MAX_SCALE = 2.5
local TRAIL_DOT_MAX_DISTANCE = 100

local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Exclude

local raycastOriginOffset = Vector3.yAxis * 2.5
local raycastDirection = Vector3.yAxis * -10

local PlayersService = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local CommonUtils = script.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

local FFlagUserRaycastPerformanceImprovements = FlagUtil.getUserFlag("UserRaycastPerformanceImprovements")

local LocalPlayer = PlayersService.LocalPlayer

local function CreateWaypointTemplates()
	local TrailDotTemplate = Instance.new("Part")
	TrailDotTemplate.Size = Vector3.new(1, 1, 1)
	TrailDotTemplate.Anchored = true
	TrailDotTemplate.CanCollide = false
	TrailDotTemplate.Name = "TrailDot"
	TrailDotTemplate.Transparency = 1
	local TrailDotImage = Instance.new("ImageHandleAdornment")
	TrailDotImage.Name = "TrailDotImage"
	TrailDotImage.Size = TrailDotSize
	TrailDotImage.SizeRelativeOffset = Vector3.new(0, 0, -0.1)
	TrailDotImage.AlwaysOnTop = WaypointsAlwaysOnTop
	TrailDotImage.Image = TrailDotIcon
	TrailDotImage.Adornee = TrailDotTemplate
	TrailDotImage.Parent = TrailDotTemplate

	local EndWaypointTemplate = Instance.new("Part")
	EndWaypointTemplate.Size = Vector3.new(2, 2, 2)
	EndWaypointTemplate.Anchored = true
	EndWaypointTemplate.CanCollide = false
	EndWaypointTemplate.Name = "EndWaypoint"
	EndWaypointTemplate.Transparency = 1
	local EndWaypointImage = Instance.new("ImageHandleAdornment")
	EndWaypointImage.Name = "TrailDotImage"
	EndWaypointImage.Size = TrailDotSize
	EndWaypointImage.SizeRelativeOffset = Vector3.new(0, 0, -0.1)
	EndWaypointImage.AlwaysOnTop = WaypointsAlwaysOnTop
	EndWaypointImage.Image = TrailDotIcon
	EndWaypointImage.Adornee = EndWaypointTemplate
	EndWaypointImage.Parent = EndWaypointTemplate
	local EndWaypointBillboard = Instance.new("BillboardGui")
	EndWaypointBillboard.Name = "EndWaypointBillboard"
	EndWaypointBillboard.Size = WAYPOINT_BILLBOARD_SIZE
	EndWaypointBillboard.LightInfluence = 0
	EndWaypointBillboard.SizeOffset = ENDWAYPOINT_SIZE_OFFSET_MIN
	EndWaypointBillboard.AlwaysOnTop = true
	EndWaypointBillboard.Adornee = EndWaypointTemplate
	EndWaypointBillboard.Parent = EndWaypointTemplate
	local EndWaypointImageLabel = Instance.new("ImageLabel")
	EndWaypointImageLabel.Image = EndWaypointIcon
	EndWaypointImageLabel.BackgroundTransparency = 1
	EndWaypointImageLabel.Size = UDim2.new(1, 0, 1, 0)
	EndWaypointImageLabel.Parent = EndWaypointBillboard


	local FailureWaypointTemplate = Instance.new("Part")
	FailureWaypointTemplate.Size = Vector3.new(2, 2, 2)
	FailureWaypointTemplate.Anchored = true
	FailureWaypointTemplate.CanCollide = false
	FailureWaypointTemplate.Name = "FailureWaypoint"
	FailureWaypointTemplate.Transparency = 1
	local FailureWaypointImage = Instance.new("ImageHandleAdornment")
	FailureWaypointImage.Name = "TrailDotImage"
	FailureWaypointImage.Size = TrailDotSize
	FailureWaypointImage.SizeRelativeOffset = Vector3.new(0, 0, -0.1)
	FailureWaypointImage.AlwaysOnTop = WaypointsAlwaysOnTop
	FailureWaypointImage.Image = TrailDotIcon
	FailureWaypointImage.Adornee = FailureWaypointTemplate
	FailureWaypointImage.Parent = FailureWaypointTemplate
	local FailureWaypointBillboard = Instance.new("BillboardGui")
	FailureWaypointBillboard.Name = "FailureWaypointBillboard"
	FailureWaypointBillboard.Size = WAYPOINT_BILLBOARD_SIZE
	FailureWaypointBillboard.LightInfluence = 0
	FailureWaypointBillboard.SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_CENTER
	FailureWaypointBillboard.AlwaysOnTop = true
	FailureWaypointBillboard.Adornee = FailureWaypointTemplate
	FailureWaypointBillboard.Parent = FailureWaypointTemplate
	local FailureWaypointFrame = Instance.new("Frame")
	FailureWaypointFrame.BackgroundTransparency = 1
	FailureWaypointFrame.Size = UDim2.new(0, 0, 0, 0)
	FailureWaypointFrame.Position = UDim2.new(0.5, 0, 1, 0)
	FailureWaypointFrame.Parent = FailureWaypointBillboard
	local FailureWaypointImageLabel = Instance.new("ImageLabel")
	FailureWaypointImageLabel.Image = EndWaypointIcon
	FailureWaypointImageLabel.BackgroundTransparency = 1
	FailureWaypointImageLabel.Position = UDim2.new(
		0, -WAYPOINT_BILLBOARD_SIZE.X.Offset/2, 0, -WAYPOINT_BILLBOARD_SIZE.Y.Offset
	)
	FailureWaypointImageLabel.Size = WAYPOINT_BILLBOARD_SIZE
	FailureWaypointImageLabel.Parent = FailureWaypointFrame

	return TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate
end

local TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()

local function getTrailDotParent()
	local camera = Workspace.CurrentCamera
	local trailParent = camera:FindFirstChild(TRAIL_DOT_PARENT_NAME)
	if not trailParent then
		trailParent = Instance.new("Model")
		trailParent.Name = TRAIL_DOT_PARENT_NAME
		trailParent.Parent = camera
	end
	return trailParent
end

local function placePathWaypoint(waypointModel, position: Vector3)
	if FFlagUserRaycastPerformanceImprovements then
		raycastParams.FilterDescendantsInstances = { Workspace.CurrentCamera, LocalPlayer.Character }
		local raycastResult = Workspace:Raycast(position + raycastOriginOffset, raycastDirection, raycastParams)

		if raycastResult then
			waypointModel.CFrame = CFrame.lookAlong(raycastResult.Position, raycastResult.Normal)
			waypointModel.Parent = getTrailDotParent()
		end
	else
		local ray = Ray.new(position + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0))
		local hitPart, hitPoint, hitNormal = Workspace:FindPartOnRayWithIgnoreList(
			ray,
			{ Workspace.CurrentCamera, LocalPlayer.Character }
		)
		if hitPart then
			waypointModel.CFrame = CFrame.new(hitPoint, hitPoint + hitNormal)
			waypointModel.Parent = getTrailDotParent()
		end
	end
end

local TrailDot = {}
TrailDot.__index = TrailDot

function TrailDot:Destroy()
	self.DisplayModel:Destroy()
end

function TrailDot:NewDisplayModel(position)
	local newDisplayModel: Part = TrailDotTemplate:Clone()
	placePathWaypoint(newDisplayModel, position)
	return newDisplayModel
end

function TrailDot.new(position, closestWaypoint)
	local self = setmetatable({}, TrailDot)

	self.DisplayModel = self:NewDisplayModel(position)
	self.ClosestWayPoint = closestWaypoint

	return self
end

local EndWaypoint = {}
EndWaypoint.__index = EndWaypoint

function EndWaypoint:Destroy()
	self.Destroyed = true
	self.Tween:Cancel()
	self.DisplayModel:Destroy()
end

function EndWaypoint:NewDisplayModel(position)
	local newDisplayModel: Part = EndWaypointTemplate:Clone()
	placePathWaypoint(newDisplayModel, position)
	return newDisplayModel
end

function EndWaypoint:CreateTween()
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, -1, true)
	local tween = TweenService:Create(
		self.DisplayModel.EndWaypointBillboard,
		tweenInfo,
		{ SizeOffset = ENDWAYPOINT_SIZE_OFFSET_MAX }
	)
	tween:Play()
	return tween
end

function EndWaypoint:TweenInFrom(originalPosition: Vector3)
	local currentPositon: Vector3 = self.DisplayModel.Position
	local studsOffset = originalPosition - currentPositon
	self.DisplayModel.EndWaypointBillboard.StudsOffset = Vector3.new(0, studsOffset.Y, 0)
	local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	local tween = TweenService:Create(
		self.DisplayModel.EndWaypointBillboard,
		tweenInfo,
		{ StudsOffset = Vector3.new(0, 0, 0) }
	)
	tween:Play()
	return tween
end

function EndWaypoint.new(position: Vector3, closestWaypoint: number?, originalPosition: Vector3?)
	local self = setmetatable({}, EndWaypoint)

	self.DisplayModel = self:NewDisplayModel(position)
	self.Destroyed = false
	if originalPosition and (originalPosition - position).Magnitude > TWEEN_WAYPOINT_THRESHOLD then
		self.Tween = self:TweenInFrom(originalPosition)
		coroutine.wrap(function()
			self.Tween.Completed:Wait()
			if not self.Destroyed then
				self.Tween = self:CreateTween()
			end
		end)()
	else
		self.Tween = self:CreateTween()
	end
	self.ClosestWayPoint = closestWaypoint

	return self
end

local FailureWaypoint = {}
FailureWaypoint.__index = FailureWaypoint

function FailureWaypoint:Hide()
	self.DisplayModel.Parent = nil
end

function FailureWaypoint:Destroy()
	self.DisplayModel:Destroy()
end

function FailureWaypoint:NewDisplayModel(position)
	local newDisplayModel: Part = FailureWaypointTemplate:Clone()
	placePathWaypoint(newDisplayModel, position)
	if FFlagUserRaycastPerformanceImprovements then
		raycastParams.FilterDescendantsInstances = { Workspace.CurrentCamera, LocalPlayer.Character }

		local raycastResult = Workspace:Raycast(position + raycastOriginOffset, raycastDirection, raycastParams)
		if raycastResult then
			newDisplayModel.CFrame = CFrame.lookAlong(raycastResult.Position, raycastResult.Normal)
			newDisplayModel.Parent = getTrailDotParent()
		end
	else
		local ray = Ray.new(position + Vector3.new(0, 2.5, 0), Vector3.new(0, -10, 0))
		local hitPart, hitPoint, hitNormal = Workspace:FindPartOnRayWithIgnoreList(
			ray, { Workspace.CurrentCamera, LocalPlayer.Character }
		)
		if hitPart then
			newDisplayModel.CFrame = CFrame.new(hitPoint, hitPoint + hitNormal)
			newDisplayModel.Parent = getTrailDotParent()
		end
	end
	return newDisplayModel
end

function FailureWaypoint:RunFailureTween()
	wait(FAILURE_TWEEN_LENGTH) -- Delay one tween length betfore starting tweening
	-- Tween out from center
	local tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH/2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	local tweenLeft = TweenService:Create(self.DisplayModel.FailureWaypointBillboard, tweenInfo,
		{ SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_LEFT })
	tweenLeft:Play()

	local tweenLeftRoation = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame, tweenInfo,
		{ Rotation = 10 })
	tweenLeftRoation:Play()

	tweenLeft.Completed:wait()

	-- Tween back and forth
	tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,
		FAILURE_TWEEN_COUNT - 1, true)
	local tweenSideToSide = TweenService:Create(self.DisplayModel.FailureWaypointBillboard, tweenInfo,
		{ SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_RIGHT})
	tweenSideToSide:Play()

	-- Tween flash dark and roate left and right
	tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH, Enum.EasingStyle.Sine, Enum.EasingDirection.Out,
		FAILURE_TWEEN_COUNT - 1, true)
	local tweenFlash = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame.ImageLabel, tweenInfo,
		{ ImageColor3 = Color3.new(0.75, 0.75, 0.75)})
	tweenFlash:Play()

	local tweenRotate = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame, tweenInfo,
		{ Rotation = -10 })
	tweenRotate:Play()

	tweenSideToSide.Completed:wait()

	-- Tween back to center
	tweenInfo = TweenInfo.new(FAILURE_TWEEN_LENGTH/2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
	local tweenCenter = TweenService:Create(self.DisplayModel.FailureWaypointBillboard, tweenInfo,
		{ SizeOffset = FAIL_WAYPOINT_SIZE_OFFSET_CENTER })
	tweenCenter:Play()

	local tweenRoation = TweenService:Create(self.DisplayModel.FailureWaypointBillboard.Frame, tweenInfo,
		{ Rotation = 0 })
	tweenRoation:Play()

	tweenCenter.Completed:wait()

	wait(FAILURE_TWEEN_LENGTH) -- Delay one tween length betfore removing
end

function FailureWaypoint.new(position)
	local self = setmetatable({}, FailureWaypoint)

	self.DisplayModel = self:NewDisplayModel(position)

	return self
end

local failureAnimation = Instance.new("Animation")
failureAnimation.AnimationId = FAILURE_ANIMATION_ID

local lastHumanoid = nil
local lastFailureAnimationTrack: AnimationTrack? = nil

local function getFailureAnimationTrack(myHumanoid)
	if myHumanoid == lastHumanoid then
		return lastFailureAnimationTrack
	end
	lastFailureAnimationTrack = myHumanoid:LoadAnimation(failureAnimation)
	assert(lastFailureAnimationTrack, "")
	lastFailureAnimationTrack.Priority = Enum.AnimationPriority.Action
	lastFailureAnimationTrack.Looped = false
	return lastFailureAnimationTrack
end

local function findPlayerHumanoid()
	local character = LocalPlayer.Character
	if character then
		return character:FindFirstChildOfClass("Humanoid")
	end
end

local function createTrailDots(wayPoints: {PathWaypoint}, originalEndWaypoint: Vector3)
	local newTrailDots = {}
	local count = 1
	for i = 1, #wayPoints - 1 do
		local closeToEnd = (wayPoints[i].Position - wayPoints[#wayPoints].Position).Magnitude < LAST_DOT_DISTANCE
		local includeWaypoint = i % WAYPOINT_INCLUDE_FACTOR == 0 and not closeToEnd
		if includeWaypoint then
			local trailDot = TrailDot.new(wayPoints[i].Position, i)
			newTrailDots[count] = trailDot
			count = count + 1
		end
	end

	local newEndWaypoint = EndWaypoint.new(wayPoints[#wayPoints].Position, #wayPoints, originalEndWaypoint)
	table.insert(newTrailDots, newEndWaypoint)

	local reversedTrailDots = {}
	count = 1
	for i = #newTrailDots, 1, -1 do
		reversedTrailDots[count] = newTrailDots[i]
		count = count + 1
	end
	return reversedTrailDots
end

local function getTrailDotScale(distanceToCamera: number, defaultSize: Vector2)
	local rangeLength = TRAIL_DOT_MAX_DISTANCE - TRAIL_DOT_MIN_DISTANCE
	local inRangePoint = math.clamp(distanceToCamera - TRAIL_DOT_MIN_DISTANCE, 0, rangeLength)/rangeLength
	local scale = TRAIL_DOT_MIN_SCALE + (TRAIL_DOT_MAX_SCALE - TRAIL_DOT_MIN_SCALE)*inRangePoint
	return defaultSize * scale
end

local createPathCount = 0
-- originalEndWaypoint is optional, causes the waypoint to tween from that position.
function ClickToMoveDisplay.CreatePathDisplay(wayPoints, originalEndWaypoint)
	createPathCount = createPathCount + 1
	local trailDots = createTrailDots(wayPoints, originalEndWaypoint)

	local function removePathBeforePoint(wayPointNumber)
		-- kill all trailDots before and at wayPointNumber
		for i = #trailDots, 1, -1 do
			local trailDot = trailDots[i]
			if trailDot.ClosestWayPoint <= wayPointNumber then
				trailDot:Destroy()
				trailDots[i] = nil
			else
				break
			end
		end
	end

	local reiszeTrailDotsUpdateName = "ClickToMoveResizeTrail" ..createPathCount
	local function resizeTrailDots()
		if #trailDots == 0 then
			RunService:UnbindFromRenderStep(reiszeTrailDotsUpdateName)
			return
		end
		local cameraPos = Workspace.CurrentCamera.CFrame.p
		for i = 1, #trailDots do
			local trailDotImage: ImageHandleAdornment = trailDots[i].DisplayModel:FindFirstChild("TrailDotImage")
			if trailDotImage then
				local distanceToCamera = (trailDots[i].DisplayModel.Position - cameraPos).Magnitude
				trailDotImage.Size = getTrailDotScale(distanceToCamera, TrailDotSize)
			end
		end
	end
	RunService:BindToRenderStep(reiszeTrailDotsUpdateName, Enum.RenderPriority.Camera.Value - 1, resizeTrailDots)

	local function removePath()
		removePathBeforePoint(#wayPoints)
	end

	return removePath, removePathBeforePoint
end

local lastFailureWaypoint = nil
function ClickToMoveDisplay.DisplayFailureWaypoint(position)
	if lastFailureWaypoint then
		lastFailureWaypoint:Hide()
	end
	local failureWaypoint = FailureWaypoint.new(position)
	lastFailureWaypoint = failureWaypoint
	coroutine.wrap(function()
		failureWaypoint:RunFailureTween()
		failureWaypoint:Destroy()
		failureWaypoint = nil
	end)()
end

function ClickToMoveDisplay.CreateEndWaypoint(position)
	return EndWaypoint.new(position)
end

function ClickToMoveDisplay.PlayFailureAnimation()
	local myHumanoid = findPlayerHumanoid()
	if myHumanoid then
		local animationTrack = getFailureAnimationTrack(myHumanoid)
		animationTrack:Play()
	end
end

function ClickToMoveDisplay.CancelFailureAnimation()
	if lastFailureAnimationTrack ~= nil and lastFailureAnimationTrack.IsPlaying then
		lastFailureAnimationTrack:Stop()
	end
end

function ClickToMoveDisplay.SetWaypointTexture(texture)
	TrailDotIcon = texture
	TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
end

function ClickToMoveDisplay.GetWaypointTexture()
	return TrailDotIcon
end

function ClickToMoveDisplay.SetWaypointRadius(radius)
	TrailDotSize = Vector2.new(radius, radius)
	TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
end

function ClickToMoveDisplay.GetWaypointRadius()
	return TrailDotSize.X
end

function ClickToMoveDisplay.SetEndWaypointTexture(texture)
	EndWaypointIcon = texture
	TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
end

function ClickToMoveDisplay.GetEndWaypointTexture()
	return EndWaypointIcon
end

function ClickToMoveDisplay.SetWaypointsAlwaysOnTop(alwaysOnTop)
	WaypointsAlwaysOnTop = alwaysOnTop
	TrailDotTemplate, EndWaypointTemplate, FailureWaypointTemplate = CreateWaypointTemplates()
end

function ClickToMoveDisplay.GetWaypointsAlwaysOnTop()
	return WaypointsAlwaysOnTop
end

return ClickToMoveDisplay
