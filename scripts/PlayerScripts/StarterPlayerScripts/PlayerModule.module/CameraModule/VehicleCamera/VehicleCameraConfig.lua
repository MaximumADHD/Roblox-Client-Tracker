local VEHICLE_CAMERA_CONFIG = {
	-- (hz) Camera response stiffness along the pitch axis
	pitchStiffness = 0.5,

	-- (hz) Camera response stiffness along the yaw axis
	yawStiffness = 2.5,

	-- (s) Delay after use input before the camera can begin autorotating
	autocorrectDelay = 1,

	-- (studs/s) Minimum vehicle speed before the autocorrect begins to activate
	autocorrectMinCarSpeed = 16,

	-- (studs/s) Vehicle speed where autocorrect is fully activated
	autocorrectMaxCarSpeed = 32,

	-- (hz) Autocorrect stiffness/speed
	autocorrectResponse = 0.5,

	-- (deg/s) Minimum angular yaw velocity before the camera rotation cutoff begins
	cutoffMinAngularVelYaw = 60,

	-- (deg/s) Maximum angular yaw velocity where the camera rotation cutoff is fully activated
	cutoffMaxAngularVelYaw = 180,

	-- (deg/s) Minimum angular pitch velocity before the camera rotation cutoff begins
	cutoffMinAngularVelPitch = 15,

	-- (deg/s) Maximum angular pitch velocity where the camera rotation cutoff is fully activated
	cutoffMaxAngularVelPitch = 60,

	-- (deg) Default pitch angle relative to the horizon
	pitchBaseAngle = 18,

	-- (deg) Half-size of the deadzone angle for pitch autocorrect
	pitchDeadzoneAngle = 12,

	-- (unitless) Multiplier for camera response stiffness in first-person mode
	firstPersonResponseMul = 10,

	-- (hz) Responsiveness of yaw cutoff to rising angular velocities
	yawReponseDampingRising = 1,

	-- (hz) Responsiveness of yaw cutoff to falling angular velocities
	yawResponseDampingFalling = 3,

	-- (hz) Responsiveness of pitch cutoff to rising angular velocities
	pitchReponseDampingRising = 1,

	-- (hz) Responsiveness of pitch cutoff to falling angular velocities
	pitchResponseDampingFalling = 3,

	-- (unitless) Initial zoom radius as a fraction of car radius
	initialZoomRadiusMul = 3,

	-- (unitless) Vertical third-person camera offset as a fraction of car radius
	verticalCenterOffset = 0.33,
}

return VEHICLE_CAMERA_CONFIG
