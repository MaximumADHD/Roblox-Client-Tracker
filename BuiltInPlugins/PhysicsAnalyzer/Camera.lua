-----------------
--MODULE CAMERA--
-----------------

--[[
	This modulescript is used for zooming the camera to given extents
--]]

-------------
--FUNCTIONS--
-------------

local distanceFromRadius = 3

local function zoomToExtents(extents)
	
	local camera = game.Workspace.CurrentCamera	
	
	local center = extents.center
	local radius = (extents.min - center).magnitude
	
	camera.CameraType = Enum.CameraType.Fixed
	
	local rotation = camera.CoordinateFrame - camera.CoordinateFrame.p
	local position = center - (rotation.lookVector * (radius + distanceFromRadius))
	
	camera.CoordinateFrame = rotation + position
	camera.Focus = CFrame.new(center)
end

-----------------
--ENCAPSULATION--
-----------------

local module = {}
module.zoomToExtents = zoomToExtents
return module
