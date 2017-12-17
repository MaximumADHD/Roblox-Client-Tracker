--[[	
	Orbital Camera 1.0.0
	AllYourBlox
		
	Derived from ClassicCamera, adds camera angle constraints, and represents position values in spherical
	coordinates (azimuth, elevation, radius), instead of Cartesian coordinates (x, y, z). Azimuth is the
	angle of rotation about the Y axis, with the zero-angle reference point corresponding to offsetting
	the camera in the +Z direction, from where it will be looking in the -Z direction by default. Elevation
	is the angle up from the XZ plane, where zero degrees is on the plane, and +90 degrees is on the +Y
	axis. Distance is the camera-to-subject distance, the spherical coordinates radius, specified in studs.
--]]

-- Do not edit these values, they are not the developer-set limits, they are limits
-- to the values the camera system equations can correctly handle
local MIN_ALLOWED_ELEVATION_DEG = -80
local MAX_ALLOWED_ELEVATION_DEG = 80

local externalProperties = {}
externalProperties["InitialDistance"] 	= 25
externalProperties["MinDistance"] 		= 10
externalProperties["MaxDistance"] 		= 100
externalProperties["InitialElevation"] 	= 35
externalProperties["MinElevation"] 		= 35
externalProperties["MaxElevation"] 		= 35
externalProperties["ReferenceAzimuth"] 	= -45	-- Angle around the Y axis where the camera starts. -45 offsets the camera in the -X and +Z directions equally
externalProperties["CWAzimuthTravel"] 	= 90	-- How many degrees the camera is allowed to rotate from the reference position, CW as seen from above
externalProperties["CCWAzimuthTravel"] 	= 90	-- How many degrees the camera is allowed to rotate from the reference position, CCW as seen from above
externalProperties["UseAzimuthLimits"] 	= false -- Full rotation around Y axis available by default

local refAzimuthRad
local curAzimuthRad
local minAzimuthAbsoluteRad
local maxAzimuthAbsoluteRad
local useAzimuthLimits
local curElevationRad
local minElevationRad
local maxElevationRad
local curDistance
local minDistance
local maxDistance

local UNIT_Z = Vector3.new(0,0,1)
local TAU = 2 * math.pi

local changedSignalConnections = {}

-- End of OrbitalCamera additions
local PlayersService = game:GetService('Players')
local VRService = game:GetService("VRService")

local RootCameraCreator = require(script.Parent)

local UP_VECTOR = Vector3.new(0, 1, 0)
local XZ_VECTOR = Vector3.new(1, 0, 1)
local ZERO_VECTOR2 = Vector2.new(0, 0)

local VR_PITCH_FRACTION = 0.25

local Vector3_new = Vector3.new
local CFrame_new = CFrame.new
local math_min = math.min
local math_max = math.max
local math_atan2 = math.atan2
local math_rad = math.rad
local math_abs = math.abs

--[[ Gamepad Support ]]--
local THUMBSTICK_DEADZONE = 0.2
local r3ButtonDown = false
local l3ButtonDown = false
local currentZoomSpeed = 1 -- Multiplier, so 1 == no zooming

local function clamp(value, minValue, maxValue)
	if maxValue < minValue then
		maxValue = minValue
	end
	return math.clamp(value, minValue, maxValue)
end

local function IsFinite(num)
	return num == num and num ~= 1/0 and num ~= -1/0
end

local function IsFiniteVector3(vec3)
	return IsFinite(vec3.x) and IsFinite(vec3.y) and IsFinite(vec3.z)
end

-- May return NaN or inf or -inf
-- This is a way of finding the angle between the two vectors:
local function findAngleBetweenXZVectors(vec2, vec1)
	return math_atan2(vec1.X*vec2.Z-vec1.Z*vec2.X, vec1.X*vec2.X + vec1.Z*vec2.Z)
end

local function GetValueObject(name, defaultValue)
	local valueObj = script:FindFirstChild(name)
	if valueObj then
		return valueObj.Value
	end
	return defaultValue
