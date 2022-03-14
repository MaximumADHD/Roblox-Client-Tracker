--[[
	OrbitalCamera - Spherical coordinates control camera for top-down games
	2018 Camera Update - AllYourBlox
--]]

-- Local private variables and constants
local UNIT_Z = Vector3.new(0,0,1)
local X1_Y0_Z1 = Vector3.new(1,0,1)	--Note: not a unit vector, used for projecting onto XZ plane
local ZERO_VECTOR3 = Vector3.new(0,0,0)
local TAU = 2 * math.pi

-- Do not edit these values, they are not the developer-set limits, they are limits
-- to the values the camera system equations can correctly handle
local MIN_ALLOWED_ELEVATION_DEG = -80
local MAX_ALLOWED_ELEVATION_DEG = 80

local externalProperties = {}
externalProperties["InitialDistance"]  = 25
externalProperties["MinDistance"]      = 10
externalProperties["MaxDistance"]      = 100
externalProperties["InitialElevation"] = 35
externalProperties["MinElevation"]     = 35
externalProperties["MaxElevation"]     = 35
externalProperties["ReferenceAzimuth"] = -45	-- Angle around the Y axis where the camera starts. -45 offsets the camera in the -X and +Z directions equally
externalProperties["CWAzimuthTravel"]  = 90	-- How many degrees the camera is allowed to rotate from the reference position, CW as seen from above
externalProperties["CCWAzimuthTravel"] = 90	-- How many degrees the camera is allowed to rotate from the reference position, CCW as seen from above
externalProperties["UseAzimuthLimits"] = false -- Full rotation around Y axis available by default

local Util = require(script.Parent:WaitForChild("CameraUtils"))
local CameraInput = require(script.Parent:WaitForChild("CameraInput"))

--[[ Services ]]--
local PlayersService = game:GetService('Players')
local VRService = game:GetService("VRService")

--[[ The Module ]]--
local BaseCamera = require(script.Parent:WaitForChild("BaseCamera"))
local OrbitalCamera = setmetatable({}, BaseCamera)
OrbitalCamera.__index = OrbitalCamera


function OrbitalCamera.new()
	local self = setmetatable(BaseCamera.new(), OrbitalCamera)

	self.lastUpdate = tick()

	-- OrbitalCamera-specific members
	self.changedSignalConnections = {}
	self.refAzimuthRad = nil
	self.curAzimuthRad = nil
	self.minAzimuthAbsoluteRad = nil
	self.maxAzimuthAbsoluteRad = nil
	self.useAzimuthLimits = nil
	self.curElevationRad = nil
	self.minElevationRad = nil
	self.maxElevationRad = nil
	self.curDistance = nil
	self.minDistance = nil
	self.maxDistance = nil

	self.gamepadDollySpeedMultiplier = 1

	self.lastUserPanCamera = tick()

	self.externalProperties = {}
	self.externalProperties["InitialDistance"] 	= 25
	self.externalProperties["MinDistance"] 		= 10
	self.externalProperties["MaxDistance"] 		= 100
	self.externalProperties["InitialElevation"] 	= 35
	self.externalProperties["MinElevation"] 		= 35
	self.externalProperties["MaxElevation"] 		= 35
	self.externalProperties["ReferenceAzimuth"] 	= -45	-- Angle around the Y axis where the camera starts. -45 offsets the camera in the -X and +Z directions equally
	self.externalProperties["CWAzimuthTravel"] 	= 90	-- How many degrees the camera is allowed to rotate from the reference position, CW as seen from above
	self.externalProperties["CCWAzimuthTravel"] 	= 90	-- How many degrees the camera is allowed to rotate from the reference position, CCW as seen from above
	self.externalProperties["UseAzimuthLimits"] 	= false -- Full rotation around Y axis available by default
	self:LoadNumberValueParameters()

	return self
end

