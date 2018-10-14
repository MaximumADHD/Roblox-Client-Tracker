--------------------------------------------------------------------------------
-- Zoom.lua
-- Controls the distance between the focus and the camera.
--------------------------------------------------------------------------------

local ZOOM_STIFFNESS    = 4.5
local ZOOM_DEFAULT      = 16
local ZOOM_ACCELERATION = 0.0375

local ZOOM_OPAQUE       = 2
local ZOOM_TRANSPARENT  = 0.5

local ConstrainedSpring = require(script:WaitForChild("ConstrainedSpring"))
local Popper = require(script:WaitForChild("Popper"))

local cframe = CFrame.new
local clamp = math.clamp
local min = math.min
local max = math.max

local DIST_MIN, DIST_MAX do
	local Player = game:GetService("Players").LocalPlayer

	local function updateBounds()
		DIST_MIN = Player.CameraMinZoomDistance
		DIST_MAX = Player.CameraMaxZoomDistance
	end

	updateBounds()

	Player:GetPropertyChangedSignal('CameraMinZoomDistance'):Connect(updateBounds)
	Player:GetPropertyChangedSignal('CameraMaxZoomDistance'):Connect(updateBounds)
end

--------------------------------------------------------------------------------

local zoomSpring = ConstrainedSpring.new(ZOOM_STIFFNESS, ZOOM_DEFAULT, DIST_MIN, DIST_MAX)

local function zoomToTransparency(zoom)
	zoom = clamp(zoom, ZOOM_TRANSPARENT, ZOOM_OPAQUE)
	local t = (zoom - ZOOM_TRANSPARENT)/(ZOOM_OPAQUE - ZOOM_TRANSPARENT)
	return 1 - (3 - 2*t)*t*t
end

local function stepTargetZoom(z, dz, zoomMin, zoomMax)
	z = clamp(z + dz*(1 + z*ZOOM_ACCELERATION), zoomMin, zoomMax)
	if z < ZOOM_OPAQUE then
		z = dz <= 0 and zoomMin or ZOOM_OPAQUE
	end
	return z
end

--------------------------------------------------------------------------------

function Zoom(renderDt, zoomDelta, focus, subjectRootPart)
	
	local prmax = max(zoomSpring.x, stepTargetZoom(zoomSpring.goal, zoomDelta, DIST_MIN, DIST_MAX))
	
	local poppedZoom = Popper(focus*cframe(0, 0, DIST_MIN), prmax - DIST_MIN, subjectRootPart) + DIST_MIN
	
	local zoomMin = DIST_MIN
	local zoomMax = min(DIST_MAX, poppedZoom)
	zoomSpring:setBounds(zoomMin, zoomMax)
	
	local isPopped = zoomSpring.goal > zoomMax
	
	if zoomDelta ~= 0 then
		if not isPopped then
			zoomSpring.goal = stepTargetZoom(zoomSpring.goal, zoomDelta, zoomMin, zoomMax)
		elseif zoomDelta < 0 then
			zoomSpring.goal = stepTargetZoom(zoomMax, zoomDelta, zoomMin, zoomMax)
		end
	end
	
	local zoom = zoomSpring:step(renderDt)
	local fp = zoomSpring.goal == DIST_MIN
	local transparency = fp and zoomToTransparency(zoom) or 0
	
	return zoom, transparency, fp
end

return Zoom