end

local function LoadOrCreateNumberValueParameter(name, valueType, updateFunction)
	local valueObj = script:FindFirstChild(name)
	
	if valueObj and valueObj:isA(valueType) then
		-- Value object exists and is the correct type, use its value
		externalProperties[name] = valueObj.Value
	elseif externalProperties[name] ~= nil then
		-- Create missing (or replace incorrectly-typed) valueObject with default value
		valueObj = Instance.new(valueType)
		valueObj.Name = name
		valueObj.Parent = script
		valueObj.Value = externalProperties[name]
	else
		print("externalProperties table has no entry for ",name)
		return
	end
	
	if updateFunction then
		if changedSignalConnections[name] then
			changedSignalConnections[name]:disconnect()
		end
		changedSignalConnections[name] = valueObj.Changed:connect(function(newValue)
			externalProperties[name] = newValue
			updateFunction()
		end)
	end
end

local function SetAndBoundsCheckAzimuthValues()
	minAzimuthAbsoluteRad = math.rad(externalProperties["ReferenceAzimuth"]) - math.abs(math.rad(externalProperties["CWAzimuthTravel"]))
	maxAzimuthAbsoluteRad = math.rad(externalProperties["ReferenceAzimuth"]) + math.abs(math.rad(externalProperties["CCWAzimuthTravel"]))
	useAzimuthLimits = externalProperties["UseAzimuthLimits"]
	if useAzimuthLimits then
		curAzimuthRad = math.max(curAzimuthRad, minAzimuthAbsoluteRad)
		curAzimuthRad = math.min(curAzimuthRad, maxAzimuthAbsoluteRad)
	end
end

local function SetAndBoundsCheckElevationValues()
	-- These degree values are the direct user input values. It is deliberate that they are
	-- ranged checked only against the extremes, and not against each other. Any time one
	-- is changed, both of the internal values in radians are recalculated. This allows for
	-- A developer to change the values in any order and for the end results to be that the
	-- internal values adjust to match intent as best as possible.
	local minElevationDeg = math.max(externalProperties["MinElevation"], MIN_ALLOWED_ELEVATION_DEG)
	local maxElevationDeg = math.min(externalProperties["MaxElevation"], MAX_ALLOWED_ELEVATION_DEG)
	
	-- Set internal values in radians
	minElevationRad = math.rad(math.min(minElevationDeg, maxElevationDeg))
	maxElevationRad = math.rad(math.max(minElevationDeg, maxElevationDeg))
	curElevationRad = math.max(curElevationRad, minElevationRad)
	curElevationRad = math.min(curElevationRad, maxElevationRad)
end

local function SetAndBoundsCheckDistanceValues()
	minDistance = externalProperties["MinDistance"]
	maxDistance = externalProperties["MaxDistance"]
	curDistance = math.max(curDistance, minDistance)
	curDistance = math.min(curDistance, maxDistance)
end