function OrbitalCamera:LoadOrCreateNumberValueParameter(name: string, valueType, updateFunction)
	local valueObj = script:FindFirstChild(name)

	if valueObj and valueObj:isA(valueType) then
		-- Value object exists and is the correct type, use its value
		self.externalProperties[name] = valueObj.Value
	elseif self.externalProperties[name] ~= nil then
		-- Create missing (or replace incorrectly-typed) valueObject with default value
		valueObj = Instance.new(valueType)
		valueObj.Name = name
		valueObj.Parent = script
		valueObj.Value = self.externalProperties[name]
	else
		return
	end

	if updateFunction then
		if self.changedSignalConnections[name] then
			self.changedSignalConnections[name]:Disconnect()
		end
		self.changedSignalConnections[name] = valueObj.Changed:Connect(function(newValue)
			self.externalProperties[name] = newValue
			updateFunction(self)
		end)
	end
end

function OrbitalCamera:SetAndBoundsCheckAzimuthValues()
	self.minAzimuthAbsoluteRad = math.rad(self.externalProperties["ReferenceAzimuth"]) - math.abs(math.rad(self.externalProperties["CWAzimuthTravel"]))
	self.maxAzimuthAbsoluteRad = math.rad(self.externalProperties["ReferenceAzimuth"]) + math.abs(math.rad(self.externalProperties["CCWAzimuthTravel"]))
	self.useAzimuthLimits = self.externalProperties["UseAzimuthLimits"]
	if self.useAzimuthLimits then
		self.curAzimuthRad = math.max(self.curAzimuthRad, self.minAzimuthAbsoluteRad)
		self.curAzimuthRad = math.min(self.curAzimuthRad, self.maxAzimuthAbsoluteRad)
	end
end

function OrbitalCamera:SetAndBoundsCheckElevationValues()
	-- These degree values are the direct user input values. It is deliberate that they are
	-- ranged checked only against the extremes, and not against each other. Any time one
	-- is changed, both of the internal values in radians are recalculated. This allows for
	-- A developer to change the values in any order and for the end results to be that the
	-- internal values adjust to match intent as best as possible.
	local minElevationDeg = math.max(self.externalProperties["MinElevation"], MIN_ALLOWED_ELEVATION_DEG)
	local maxElevationDeg = math.min(self.externalProperties["MaxElevation"], MAX_ALLOWED_ELEVATION_DEG)

	-- Set internal values in radians
	self.minElevationRad = math.rad(math.min(minElevationDeg, maxElevationDeg))
	self.maxElevationRad = math.rad(math.max(minElevationDeg, maxElevationDeg))
	self.curElevationRad = math.max(self.curElevationRad, self.minElevationRad)
	self.curElevationRad = math.min(self.curElevationRad, self.maxElevationRad)
end

function OrbitalCamera:SetAndBoundsCheckDistanceValues()
	self.minDistance = self.externalProperties["MinDistance"]
	self.maxDistance = self.externalProperties["MaxDistance"]
	self.curDistance = math.max(self.curDistance, self.minDistance)
	self.curDistance = math.min(self.curDistance, self.maxDistance)
end

