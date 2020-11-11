local FFlagUserCarCam do
	local success, result = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserCarCam")
	end)
	FFlagUserCarCam = success and result
end

local CameraUtils = require(script.Parent.Parent.CameraUtils)
local VehicleCameraConfig = require(script.Parent.VehicleCameraConfig)

local map = CameraUtils.map
local mapClamp = CameraUtils.mapClamp
local sanitizeAngle = CameraUtils.sanitizeAngle

-- extract sanitized yaw from a CFrame rotation
local function getYaw(cf)
	local _, yaw = cf:toEulerAnglesYXZ()
	return sanitizeAngle(yaw)
end

-- extract sanitized pitch from a CFrame rotation
local function getPitch(cf)
	local pitch = cf:toEulerAnglesYXZ()
	return sanitizeAngle(pitch)
end

-- step a damped angular spring axis
local function stepSpringAxis(dt, f, g, p, v)
	local offset = sanitizeAngle(p - g)
	local decay = math.exp(-f*dt)

	local p1 = sanitizeAngle((offset*(1 + f*dt) + v*dt)*decay + g)
	local v1 = (v*(1 - f*dt) - offset*(f*f*dt))*decay

	return p1, v1
end

-- value damper with separate response frequencies for rising and falling values
local VariableEdgeSpring = {} do
	VariableEdgeSpring.__index = VariableEdgeSpring

	function VariableEdgeSpring.new(fRising, fFalling, position)
		return setmetatable({
			fRising = fRising,
			fFalling = fFalling,
			g = position,
			p = position,
			v = position*0,
		}, VariableEdgeSpring)
	end

	function VariableEdgeSpring:step(dt)
		local fRising = self.fRising
		local fFalling = self.fFalling
		local g = self.g
		local p0 = self.p
		local v0 = self.v

		local f = 2*math.pi*(v0 > 0 and fRising or fFalling)

		local offset = p0 - g
		local decay = math.exp(-f*dt)

		local p1 = (offset*(1 + f*dt) + v0*dt)*decay + g
		local v1 = (v0*(1 - f*dt) - offset*(f*f*dt))*decay

		self.p = p1
		self.v = v1

		return p1
	end
end

-- damps a 3D rotation in Tait-Bryan YXZ space, filtering out Z
local YawPitchSpring = {} do
	YawPitchSpring.__index = YawPitchSpring

	function YawPitchSpring.new(cf)
		assert(typeof(cf) == "CFrame")
		
		return setmetatable({
			yawG = getYaw(cf), -- yaw goal
			yawP = getYaw(cf), -- yaw position
			yawV = 0, -- yaw velocity

			pitchG = getPitch(cf), -- pitch goal
			pitchP = getPitch(cf), -- pitch position
			pitchV = 0, -- pitch velocity

			-- yaw/pitch response springs
			fSpringYaw = VariableEdgeSpring.new(
				VehicleCameraConfig.yawReponseDampingRising,
				VehicleCameraConfig.yawResponseDampingFalling,
				0
			),
			fSpringPitch = VariableEdgeSpring.new(
				VehicleCameraConfig.pitchReponseDampingRising,
				VehicleCameraConfig.pitchResponseDampingFalling,
				0
			),
		}, YawPitchSpring)
	end
	
	-- Extract Tait-Bryan angles from a CFrame rotation
	function YawPitchSpring:setGoal(goalCFrame)
		assert(typeof(goalCFrame) == "CFrame")
		
		self.yawG = getYaw(goalCFrame)
		self.pitchG = getPitch(goalCFrame)
	end

	function YawPitchSpring:getCFrame()
		return CFrame.fromEulerAnglesYXZ(self.pitchP, self.yawP, 0)
	end

	function YawPitchSpring:step(dt, pitchVel, yawVel, firstPerson)
		assert(typeof(dt) == "number")
		assert(typeof(yawVel) == "number")
		assert(typeof(pitchVel) == "number")
		assert(typeof(firstPerson) == "number")
		
		local fSpringYaw = self.fSpringYaw
		local fSpringPitch = self.fSpringPitch
		
		-- calculate the frequency spring
		fSpringYaw.g = mapClamp(
			map(firstPerson, 0, 1, yawVel, 0),
			math.rad(VehicleCameraConfig.cutoffMinAngularVelYaw),
			math.rad(VehicleCameraConfig.cutoffMaxAngularVelYaw),
			1, 0
		)

		fSpringPitch.g = mapClamp(
			map(firstPerson, 0, 1, pitchVel, 0),
			math.rad(VehicleCameraConfig.cutoffMinAngularVelPitch),
			math.rad(VehicleCameraConfig.cutoffMaxAngularVelPitch),
			1, 0
		)
		
		-- calculate final frequencies
		local fYaw = 2*math.pi*VehicleCameraConfig.yawStiffness*fSpringYaw:step(dt)
		local fPitch = 2*math.pi*VehicleCameraConfig.pitchStiffness*fSpringPitch:step(dt)
		
		-- adjust response for first person
		fPitch *= map(firstPerson, 0, 1, 1, VehicleCameraConfig.firstPersonResponseMul)
		fYaw *= map(firstPerson, 0, 1, 1, VehicleCameraConfig.firstPersonResponseMul)
		
		-- step yaw
		self.yawP, self.yawV = stepSpringAxis(
			dt,
			fYaw,
			self.yawG,
			self.yawP,
			self.yawV
		)
		
		-- step pitch
		self.pitchP, self.pitchV = stepSpringAxis(
			dt,
			fPitch,
			self.pitchG,
			self.pitchP,
			self.pitchV
		)

		return self:getCFrame()
	end
end

local VehicleCameraCore = {} do
	VehicleCameraCore.__index = VehicleCameraCore

	function VehicleCameraCore.new(transform)
		assert(FFlagUserCarCam)
		
		return setmetatable({
			vrs = YawPitchSpring.new(transform)
		}, VehicleCameraCore)
	end

	function VehicleCameraCore:step(dt, pitchVel, yawVel, firstPerson)
		assert(FFlagUserCarCam)
		
		return self.vrs:step(dt, pitchVel, yawVel, firstPerson)
	end

	function VehicleCameraCore:setTransform(transform)
		assert(FFlagUserCarCam)
		
		self.vrs:setGoal(transform)
	end
end

return VehicleCameraCore
