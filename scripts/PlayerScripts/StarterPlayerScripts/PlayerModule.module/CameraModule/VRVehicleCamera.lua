--!nonstrict
--[[
	VRVehicleCamera - VR vehicle camera with orbital third-person and heading-locked first-person
--]]

local FFlagUserVRVehicleCamera
do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserVRVehicleCameraOrbital")
	end)
	FFlagUserVRVehicleCamera = success and result
end

local MIN_ASSEMBLY_RADIUS = 5
local ZOOM_MINIMUM = 0.5
local DRIFT_MIN_VELOCITY = 2
local DRIFT_BASE = 0.01
local DRIFT_ANGLE = 0.05
local DRIFT_TURN = 0.02
local DRIFT_MAX = 0.15
local OCCLUSION_MIN_DIST = 0.5
local OCCLUSION_VIGNETTE_THRESHOLD = math.cos(math.rad(30))
local OCCLUSION_VIGNETTE_MIN_INTENSITY = 0.15
local USE_OCCLUSION_VIGNETTE = false
local USE_ORBIT_CONTROL = false
local DEFAULT_GAMEPAD_ZOOM_LEVELS = {0, 30}

local VRBaseCamera = require(script.Parent:WaitForChild("VRBaseCamera"))
local CameraUtils = require(script.Parent:WaitForChild("CameraUtils"))
local CameraInput = require(script.Parent:WaitForChild("CameraInput"))
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VRService = game:GetService("VRService")
local Lighting = game:GetService("Lighting")

local localPlayer = Players.LocalPlayer
local mapClamp = CameraUtils.mapClamp
local VehicleCameraConfig = require(script.Parent:WaitForChild("VehicleCamera"):FindFirstChild("VehicleCameraConfig")) :: any

local vrRaycastParams = RaycastParams.new()
vrRaycastParams.FilterType = Enum.RaycastFilterType.Exclude
vrRaycastParams.IgnoreWater = true

local function yawVelocity(rotVel: Vector3, cf: CFrame): number
	return math.abs(cf.YVector:Dot(rotVel))
end

local function computeCameraCFrame(focus: CFrame, orbitalDir: Vector3, zoom: number): CFrame
	local orbitalYaw: number = math.atan2(orbitalDir.X, orbitalDir.Z)
	return CFrame.new(focus.Position + orbitalDir * zoom) * CFrame.Angles(0, orbitalYaw, 0)
end

local function vrOccludeDisplace(focus: CFrame, orbitalDir: Vector3, zoom: number, vehicleModel: Instance?): CFrame
	local cf: CFrame = computeCameraCFrame(focus, orbitalDir, zoom)
	local camera = workspace.CurrentCamera
	if not camera then
		return cf
	end
	local focusPos = focus.Position
	local direction = (cf.Position - focusPos) * Vector3.new(1, 0, 1)
	local distance = direction.Magnitude
	if distance < OCCLUSION_MIN_DIST then
		return cf
	end
	local filter: {Instance} = {camera}
	if vehicleModel then
		table.insert(filter, vehicleModel)
	end
	local character = localPlayer and localPlayer.Character
	if character then
		table.insert(filter, character)
	end
	vrRaycastParams.FilterDescendantsInstances = filter
	local rayDir = direction.Unit
	local result = workspace:Raycast(focusPos, direction, vrRaycastParams)
	if result and result.Normal:Dot(rayDir) < 0 then
		local hitDist = (result.Position - focusPos).Magnitude - OCCLUSION_MIN_DIST
		if hitDist < distance then
			local clamped = math.max(hitDist, OCCLUSION_MIN_DIST)
			return CFrame.new(focus.Position + rayDir * clamped) * cf.Rotation
		end
	end
	return cf
end

local vrOverlapParams = OverlapParams.new()
vrOverlapParams.FilterType = Enum.RaycastFilterType.Exclude