-- This loads from, or lazily creates, NumberValue objects for exposed parameters
function OrbitalCamera:LoadNumberValueParameters()
	-- These initial values do not require change listeners since they are read only once
	self:LoadOrCreateNumberValueParameter("InitialElevation", "NumberValue", nil)
	self:LoadOrCreateNumberValueParameter("InitialDistance", "NumberValue", nil)

	-- Note: ReferenceAzimuth is also used as an initial value, but needs a change listener because it is used in the calculation of the limits
	self:LoadOrCreateNumberValueParameter("ReferenceAzimuth", "NumberValue", self.SetAndBoundsCheckAzimuthValue)
	self:LoadOrCreateNumberValueParameter("CWAzimuthTravel", "NumberValue", self.SetAndBoundsCheckAzimuthValues)
	self:LoadOrCreateNumberValueParameter("CCWAzimuthTravel", "NumberValue", self.SetAndBoundsCheckAzimuthValues)
	self:LoadOrCreateNumberValueParameter("MinElevation", "NumberValue", self.SetAndBoundsCheckElevationValues)
	self:LoadOrCreateNumberValueParameter("MaxElevation", "NumberValue", self.SetAndBoundsCheckElevationValues)
	self:LoadOrCreateNumberValueParameter("MinDistance", "NumberValue", self.SetAndBoundsCheckDistanceValues)
	self:LoadOrCreateNumberValueParameter("MaxDistance", "NumberValue", self.SetAndBoundsCheckDistanceValues)
	self:LoadOrCreateNumberValueParameter("UseAzimuthLimits", "BoolValue", self.SetAndBoundsCheckAzimuthValues)

	-- Internal values set (in radians, from degrees), plus sanitization
	self.curAzimuthRad = math.rad(self.externalProperties["ReferenceAzimuth"])
	self.curElevationRad = math.rad(self.externalProperties["InitialElevation"])
	self.curDistance = self.externalProperties["InitialDistance"]

	self:SetAndBoundsCheckAzimuthValues()
	self:SetAndBoundsCheckElevationValues()
	self:SetAndBoundsCheckDistanceValues()
end

function OrbitalCamera:GetModuleName()
	return "OrbitalCamera"
end

function OrbitalCamera:SetInitialOrientation(humanoid: Humanoid)
	if not humanoid or not humanoid.RootPart then
		warn("OrbitalCamera could not set initial orientation due to missing humanoid")
		return
	end
	local newDesiredLook = (humanoid.RootPart.CFrame.lookVector - Vector3.new(0,0.23,0)).unit
	local horizontalShift = Util.GetAngleBetweenXZVectors(newDesiredLook, self:GetCameraLookVector())
	local vertShift = math.asin(self:GetCameraLookVector().y) - math.asin(newDesiredLook.y)
	if not Util.IsFinite(horizontalShift) then
		horizontalShift = 0
	end
	if not Util.IsFinite(vertShift) then
		vertShift = 0
	end
end

--[[ Functions of BaseCamera that are overridden by OrbitalCamera ]]--
function OrbitalCamera:GetCameraToSubjectDistance()
	return self.curDistance
end

function OrbitalCamera:SetCameraToSubjectDistance(desiredSubjectDistance)
	local player = PlayersService.LocalPlayer
	if player then
		self.currentSubjectDistance = math.clamp(desiredSubjectDistance, self.minDistance, self.maxDistance)

		-- OrbitalCamera is not allowed to go into the first-person range
		self.currentSubjectDistance = math.max(self.currentSubjectDistance, self.FIRST_PERSON_DISTANCE_THRESHOLD)
	end
	self.inFirstPerson = false
	self:UpdateMouseBehavior()
	return self.currentSubjectDistance
end

function OrbitalCamera:CalculateNewLookVector(suppliedLookVector: Vector3, xyRotateVector: Vector2): Vector3
	local currLookVector: Vector3 = suppliedLookVector or self:GetCameraLookVector()
	local currPitchAngle: number = math.asin(currLookVector.y)
	local yTheta: number = math.clamp(xyRotateVector.y, currPitchAngle - math.rad(MAX_ALLOWED_ELEVATION_DEG), currPitchAngle - math.rad(MIN_ALLOWED_ELEVATION_DEG))
	local constrainedRotateInput: Vector2 = Vector2.new(xyRotateVector.x, yTheta)
	local startCFrame: CFrame = CFrame.new(ZERO_VECTOR3, currLookVector)
	local newLookVector: Vector3 = (CFrame.Angles(0, -constrainedRotateInput.x, 0) * startCFrame * CFrame.Angles(-constrainedRotateInput.y,0,0)).lookVector
	return newLookVector
end