-- This loads from, or lazily creates, NumberValue objects for exposed parameters
local function LoadNumberValueParameters()
	-- These initial values do not require change listeners since they are read only once
	LoadOrCreateNumberValueParameter("InitialElevation", "NumberValue", nil)
	LoadOrCreateNumberValueParameter("InitialDistance", "NumberValue", nil)
	
	-- Note: ReferenceAzimuth is also used as an initial value, but needs a change listener because it is used in the calculation of the limits
	LoadOrCreateNumberValueParameter("ReferenceAzimuth", "NumberValue", SetAndBoundsCheckAzimuthValues)
	LoadOrCreateNumberValueParameter("CWAzimuthTravel", "NumberValue", SetAndBoundsCheckAzimuthValues)
	LoadOrCreateNumberValueParameter("CCWAzimuthTravel", "NumberValue", SetAndBoundsCheckAzimuthValues)
	LoadOrCreateNumberValueParameter("MinElevation", "NumberValue", SetAndBoundsCheckElevationValues)
	LoadOrCreateNumberValueParameter("MaxElevation", "NumberValue", SetAndBoundsCheckElevationValues)
	LoadOrCreateNumberValueParameter("MinDistance", "NumberValue", SetAndBoundsCheckDistanceValues)
	LoadOrCreateNumberValueParameter("MaxDistance", "NumberValue", SetAndBoundsCheckDistanceValues)
	LoadOrCreateNumberValueParameter("UseAzimuthLimits", "BoolValue", SetAndBoundsCheckAzimuthValues)
	
	-- Internal values set (in radians, from degrees), plus sanitization
	curAzimuthRad = math.rad(externalProperties["ReferenceAzimuth"])
	curElevationRad = math.rad(externalProperties["InitialElevation"])
	curDistance = externalProperties["InitialDistance"]
	
	SetAndBoundsCheckAzimuthValues()
	SetAndBoundsCheckElevationValues()
	SetAndBoundsCheckDistanceValues()
end

