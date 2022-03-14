--[[
	VRVehicleCamera - Roblox VR vehicle camera control module
	2021 Roblox VR
--]]

local EPSILON = 1e-3
local PITCH_LIMIT = math.rad(80)
local YAW_DEFAULT = math.rad(0)
local ZOOM_MINIMUM = 0.5
local ZOOM_SENSITIVITY_CURVATURE = 0.5
local DEFAULT_CAMERA_DIST = 16
local TP_FOLLOW_DIST = 200
local TP_FOLLOW_ANGLE_DOT = 0.56

local VRBaseCamera = require(script.Parent:WaitForChild("VRBaseCamera"))
local CameraInput = require(script.Parent:WaitForChild("CameraInput"))
local CameraUtils = require(script.Parent:WaitForChild("CameraUtils"))
local ZoomController = require(script.Parent:WaitForChild("ZoomController"))
local VehicleCamera = require(script.Parent:WaitForChild("VehicleCamera"))
local VehicleCameraCore =  require(script.Parent.VehicleCamera:FindFirstChild("VehicleCameraCore"))
local VehicleCameraConfig = require(script.Parent.VehicleCamera:FindFirstChild("VehicleCameraConfig"))
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local VRService = game:GetService("VRService")

local localPlayer = Players.LocalPlayer
local Spring = CameraUtils.Spring
local mapClamp = CameraUtils.mapClamp
local sanitizeAngle = CameraUtils.sanitizeAngle

local ZERO_VECTOR3 = Vector3.new(0,0,0)

-- pitch-axis rotational velocity of a part with a given CFrame and total RotVelocity
local function pitchVelocity(rotVel, cf)
	return math.abs(cf.XVector:Dot(rotVel))
end

-- yaw-axis rotational velocity of a part with a given CFrame and total RotVelocity
local function yawVelocity(rotVel, cf)
	return math.abs(cf.YVector:Dot(rotVel))
end

local worldDt = 1/60
local VRVehicleCamera = setmetatable({}, VRBaseCamera)
VRVehicleCamera.__index = VRVehicleCamera

function VRVehicleCamera.new()
	local self = setmetatable(VRBaseCamera.new(), VRVehicleCamera)
	self:Reset()
	
	-- track physics solver time delta separately from the render loop to correctly synchronize time delta
	RunService.Stepped:Connect(function(_, _worldDt)
		worldDt = _worldDt
	end)
	
	return self
end

function VRVehicleCamera:Reset()
	self.vehicleCameraCore = VehicleCameraCore.new(self:GetSubjectCFrame())
	self.pitchSpring = Spring.new(0, -math.rad(VehicleCameraConfig.pitchBaseAngle))
	self.yawSpring = Spring.new(0, YAW_DEFAULT)

	local camera = workspace.CurrentCamera
	local cameraSubject = camera and camera.CameraSubject

	assert(camera, "VRVehicleCamera initialization error")
	assert(cameraSubject)
	assert(cameraSubject:IsA("VehicleSeat"))

	local assemblyParts = cameraSubject:GetConnectedParts(true) -- passing true to recursively get all assembly parts
	local assemblyPosition, assemblyRadius = CameraUtils.getLooseBoundingSphere(assemblyParts)

	assemblyRadius = math.max(assemblyRadius, EPSILON)

	self.assemblyRadius = assemblyRadius
	self.assemblyOffset = cameraSubject.CFrame:Inverse()*assemblyPosition -- seat-space offset of the assembly bounding sphere center

	self.lastCameraFocus = nil

	self:_StepInitialZoom()
end

function VRVehicleCamera:_StepInitialZoom()
	self:SetCameraToSubjectDistance(math.max(
		ZoomController.GetZoomRadius(),
		self.assemblyRadius*VehicleCameraConfig.initialZoomRadiusMul
	))
end

function VRVehicleCamera:_GetThirdPersonLocalOffset()
	return self.assemblyOffset + Vector3.new(0, self.assemblyRadius*VehicleCameraConfig.verticalCenterOffset, 0)
end

function VRVehicleCamera:_GetFirstPersonLocalOffset(subjectCFrame: CFrame)
	local character = localPlayer.Character

	if character and character.Parent then
		local head = character:FindFirstChild("Head")

		if head and head:IsA("BasePart") then
			return subjectCFrame:Inverse() * head.Position
		end
	end

	return self:_GetThirdPersonLocalOffset()
end

function VRVehicleCamera:Update()
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

	-- mix third and first person offsets in local space
	local firstPerson = mapClamp(zoom, ZOOM_MINIMUM, self.assemblyRadius, 1, 0)

	local tpOffset = self:_GetThirdPersonLocalOffset()
	local fpOffset = self:_GetFirstPersonLocalOffset(subjectCFrame)
	local localOffset = tpOffset:Lerp(fpOffset, firstPerson)

	-- step core forward
	vehicleCameraCore:setTransform(subjectCFrame)
	local processedRotation = vehicleCameraCore:step(dt, pitchVel, yawVel, firstPerson)

	-- end product of this function
	local focus = nil
	local cf = nil

	-- update fade from black
	self:UpdateFadeFromBlack(dt)

	if not self:IsInFirstPerson() then
		-- third person comfort camera
		focus =  CFrame.new(subjectCFrame*localOffset)*processedRotation
		cf = focus*CFrame.new(0, 0, zoom)

		if not self.lastCameraFocus then
			self.lastCameraFocus = focus
			self.needsReset = true
		end 

		local curCameraDir = focus.Position - camera.CFrame.Position
		local curCameraDist = curCameraDir.magnitude
		curCameraDir = curCameraDir.Unit
		local cameraDot = curCameraDir:Dot(camera.CFrame.LookVector)
		if cameraDot > TP_FOLLOW_ANGLE_DOT and curCameraDist < TP_FOLLOW_DIST and not self.needsReset then -- vehicle in view
			-- keep old focus
			focus = self.lastCameraFocus

			-- new cf result
			local cameraFocusP = focus.p
			local cameraLookVector = self:GetCameraLookVector()
			cameraLookVector = Vector3.new(cameraLookVector.X, 0, cameraLookVector.Z).Unit
			local newLookVector = self:CalculateNewLookVectorFromArg(cameraLookVector, Vector2.new(0, 0))
			cf = CFrame.new(cameraFocusP - (zoom * newLookVector), cameraFocusP)
		else
			-- new focus / teleport
			self.currentSubjectDistance = DEFAULT_CAMERA_DIST
			self.lastCameraFocus = self:GetVRFocus(subjectCFrame.Position, dt)
			self.needsReset = false
			self:StartFadeFromBlack()
			self:ResetZoom()
		end

		self:UpdateEdgeBlur(localPlayer, dt)
	else 
		-- first person in vehicle : lock orientation for stable camera
		local dir = Vector3.new(processedRotation.LookVector.X, 0, processedRotation.LookVector.Z).Unit
		local planarRotation = CFrame.new(processedRotation.Position, dir)

		-- this removes the pitch to reduce motion sickness
		focus =  CFrame.new(subjectCFrame * localOffset) * planarRotation
		cf = focus * CFrame.new(0, 0, zoom)

		self:StartVREdgeBlur(localPlayer)
	end

	return cf, focus
end

function VRVehicleCamera:EnterFirstPerson()
	self.inFirstPerson = true
	self:UpdateMouseBehavior()
end

function VRVehicleCamera:LeaveFirstPerson()
	self.inFirstPerson = false
	self:UpdateMouseBehavior()
end

return VRVehicleCamera