-- [[ Update ]]--
function OrbitalCamera:Update(dt: number): (CFrame, CFrame)
	local now = tick()
	local timeDelta = (now - self.lastUpdate)
	local userPanningTheCamera = CameraInput.getRotation() ~= Vector2.new()
	local camera = 	workspace.CurrentCamera
	local newCameraCFrame = camera.CFrame
	local newCameraFocus = camera.Focus
	local player = PlayersService.LocalPlayer
	local cameraSubject = camera and camera.CameraSubject
	local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')
	local isOnASkateboard = cameraSubject and cameraSubject:IsA('SkateboardPlatform')

	if self.lastUpdate == nil or timeDelta > 1 then
		self.lastCameraTransform = nil
	end

	-- Reset tween speed if user is panning
	if userPanningTheCamera then
		self.lastUserPanCamera = tick()
	end

	local subjectPosition = self:GetSubjectPosition()

	if subjectPosition and player and camera then

		-- Process any dollying being done by gamepad
		-- TODO: Move this
		if self.gamepadDollySpeedMultiplier ~= 1 then
			self:SetCameraToSubjectDistance(self.currentSubjectDistance * self.gamepadDollySpeedMultiplier)
		end

		local VREnabled = VRService.VREnabled
		newCameraFocus = VREnabled and self:GetVRFocus(subjectPosition, timeDelta) or CFrame.new(subjectPosition)

		local flaggedRotateInput = CameraInput.getRotation()

		local cameraFocusP = newCameraFocus.p
		if VREnabled and not self:IsInFirstPerson() then
			local cameraHeight = self:GetCameraHeight()
			local vecToSubject: Vector3 = (subjectPosition - camera.CFrame.p)
			local distToSubject: number = vecToSubject.magnitude

			-- Only move the camera if it exceeded a maximum distance to the subject in VR
			if distToSubject > self.currentSubjectDistance or flaggedRotateInput.x ~= 0 then
				local desiredDist = math.min(distToSubject, self.currentSubjectDistance)

				-- Note that CalculateNewLookVector is overridden from BaseCamera
				vecToSubject = self:CalculateNewLookVector(vecToSubject.unit * X1_Y0_Z1, Vector2.new(flaggedRotateInput.x, 0)) * desiredDist

				local newPos = cameraFocusP - vecToSubject
				local desiredLookDir = camera.CFrame.lookVector
				if flaggedRotateInput.x ~= 0 then
					desiredLookDir = vecToSubject
				end
				local lookAt = Vector3.new(newPos.x + desiredLookDir.x, newPos.y, newPos.z + desiredLookDir.z)
				newCameraCFrame = CFrame.new(newPos, lookAt) + Vector3.new(0, cameraHeight, 0)
			end
		else
			-- rotateInput is a Vector2 of mouse movement deltas since last update
			self.curAzimuthRad = self.curAzimuthRad - flaggedRotateInput.x

			if self.useAzimuthLimits then
				self.curAzimuthRad = math.clamp(self.curAzimuthRad, self.minAzimuthAbsoluteRad, self.maxAzimuthAbsoluteRad)
			else
				self.curAzimuthRad = (self.curAzimuthRad ~= 0) and (math.sign(self.curAzimuthRad) * (math.abs(self.curAzimuthRad) % TAU)) or 0
			end

			self.curElevationRad = math.clamp(self.curElevationRad + flaggedRotateInput.y, self.minElevationRad, self.maxElevationRad)

			local cameraPosVector = self.currentSubjectDistance * ( CFrame.fromEulerAnglesYXZ( -self.curElevationRad, self.curAzimuthRad, 0 ) * UNIT_Z )
			local camPos = subjectPosition + cameraPosVector

			newCameraCFrame = CFrame.new(camPos, subjectPosition)
		end

		self.lastCameraTransform = newCameraCFrame
		self.lastCameraFocus = newCameraFocus
		if (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
			self.lastSubjectCFrame = cameraSubject.CFrame
		else
			self.lastSubjectCFrame = nil
		end
	end

	self.lastUpdate = now
	return newCameraCFrame, newCameraFocus
end

return OrbitalCamera