local function CreateOrbitalCamera()
	local module = RootCameraCreator()
	
	LoadNumberValueParameters()	
	
	module.DefaultZoom = curDistance
	
	local tweenAcceleration = math_rad(220)
	local tweenSpeed = math_rad(0)
	local tweenMaxSpeed = math_rad(250)
	local timeBeforeAutoRotate = 2
	
	local lastUpdate = tick()
	module.LastUserPanCamera = tick()
	
	function module:Update()
		module:ProcessTweens()
		local now = tick()
		local timeDelta = (now - lastUpdate)
		local userPanningTheCamera = (self.UserPanningTheCamera == true)
		local camera = 	workspace.CurrentCamera
		local player = PlayersService.LocalPlayer
		local humanoid = self:GetHumanoid()
		local cameraSubject = camera and camera.CameraSubject
		local isInVehicle = cameraSubject and cameraSubject:IsA('VehicleSeat')
		local isOnASkateboard = cameraSubject and cameraSubject:IsA('SkateboardPlatform')
		
		if lastUpdate == nil or now - lastUpdate > 1 then
			module:ResetCameraLook()
			self.LastCameraTransform = nil
		end	
		
		if lastUpdate then
			local gamepadRotation = self:UpdateGamepad()
			
			if self:ShouldUseVRRotation() then				
				self.RotateInput = self.RotateInput + self:GetVRRotationInput()
			else
				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math_min(0.1, now - lastUpdate)
				
				if gamepadRotation ~= ZERO_VECTOR2 then
					userPanningTheCamera = true
					self.RotateInput = self.RotateInput + (gamepadRotation * delta)
				end

				local angle = 0
				if not (isInVehicle or isOnASkateboard) then
					angle = angle + (self.TurningLeft and -120 or 0)
					angle = angle + (self.TurningRight and 120 or 0)
				end
				
				if angle ~= 0 then
					self.RotateInput = self.RotateInput +  Vector2.new(math_rad(angle * delta), 0)
					userPanningTheCamera = true
				end
			end
		end

		-- Reset tween speed if user is panning
		if userPanningTheCamera then
			tweenSpeed = 0
			module.LastUserPanCamera = tick()
		end
		
		local userRecentlyPannedCamera = now - module.LastUserPanCamera < timeBeforeAutoRotate
		local subjectPosition = self:GetSubjectPosition()
		
		if subjectPosition and player and camera then
		
			
			local zoom = self:ZoomCamera(curDistance * currentZoomSpeed)
			
			
			if not userPanningTheCamera and self.LastCameraTransform then
				local isInFirstPerson = self:IsInFirstPerson()
				if (isInVehicle or isOnASkateboard) and lastUpdate and humanoid and humanoid.Torso then
					if isInFirstPerson then
						if self.LastSubjectCFrame and (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
							local y = -findAngleBetweenXZVectors(self.LastSubjectCFrame.lookVector, cameraSubject.CFrame.lookVector)
							if IsFinite(y) then
								self.RotateInput = self.RotateInput + Vector2.new(y, 0)
							end
							tweenSpeed = 0
						end
					elseif not userRecentlyPannedCamera then
						local forwardVector = humanoid.Torso.CFrame.lookVector
						if isOnASkateboard then
							forwardVector = cameraSubject.CFrame.lookVector
						end
						
						tweenSpeed = clamp(0, tweenMaxSpeed, tweenSpeed + tweenAcceleration * timeDelta)

						local percent = clamp(0, 1, tweenSpeed * timeDelta)
						if self:IsInFirstPerson() then
							percent = 1
						end
						
						local y = findAngleBetweenXZVectors(forwardVector, self:GetCameraLook())
						if IsFinite(y) and math_abs(y) > 0.0001 then
							self.RotateInput = self.RotateInput + Vector2.new(y * percent, 0)
						end
					end
				end
			end
			
			local VREnabled = VRService.VREnabled
			camera.Focus = VREnabled and self:GetVRFocus(subjectPosition, timeDelta) or CFrame_new(subjectPosition)

			local cameraFocusP = camera.Focus.p
			if VREnabled and not self:IsInFirstPerson() then
				local cameraHeight = self:GetCameraHeight()
				local vecToSubject = (subjectPosition - camera.CFrame.p)
				local distToSubject = vecToSubject.magnitude

				-- Only move the camera if it exceeded a maximum distance to the subject in VR
				if distToSubject > zoom or self.RotateInput.x ~= 0 then
					local desiredDist = math_min(distToSubject, zoom)
					vecToSubject = self:RotateCamera(vecToSubject.unit * XZ_VECTOR, Vector2.new(self.RotateInput.x, 0)) * desiredDist
					local newPos = cameraFocusP - vecToSubject
					local desiredLookDir = camera.CFrame.lookVector
					if self.RotateInput.x ~= 0 then
						desiredLookDir = vecToSubject
					end
					local lookAt = Vector3.new(newPos.x + desiredLookDir.x, newPos.y, newPos.z + desiredLookDir.z)
					self.RotateInput = ZERO_VECTOR2
					
					camera.CFrame = CFrame_new(newPos, lookAt) + Vector3_new(0, cameraHeight, 0)
				end
			else
				-- self.RotateInput is a Vector2 of mouse movement deltas since last update
				curAzimuthRad = curAzimuthRad - self.RotateInput.x
				
				if useAzimuthLimits then
					curAzimuthRad = clamp(curAzimuthRad, minAzimuthAbsoluteRad, maxAzimuthAbsoluteRad)
				else
					curAzimuthRad = (curAzimuthRad ~= 0) and (math.sign(curAzimuthRad) * (math.abs(curAzimuthRad) % TAU)) or 0
				end

				curDistance = clamp(zoom, minDistance, maxDistance)
				
				curElevationRad = clamp(curElevationRad + self.RotateInput.y, minElevationRad,maxElevationRad)
				
				local cameraPosVector = curDistance * ( CFrame.fromEulerAnglesYXZ( -curElevationRad, curAzimuthRad, 0 ) * UNIT_Z ) 
				local camPos = subjectPosition + cameraPosVector
				
				camera.CFrame = CFrame.new(camPos, subjectPosition)
			
				self.RotateInput = ZERO_VECTOR2
			end

			self.LastCameraTransform = camera.CFrame
			self.LastCameraFocus = camera.Focus
			if (isInVehicle or isOnASkateboard) and cameraSubject:IsA('BasePart') then
				self.LastSubjectCFrame = cameraSubject.CFrame
			else
				self.LastSubjectCFrame = nil
			end
		end
		
		lastUpdate = now
	end
	
	function module:GetCameraZoom()
		return curDistance
	end
	
	function module:ZoomCamera(desiredZoom)
		local player = PlayersService.LocalPlayer
		if player then
			curDistance = clamp(desiredZoom, minDistance, maxDistance)
		end

		local isFirstPerson = self:GetCameraZoom() < 2

		--ShiftLockController:SetIsInFirstPerson(isFirstPerson)
		-- set mouse behavior
		self:UpdateMouseBehavior()
		return self:GetCameraZoom()
	end
	
	function module:ZoomCameraBy(zoomScale)
		local newDist = curDistance
		-- Can break into more steps to get more accurate integration
        newDist = self:rk4Integrator(curDistance, zoomScale, 1)
		self:ZoomCamera(newDist)
		return self:GetCameraZoom()
	end

	function module:ZoomCameraFixedBy(zoomIncrement)
		return self:ZoomCamera(self:GetCameraZoom() + zoomIncrement)
	end
	
	function module:SetInitialOrientation(humanoid)
		local newDesiredLook = (humanoid.Torso.CFrame.lookVector - Vector3.new(0,0.23,0)).unit
		local horizontalShift = findAngleBetweenXZVectors(newDesiredLook, self:GetCameraLook())
		local vertShift = math.asin(self:GetCameraLook().y) - math.asin(newDesiredLook.y)
		if not IsFinite(horizontalShift) then
			horizontalShift = 0
		end
		if not IsFinite(vertShift) then
			vertShift = 0
		end
		self.RotateInput = Vector2.new(horizontalShift, vertShift)
	end

	function module.getGamepadPan(name, state, input)
		if input.UserInputType == module.activeGamepad and input.KeyCode == Enum.KeyCode.Thumbstick2 then
			if r3ButtonDown or l3ButtonDown then
			-- R3 or L3 Thumbstick is depressed, right stick controls dolly in/out
				if (input.Position.Y > THUMBSTICK_DEADZONE) then
					currentZoomSpeed = 0.96
				elseif (input.Position.Y < -THUMBSTICK_DEADZONE) then
					currentZoomSpeed = 1.04
				else 
					currentZoomSpeed = 1.00
				end
			else
				if state == Enum.UserInputState.Cancel then
					module.GamepadPanningCamera = ZERO_VECTOR2
					return
				end		
				
				local inputVector = Vector2.new(input.Position.X, -input.Position.Y)
				if inputVector.magnitude > THUMBSTICK_DEADZONE then
					module.GamepadPanningCamera = Vector2.new(input.Position.X, -input.Position.Y)
				else
					module.GamepadPanningCamera = ZERO_VECTOR2
				end
			end
		end
	end

	function module.doGamepadZoom(name, state, input)
		if input.UserInputType == module.activeGamepad and (input.KeyCode == Enum.KeyCode.ButtonR3 or input.KeyCode == Enum.KeyCode.ButtonL3) then
			if (state == Enum.UserInputState.Begin) then
				r3ButtonDown = input.KeyCode == Enum.KeyCode.ButtonR3
				l3ButtonDown = input.KeyCode == Enum.KeyCode.ButtonL3
			elseif (state == Enum.UserInputState.End) then
				if (input.KeyCode == Enum.KeyCode.ButtonR3) then
					r3ButtonDown = false
				elseif (input.KeyCode == Enum.KeyCode.ButtonL3) then
					l3ButtonDown = false
				end
				if (not r3ButtonDown) and (not l3ButtonDown) then
					currentZoomSpeed = 1.00
				end
			end
		end
	end
	
	function module:BindGamepadInputActions()
		local ContextActionService = game:GetService('ContextActionService')
		ContextActionService:BindAction("OrbitalCamGamepadPan", module.getGamepadPan, false, Enum.KeyCode.Thumbstick2)
		ContextActionService:BindAction("OrbitalCamGamepadZoom", module.doGamepadZoom, false, Enum.KeyCode.ButtonR3)
		ContextActionService:BindAction("OrbitalCamGamepadZoomAlt", module.doGamepadZoom, false, Enum.KeyCode.ButtonL3)
	end
	
	return module
end

return CreateOrbitalCamera
