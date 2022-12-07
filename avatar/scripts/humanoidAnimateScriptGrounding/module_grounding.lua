local grounding = {}

--[[
TODO:
  - small smoothtime to prevent popping
  - move hip slightly lower by half of the delta between foot hights to prevent floating feet
  - tilt the hip slightly in the opposite direction of ground normal for better going up/downhill
  - shoot multiple raycasts, average normal and pick highest point to provide robustness to discontinuous terrain with small details
  - ignore water
--]]

--------------------------------------------------------------------------------
function Collinear(a : Vector3, b : Vector3) : bool
	return a:Cross(b):FuzzyEq(Vector3.zero)
end

local function GetTangents(input : Vector3)
	local Z = input.Unit 
	--Choose another vector not parallel
	local Xd
	if math.abs(Z.x) < 0.9 then Xd = Vector3.xAxis else Xd = Vector3.yAxis end
	-- Remove the part that is parallel to Z
	local X = (Xd - (Z * Z:Dot(Xd))).Unit
	local Y = Z:Cross(X)
	return X, Y
end

-- NOTES: This doesn't work on R6
function ComputeMotor6dFkPose(motor6d : Motor6D) : CFrame
	local transform = CFrame.new()
	while motor6d do
		local parentPart = motor6d.Part0
		local parentMotor = parentPart:FindFirstChildOfClass("Motor6D")
		if parentMotor then
			local objectToParent = parentMotor.C1:Inverse() * motor6d.C0 * motor6d.Transform
			transform = objectToParent * transform
		else
			-- motor.getPart0()->getCoordinateFrame() * motor.getC0() * motor.getTransformCFrame();
			transform = parentPart.CFrame * motor6d.C0 * motor6d.Transform * transform
		end
		motor6d = parentMotor
	end
	return transform
end

function CreateFootIkControl(character : Model, eeffName, rootName, ikName)
	local eeff : BasePart = character:FindFirstChild(eeffName, true)
	local root : BasePart = character:FindFirstChild(rootName, true)

	local target : Attachment = Instance.new("Attachment")
	target.Parent = character:FindFirstChild("HumanoidRootPart", true)
	target.Name = ikName.."_target"

	local ik : IKControl = Instance.new("IKControl")
	ik.Parent = character.Humanoid
	ik.Name = ikName
	ik.Type = Enum.IKControlType.Transform
	ik.EndEffector = eeff
	ik.ChainRoot = root
	ik.Target = target
	ik.Enabled = false
	--ik.SmoothTime = smoothTime

	return ik
end

-- variables
local ikControlL : IKControl
local ikControlR : IKControl
local rcp : RaycastParams
local heightOffset : number = 0
local maxTranslationCorrection = 1.5 -- studs
local maxRotationCorrectionDeg = 45
local raycastDistanceMultiplier = 1.02
local raycastVersion = 2 -- v1==single raycast, 2==multiple raycasts
local rayTangentOffset = 0.1


local function GroundHit(rayOrigin: Vector3, rayDirection: Vector3)
	if raycastVersion == 1 then
		return workspace:Raycast(rayOrigin, rayDirection, rcp)
	else
		local hitCount = 0
		local normalSum = Vector3.zero
		local posSum = Vector3.zero
		local minDist = 10000
		local t0,t1 = GetTangents(rayDirection)
		local l = rayTangentOffset
		local origins = {rayOrigin, rayOrigin+t0*l, rayOrigin+t1*l, rayOrigin-t0*l, rayOrigin-t1*l}
		-- shoot 5 raycasts, pick the best 
		for _,origin in pairs(origins) do
			local hit = workspace:Raycast(origin, rayDirection, rcp)
			if hit then
				hitCount += 1
				posSum += hit.Position
				normalSum += hit.Normal
				minDist = math.min(minDist, hit.Distance)
			end
		end
		if hitCount > 0 then
			local p = rayOrigin + rayDirection.Unit * minDist
			--local p = posSum / hitCount
			local n = normalSum / hitCount
			return {Position = p, Normal = n}
		else
			return nil
		end
	end
end

local function DoGrounding(ik : IKControl)
	local root : BasePart = ik.ChainRoot
	local eeff : BasePart = ik.EndEffector
	if not root or not eeff then return end
	local target : Attachment = ik.Target
	assert(target, "Target should have been created")

	local rootCFrame = ComputeMotor6dFkPose(root:FindFirstChildOfClass("Motor6D"))
	local eeffCFrame = ComputeMotor6dFkPose(eeff:FindFirstChildOfClass("Motor6D"))

	-- NOTES: the pose should be already reset and overwritten by the animation
	local origin = rootCFrame.Position
	local dir = (eeffCFrame.Position-origin)
	-- TODO: compute heightOffset, don't take it as a parameter
	local initialEeffHeight = heightOffset
	dir += dir.Unit * initialEeffHeight

	local hit = GroundHit(origin, dir * raycastDistanceMultiplier)
	if hit then
		-- orientation
		local normal = hit.Normal
		local up = -dir --Vector3.yAxis

		local targetCFrame = eeffCFrame.Rotation

		local angleRad = 0
		if not Collinear(normal, up) then
			local axis = up:Cross(normal)
			angleRad = up:Angle(normal)
			-- local shortestRotWorld = AngleAxis(angleRad, axis)
			-- target.rotation = shortestRotWorld * target.rotation
			targetCFrame = CFrame.fromAxisAngle(axis, angleRad) * eeffCFrame.Rotation
		end
		-- position
		local tiltedOffset = initialEeffHeight / math.cos(angleRad)
		local position = hit.Position - dir.Unit * tiltedOffset
		targetCFrame = targetCFrame + position

		-- prevent ik if too much correction
		local toomuchTranslation = (targetCFrame.Position-eeffCFrame.Position).Magnitude > maxTranslationCorrection
		local toomuchRotation = math.deg(angleRad) > maxRotationCorrectionDeg
		if toomuchTranslation or toomuchRotation then
			ik.Enabled = false
		else
			target.WorldCFrame = targetCFrame
			ik.Enabled = true
		end
	else -- not hit
		ik.Enabled = false
	end
end

function Start(character : Model)
	ikControlL = CreateFootIkControl(character, "LeftFoot", "LeftUpperLeg", "groundingL")
	ikControlR = CreateFootIkControl(character, "RightFoot", "RightUpperLeg", "groundingR")

	rcp = RaycastParams.new()
	rcp.IgnoreWater = true
	rcp.FilterDescendantsInstances = character:GetDescendants()
	rcp.FilterType = Enum.RaycastFilterType.Blacklist

	local hum : Humanoid = character:FindFirstChild("Humanoid", true)
	maxTranslationCorrection = math.clamp(hum.HipHeight * 0.4, 0.1, 1.5)
end

local function Update(dt)
	DoGrounding(ikControlL)
	DoGrounding(ikControlR)
end

function grounding:Init(character : Model, inputHeightOffset : number)
	-- TODO: compute heightOffset, don't pass as param
	heightOffset = inputHeightOffset
	Start(character)
	game:GetService("RunService").Stepped:Connect(Update)
end

return grounding