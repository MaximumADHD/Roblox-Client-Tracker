--[[
	Utilities for camera stuff in thumbnailing.
]]
local module = {}

local CFrameUtility = require(script.Parent.CFrameUtility)
local VectorUtility = require(script.Parent.VectorUtility)

-- When generating a head thumbnail, how much 'margin' around extent of head + accoutrements?
module.DefaultHeadMarginScale = 1.1
-- When generating a full body thumbnail, how much 'margin' around whole body?
module.DefaultBodyMarginScale = 1.1

--[[
	Determine a position by applying targetCFrame to relativePos.
	Return CFrame looking from that pos back towards target.
]]
module.GetCameraCFrame = function(targetCFrame, relativePos)
	local cameraPos = targetCFrame * relativePos
	return CFrame.lookAt(cameraPos, targetCFrame.p)
end

--[[
	Thumbnailer.Click does the following to decide which camera to use:
	1. if the first child of workspace has a child named "ThumbnailCamera", use that, without changes.
	2. otherwise use default system camera, and move that camera to try to contain all
	  the interesting stuff in the scene.
	Call this to get into scenario 1, a camera we control/can edit from lua.
]]
module.CreateThumbnailCamera = function()
	-- The thumbnailer will look for a child of first child of
	-- workspace called "Thumbnail Camera".  If it finds that, will
	-- use it.
	local camera = Instance.new("Camera", workspace:GetChildren()[1])
	camera.Name = "ThumbnailCamera"
	camera.CameraType = Enum.CameraType.Scriptable
	return camera
end

--[[
	We are given field of view and the extent size of the thing we want to have
	on screen, plus a margin expressed as scale.
	How far back should we position the camera to capture everything?
]]
module.CalculateBaseDistanceToCamera = function(fieldOfViewRad, minExtent, maxExtent, marginScale)
	local offsetFromCenter = math.max((maxExtent.X - minExtent.X)/2, (maxExtent.Y - minExtent.Y)/2)
	local t = math.tan(fieldOfViewRad/2)
	return (offsetFromCenter * marginScale)/t
end

--[[
	Helper function we can use both on RCC and in lua-app, so camera setup is as similar as possible
	between the two.
	Sets camera position, orientation, and field of view.

	Options include:
		Optional:
			optFieldOfView - field of view for the camera.  Defaults to existing camera field of view.
			optFieldOfViewForDistanceScale - field of view to use for distance scale calculation. Separate
				from optFieldOfView because in universal app we are dealing with the "peekaboo" view, where
				the picture we care about is some subrange of complete camera extent.  Defaults to
				camera field of view after applying optFieldOfView.
			optCameraXRot - camera rotation around X axis, defaults to 0.
			optCameraYRot - camera rotation around Y axis, defaults to 0.
			optCameraDistanceScale - scale applied to default camera distance from target, defaults to 1.
		Required:
			targetCFrame - Cframe describing position of the thing we want to view.
			minExtent, maxExtent - extents of thing we want to view.  Relative to targetCFrame.
			extentScale - scale to apply to extents to provide some margin around thing we're looking at.
]]
module.SetupCamera = function(camera, cameraOptions)
	if cameraOptions.optFieldOfView then
		camera.FieldOfView = cameraOptions.optFieldOfView
	end

	-- get distance to camera based on extents
	local fieldOfViewForDistanceScale = cameraOptions.optFieldOfViewForDistanceScale or camera.FieldOfView
	local distanceToCamera = module.CalculateBaseDistanceToCamera(math.rad(fieldOfViewForDistanceScale),
		cameraOptions.minExtent,
		cameraOptions.maxExtent,
		cameraOptions.extentScale)

	if cameraOptions.optCameraDistanceScale then
		distanceToCamera = distanceToCamera * cameraOptions.optCameraDistanceScale
	end

	-- Adjust to account for extent size.
	local finalTargetCFrame = CFrameUtility.AdjustTargetCFrameWithExtents(cameraOptions.targetCFrame,
		cameraOptions.minExtent,
		cameraOptions.maxExtent)

	local cameraXRotDeg = cameraOptions.optCameraXRot or 0
	local cameraYRotDeg = cameraOptions.optCameraYRot or 0

	local cPos = VectorUtility.Vector3FromXYRotPlusDistance(cameraXRotDeg, cameraYRotDeg, distanceToCamera)
	camera.CFrame = module.GetCameraCFrame(finalTargetCFrame, cPos)
end


return module
