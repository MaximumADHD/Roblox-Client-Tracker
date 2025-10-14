--!nonstrict

local MIN_ASSEMBLY_RADIUS = 5
local EPSILON = 1e-3
local PITCH_LIMIT = math.rad(80)
local YAW_DEFAULT = math.rad(0)
local ZOOM_MINIMUM = 0.5
local ZOOM_SENSITIVITY_CURVATURE = 0.5
-- zoom levels cycles when pressing R3 on a gamepad,
-- assume an assembly radius of 10
local DEFAULT_GAMEPAD_ZOOM_LEVELS = {0, 15, 30}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local BaseCamera = require(script.Parent:WaitForChild("BaseCamera"))
local CameraInput = require(script.Parent:WaitForChild("CameraInput"))
local CameraUtils = require(script.Parent:WaitForChild("CameraUtils"))
local ZoomController = require(script.Parent:WaitForChild("ZoomController"))
local VehicleCameraCore = require(script:WaitForChild("VehicleCameraCore"))
local VehicleCameraConfig = require(script:WaitForChild("VehicleCameraConfig"))

local localPlayer = Players.LocalPlayer

local map = CameraUtils.map
local Spring = CameraUtils.Spring
local mapClamp = CameraUtils.mapClamp
local sanitizeAngle = CameraUtils.sanitizeAngle

-- pitch-axis rotational velocity of a part with a given CFrame and total RotVelocity
local function pitchVelocity(rotVel, cf)
	return math.abs(cf.XVector:Dot(rotVel))
end

-- yaw-axis rotational velocity of a part with a given CFrame and total RotVelocity
local function yawVelocity(rotVel, cf)
	return math.abs(cf.YVector:Dot(rotVel))
end

-- track physics solver time delta separately from the render loop to correctly synchronize time delta
local worldDt = 1/60
RunService.Stepped:Connect(function(_, _worldDt)
	worldDt = _worldDt
end)

local VehicleCamera = setmetatable({}, BaseCamera)
VehicleCamera.__index = VehicleCamera

function VehicleCamera.new()
	local self = setmetatable(BaseCamera.new(), VehicleCamera)
	self:Reset()
	return self
end