local function findObstructions(cf: CFrame, focus: CFrame, zoom: number, vehicleModel: Instance?): (number, {BasePart})
	local camera = workspace.CurrentCamera
	if not camera then
		return 0, {}
	end
	local focusPos: Vector3 = focus.Position
	local headCF: CFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
	local headScale: number = camera.HeadScale
	local headWorldCFrame: CFrame = cf * (CFrame.new(headCF.Position * headScale) * headCF.Rotation)
	local direction: Vector3 = headWorldCFrame.Position - focusPos
	local distance: number = direction.Magnitude

	if distance < OCCLUSION_MIN_DIST then
		return 0, {}
	end
	local filter: {Instance} = {camera}
	if vehicleModel then
		table.insert(filter, vehicleModel)
	end
	local character: Model? = localPlayer and localPlayer.Character
	if character then
		table.insert(filter, character)
	end
	vrRaycastParams.FilterDescendantsInstances = filter
	local result: RaycastResult? = workspace:Raycast(focusPos, direction, vrRaycastParams)
	if result then
		local hitDist: number = (result.Position - focusPos).Magnitude
		if hitDist < distance then
			local headLook: Vector3 = headWorldCFrame.LookVector
			local dot: number = -direction.Unit:Dot(headLook)
			local angleFactor: number = math.clamp((1 - dot) / (1 - OCCLUSION_VIGNETTE_THRESHOLD), 0, 1)
			local distanceFactor: number = 1 - (hitDist / zoom)
			local intensity: number = math.max(angleFactor, distanceFactor, OCCLUSION_VIGNETTE_MIN_INTENSITY)

			local hitPos: Vector3 = result.Position
			local cameraPos: Vector3 = headWorldCFrame.Position
			local boxCenter: Vector3 = (hitPos + cameraPos) / 2
			local boxSize: Vector3 = Vector3.new(2, 2, (cameraPos - hitPos).Magnitude)
			local boxOrientation: CFrame = CFrame.lookAt(boxCenter, cameraPos)
			vrOverlapParams.FilterDescendantsInstances = filter
			local parts: {BasePart} = workspace:GetPartBoundsInBox(boxOrientation, boxSize, vrOverlapParams)

			return intensity, parts
		end
	end
	return 0, {}
end

local worldDt = 1/60
local VRVehicleCamera = setmetatable({}, VRBaseCamera)
VRVehicleCamera.__index = VRVehicleCamera

function VRVehicleCamera.new()
	if not FFlagUserVRVehicleCamera then
		local VRVehicleCameraDeprecated = require(script.Parent:WaitForChild("VRVehicleCameraDeprecated"))
		return VRVehicleCameraDeprecated.new()
	end

	local self = setmetatable(VRBaseCamera.new(), VRVehicleCamera)
	self.skipOcclusion = true
	self:Reset()

	if self.thirdPersonOptionChanged then
		self.thirdPersonOptionChanged:Disconnect()
		self.thirdPersonOptionChanged = nil
	end

	RunService.Stepped:Connect(function(_: number, _worldDt: number)
		worldDt = _worldDt
	end)

	return self
end

