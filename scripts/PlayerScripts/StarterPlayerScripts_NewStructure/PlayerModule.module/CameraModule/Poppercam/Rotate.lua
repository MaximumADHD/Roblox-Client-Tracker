
local tau = math.pi*2
local clamp = math.clamp
local fromEulerYXZ = CFrame.fromEulerAnglesYXZ

local function lowpass(responsiveness)
	local x = 0
	return function(nx)
		x = responsiveness*nx + (1 - responsiveness)*x
		return x
	end
end

------------------------------------------------------------------------------

local PITCH_LIMIT = math.rad(88)

local pitch = math.rad(-10)
local yaw = math.rad(90)

local dPitch = 0
local dYaw = 0
local oldSubjectTransform

local dpf = lowpass(0.01)
local dyf = lowpass(0.01)

------------------------------------------------------------------------------

local Rotate = {} do
	function Rotate:Step(worldDt, subjectTransform, dPitch, dYaw)
		yaw = (yaw + dYaw*worldDt)%tau
		pitch = clamp(pitch + dPitch*worldDt, -PITCH_LIMIT, PITCH_LIMIT)
		oldSubjectTransform = subjectTransform*fromEulerYXZ(pitch, yaw, 0)
		return oldSubjectTransform
	end
	
	function Rotate:GetDelta(dt)
		local dp = dpf(dPitch)
		local dy = dyf(dYaw)
		return fromEulerYXZ(dp*dt, dy*dt, 0)
	end
end

return Rotate