function VehicleCamera:Reset()
	self.vehicleCameraCore = VehicleCameraCore.new(self:GetSubjectCFrame())
	self.pitchSpring = Spring.new(0, -math.rad(VehicleCameraConfig.pitchBaseAngle))
	self.yawSpring = Spring.new(0, YAW_DEFAULT)
	self.lastPanTick = 0
	
	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject
	
	assert(camera)
	assert(cameraSubject)
	assert(cameraSubject:IsA("VehicleSeat"))
	
	local assemblyParts = cameraSubject:GetConnectedParts(true) -- passing true to recursively get all assembly parts
	local assemblyPosition, assemblyRadius = CameraUtils.getLooseBoundingSphere(assemblyParts)
	
	-- assembly radius is limited to 5 in case of extremely small radii causing zoom to be extremely close
	assemblyRadius = math.max(assemblyRadius, MIN_ASSEMBLY_RADIUS)

	self.assemblyRadius = assemblyRadius
	self.assemblyOffset = cameraSubject.CFrame:Inverse()*assemblyPosition -- seat-space offset of the assembly bounding sphere center
	
	-- scale zoom levels by car radius and headscale
	self.gamepadZoomLevels = {}
	for i, zoom in DEFAULT_GAMEPAD_ZOOM_LEVELS do
		table.insert(self.gamepadZoomLevels, zoom * self.assemblyRadius / 10)
	end
	self:SetCameraToSubjectDistance(self.gamepadZoomLevels[#self.gamepadZoomLevels])
end

function VehicleCamera:_StepRotation(dt, vdotz): CFrame
	local yawSpring = self.yawSpring
	local pitchSpring = self.pitchSpring
	
	local rotationInput = CameraInput.getRotation(dt, true)
	local dYaw = -rotationInput.X
	local dPitch = -rotationInput.Y
	
	yawSpring.pos = sanitizeAngle(yawSpring.pos + dYaw)
	pitchSpring.pos = sanitizeAngle(math.clamp(pitchSpring.pos + dPitch, -PITCH_LIMIT, PITCH_LIMIT))

	if CameraInput.getRotationActivated() then
		self.lastPanTick = os.clock()
	end

	local pitchBaseAngle = -math.rad(VehicleCameraConfig.pitchBaseAngle)
	local pitchDeadzoneAngle = math.rad(VehicleCameraConfig.pitchDeadzoneAngle)

	if os.clock() - self.lastPanTick > VehicleCameraConfig.autocorrectDelay then
		-- adjust autocorrect response based on forward velocity
		local autocorrectResponse = mapClamp(
			vdotz,
			VehicleCameraConfig.autocorrectMinCarSpeed,
			VehicleCameraConfig.autocorrectMaxCarSpeed,
			0,
			VehicleCameraConfig.autocorrectResponse
		)

		yawSpring.freq = autocorrectResponse
		pitchSpring.freq = autocorrectResponse
		
		-- zero out response under a threshold
		if yawSpring.freq < EPSILON then
			yawSpring.vel = 0
		end

		if pitchSpring.freq < EPSILON then
			pitchSpring.vel = 0
		end

		if math.abs(sanitizeAngle(pitchBaseAngle - pitchSpring.pos)) <= pitchDeadzoneAngle then
			-- do nothing within the deadzone
			pitchSpring.goal = pitchSpring.pos
		else
			pitchSpring.goal = pitchBaseAngle
		end
	else
		yawSpring.freq = 0
		yawSpring.vel = 0

		pitchSpring.freq = 0
		pitchSpring.vel = 0

		pitchSpring.goal = pitchBaseAngle
	end

	return CFrame.fromEulerAnglesYXZ(
		pitchSpring:step(dt),
		yawSpring:step(dt),
		0
	)
end

function VehicleCamera:_GetThirdPersonLocalOffset()
	return self.assemblyOffset + Vector3.new(0, self.assemblyRadius*VehicleCameraConfig.verticalCenterOffset, 0)
end

function VehicleCamera:_GetFirstPersonLocalOffset(subjectCFrame: CFrame)
	local character = localPlayer.Character
	
	if character and character.Parent then
		local head = character:FindFirstChild("Head")
		
		if head and head:IsA("BasePart") then
			return subjectCFrame:Inverse()*head.Position
		end
	end
	
	return self:_GetThirdPersonLocalOffset()
end

function VehicleCamera:Update()
	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject
	local vehicleCameraCore = self.vehicleCameraCore
	
	assert(camera)
	assert(cameraSubject)
	assert(cameraSubject:IsA("VehicleSeat"))
	
	-- consume the physics solver time delta to account for mismatched physics/render cycles
	local dt = worldDt
	worldDt = 0
	
	-- get subject info
	local subjectCFrame: CFrame = self:GetSubjectCFrame()
	local subjectVel: Vector3 = self:GetSubjectVelocity()
	local subjectRotVel = self:GetSubjectRotVelocity()
	
	-- measure the local-to-world-space forward velocity of the vehicle
	local vDotZ = math.abs(subjectVel:Dot(subjectCFrame.ZVector))
	local yawVel = yawVelocity(subjectRotVel, subjectCFrame)
	local pitchVel = pitchVelocity(subjectRotVel, subjectCFrame)
	
	-- step camera components forward
	local zoom = self:StepZoom()
	local objectRotation = self:_StepRotation(dt, vDotZ)
	
	-- mix third and first person offsets in local space
	local firstPerson = mapClamp(zoom, ZOOM_MINIMUM, self.assemblyRadius, 1, 0)
	
	local tpOffset = self:_GetThirdPersonLocalOffset()
	local fpOffset = self:_GetFirstPersonLocalOffset(subjectCFrame)
	local localOffset = tpOffset:Lerp(fpOffset, firstPerson)
	
	-- step core forward
	vehicleCameraCore:setTransform(subjectCFrame)
	local processedRotation = vehicleCameraCore:step(dt, pitchVel, yawVel, firstPerson)
	
	-- calculate final focus & cframe
	local focus = CFrame.new(subjectCFrame*localOffset)*processedRotation*objectRotation
	local cf = focus*CFrame.new(0, 0, zoom)

	return cf, focus
end

function VehicleCamera:ApplyVRTransform()
	-- no-op override; VR transform is not applied in vehicles
end

return VehicleCamera