function VRVehicleCamera:Reset()
	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	assert(camera, "VRVehicleCamera initialization error")
	assert(cameraSubject)
	assert(cameraSubject:IsA("VehicleSeat"))

	self.lastOrbitalDir = nil
	self.wasInFirstPerson = nil

	local assemblyParts = cameraSubject:GetConnectedParts(true)
	table.insert(assemblyParts, cameraSubject)
	local assemblyPosition, assemblyRadius = CameraUtils.getLooseBoundingSphere(assemblyParts)
	local vehicleModel = cameraSubject:FindFirstAncestorOfClass("Model") or cameraSubject.Parent
	self.vehicleModel = vehicleModel

	assemblyRadius = math.max(assemblyRadius, MIN_ASSEMBLY_RADIUS)

	self.assemblyRadius = assemblyRadius
	self.assemblyOffset = cameraSubject.CFrame:Inverse() * assemblyPosition

	self.gamepadZoomLevels = {}
	for _, zoom in DEFAULT_GAMEPAD_ZOOM_LEVELS do
		table.insert(self.gamepadZoomLevels, zoom * self.headScale * self.assemblyRadius / 10)
	end
	self.lastCameraFocus = nil
	if not self:IsInFirstPerson() then
		self:SetCameraToSubjectDistance(self.gamepadZoomLevels[#self.gamepadZoomLevels])
	end

	self.needsReset = false
end

function VRVehicleCamera:_getThirdPersonLocalOffset(): Vector3
	return self.assemblyOffset + Vector3.new(0, self.assemblyRadius * VehicleCameraConfig.verticalCenterOffset, 0)
end

function VRVehicleCamera:_getFirstPersonLocalOffset(subjectCFrame: CFrame): Vector3
	local character = localPlayer.Character

	if character and character.Parent then
		local head = character:FindFirstChild("Head")

		if head and head:IsA("BasePart") then
			return subjectCFrame:Inverse() * head.Position
		end
	end

	return self:_getThirdPersonLocalOffset()
end

function VRVehicleCamera:_vrOccludeVignette(focus: CFrame, orbitalDir: Vector3, zoom: number): CFrame
	local cf: CFrame = computeCameraCFrame(focus, orbitalDir, zoom)
	local intensity, hitParts = findObstructions(cf, focus, zoom, self.vehicleModel)
	local VRFade = Lighting:FindFirstChild("VRFade")
	if not VRFade then
		VRFade = Instance.new("ColorCorrectionEffect")
		VRFade.Name = "VRFade"
		VRFade.Parent = Lighting
	end
	VRFade.Brightness = -intensity

	if self.lastOccludedParts then
		for _, part in self.lastOccludedParts do
			part.LocalTransparencyModifier = 0
		end
	end
	if #hitParts > 0 then
		for _, part in hitParts do
			part.LocalTransparencyModifier = 1
		end
		self:StartVREdgeBlur(localPlayer, true)
	end
	self.lastOccludedParts = hitParts

	return cf
end

function VRVehicleCamera:Update(): (CFrame, CFrame)
	local dt = worldDt
	worldDt = 0

	self:UpdateFadeFromBlack(dt)
	self:UpdateEdgeBlur(localPlayer, dt)

	local camera, focus = self:_updateStepRotation(dt)

	return camera, focus
end

function VRVehicleCamera:_updateStepRotation(dt: number): (CFrame, CFrame)
	local subjectCFrame: CFrame = self:GetSubjectCFrame()
	local zoom: number = self:GetCameraToSubjectDistance()

	local firstPerson: number = mapClamp(zoom, ZOOM_MINIMUM, self.assemblyRadius, 1, 0)

	local tpOffset: Vector3 = self:_getThirdPersonLocalOffset()
	local fpOffset: Vector3 = self:_getFirstPersonLocalOffset(subjectCFrame)
	local localOffset: Vector3 = tpOffset:Lerp(fpOffset, firstPerson)
	local offsetSubject: Vector3 = subjectCFrame * localOffset

	local focus: CFrame = CFrame.new(offsetSubject + Vector3.new(0, self:GetCameraHeight(), 0))

	if self.needsReset or self.recentered then
		self.lastOrbitalDir = nil
		self.needsReset = false
		self.recentered = false
	end

	local orbitalDir: Vector3 = self.lastOrbitalDir
	if not orbitalDir then
		orbitalDir = (subjectCFrame.LookVector * Vector3.new(-1, 0, -1)).Unit
		self:StartFadeFromBlack()
	end

	local flatVel: Vector3 = self:GetSubjectVelocity() * Vector3.new(1, 0, 1)
	local isMoving: boolean = flatVel.Magnitude > DRIFT_MIN_VELOCITY

	if USE_ORBIT_CONTROL or not isMoving then
		local yawDelta: number = self:getRotation(dt)
		if math.abs(yawDelta) > 0 then
			local rotated = CFrame.Angles(0, -yawDelta, 0) * CFrame.new(orbitalDir)
			orbitalDir = rotated.Position.Unit
			self.lastRotateTime = os.clock()
		end
	else
		CameraInput.getRotation(dt)
	end

	local cf: CFrame
	if self:IsInFirstPerson() then
		if not self.wasInFirstPerson or isMoving then
			orbitalDir = (subjectCFrame.LookVector * Vector3.new(-1, 0, -1)).Unit
			self.wasInFirstPerson = true
		end
		local curYaw: number = math.atan2(-subjectCFrame.LookVector.X, -subjectCFrame.LookVector.Z)
		if self.lastVehicleYaw then
			local vehicleYawDelta: number = (curYaw - self.lastVehicleYaw + math.pi) % (math.pi * 2) - math.pi
			if math.abs(vehicleYawDelta) > 0.001 then
				local rotated = CFrame.Angles(0, vehicleYawDelta, 0) * CFrame.new(orbitalDir)
				orbitalDir = rotated.Position.Unit
			end
		end
		self.lastVehicleYaw = curYaw
		cf = computeCameraCFrame(focus, orbitalDir, zoom)
	else
		self.wasInFirstPerson = false
		self.lastVehicleYaw = nil

		local driftTimeout: boolean? = self.lastRotateTime and (os.clock() - self.lastRotateTime < VehicleCameraConfig.autocorrectDelay)
		if isMoving and not driftTimeout then
			local behindDir: Vector3 = (subjectCFrame.LookVector * Vector3.new(-1, 0, -1)).Unit
			local angle: number = math.acos(math.clamp(orbitalDir:Dot(behindDir), -1, 1))
			local turnSpeed: number = yawVelocity(self:GetSubjectRotVelocity(), subjectCFrame)
			local driftRate: number = math.min(DRIFT_BASE + (angle / math.pi) * DRIFT_ANGLE + turnSpeed * DRIFT_TURN, DRIFT_MAX)
			orbitalDir = orbitalDir:Lerp(behindDir, driftRate)
		end

		if USE_OCCLUSION_VIGNETTE then
			cf = self:_vrOccludeVignette(focus, orbitalDir, zoom)
		else
			cf = vrOccludeDisplace(focus, orbitalDir, zoom, self.vehicleModel)
		end
	end

	self.lastOrbitalDir = orbitalDir

	return cf, cf * CFrame.new(0, 0, -zoom)
end

return VRVehicleCamera
