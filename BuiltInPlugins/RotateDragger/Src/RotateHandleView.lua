--[[
	Displays rotation gimbal handles. When dragging, start and end radii showing
	the central angle of rotation are displayed.
]]

local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger Framework
local DraggerFramework = Plugin.Packages.DraggerFramework
local Colors = require(DraggerFramework.Utility.Colors)
local Math = require(DraggerFramework.Utility.Math)

local RotateHandleView = Roact.PureComponent:extend("RotateHandleView")

local HANDLE_SEGMENTS = 64
local HANDLE_RADIUS = 4.5
local HANDLE_THICKNESS = 0.15
local HANDLE_HITTEST_THICKNESS = HANDLE_THICKNESS * 2.5

function RotateHandleView:render()
	-- DEBUG: Allow designers to play with handle settings.
	-- Remove before shipping!
	if Workspace:FindFirstChild("RotateHandleRadius") and Workspace.RotateHandleRadius.Value ~= 0 then
        HANDLE_RADIUS = 4.5 * Workspace.RotateHandleRadius.Value
    end
	if Workspace:FindFirstChild("RotateHandleSegments") and Workspace.RotateHandleSegments.Value ~= 0 then
        HANDLE_SEGMENTS = 64 * Workspace.RotateHandleSegments.Value
	end
	if Workspace:FindFirstChild("RotateHandleThickness") and Workspace.RotateHandleThickness.Value ~= 0 then
		HANDLE_THICKNESS = 0.15 * Workspace.RotateHandleThickness.Value
		HANDLE_HITTEST_THICKNESS = HANDLE_THICKNESS * 2.5
    end

	-- TODO: DEVTOOLS-3876: [Modeling] Rotate tool enhancements
	-- Gimbal arc length should be a function of the viewing angle, and handle
	-- should face the camera.

	local radius = HANDLE_RADIUS * self.props.Scale
	local thickness = HANDLE_THICKNESS * self.props.Scale
	local angleStep = 2 * math.pi / HANDLE_SEGMENTS
	local segmentLength = 2 * radius * math.sin(angleStep / 2)
	local offset = radius * math.cos(angleStep / 2)

	local children = {}

	-- Draw main rotation gimbal.
	for i = 0, HANDLE_SEGMENTS - 1 do
		local angle = angleStep * i
		local cframe = self.props.HandleCFrame * CFrame.Angles(angle, 0, 0) * CFrame.new(0, 0, offset)
		local propertyName = "HandleSegment" .. tostring(i)
		children[propertyName] = Roact.createElement("BoxHandleAdornment", {
			Adornee = Workspace.Terrain,
			AlwaysOnTop = true,
			CFrame = cframe,
			Color3 = self.props.Color,
			Size = Vector3.new(thickness, segmentLength, thickness),
			ZIndex = 0,
		})
	end

	local function createRadiusElement(angle, thickness)
		local offset = CFrame.new(0, 0, -radius / 2)
		local cframe = self.props.HandleCFrame * CFrame.Angles(angle, 0, 0) * offset

		return Roact.createElement("CylinderHandleAdornment", {
			Adornee = Workspace.Terrain,
			AlwaysOnTop = true,
			CFrame = cframe,
			Color3 = self.props.Color,
			Height = radius,
			Radius = thickness / 2,
			ZIndex = 0,
		})
	end

	-- Draw radii for contral angle start and end.
	if self.props.StartAngle ~= nil then
		children.StartAngleElement = createRadiusElement(self.props.StartAngle, thickness / 2)
	end
	if self.props.EndAngle ~= nil then
		children.EndAngleElement = createRadiusElement(self.props.EndAngle, thickness)
	end

	return Roact.createFragment(children)
end

--[[
	Check if the mouse is over the rotation handle.

	The point of intersection between the mouse ray and plane perpendicular
	to the rotation axis is computed. The hit radius (distance from the origin
	of rotation to the intersection point) is compared to the gimbal radius,
	within a threshold to aid handle selection.
]]
function RotateHandleView.hitTest(props, mouseRay)
	local cframe = props.HandleCFrame
	local unitRay = mouseRay.Unit

	local radius = HANDLE_RADIUS * props.Scale
	local thickness = HANDLE_HITTEST_THICKNESS * props.Scale
	local normal = cframe.RightVector
	local point = cframe.Position

	local smallestDistance = math.huge
	local foundHit = false

	-- Top ring
	local topPoint = point + normal * 0.5 * thickness
	local t = Math.intersectRayPlane(unitRay.Origin, unitRay.Direction, topPoint, normal)
	if t >= 0 and t < smallestDistance then
		local mouseWorld = unitRay.Origin + unitRay.Direction * t
		hitRadius = (mouseWorld - topPoint).Magnitude

		local distance = math.abs(hitRadius - radius)
		if distance < 0.5 * thickness then
			foundHit = true
			smallestDistance = t
		end
	end

	-- Bottom ring
	local bottomPoint = point - normal * 0.5 * thickness
	local t = Math.intersectRayPlane(unitRay.Origin, unitRay.Direction, bottomPoint, -normal)
	if t >= 0 and t < smallestDistance then
		local mouseWorld = unitRay.Origin + unitRay.Direction * t
		hitRadius = (mouseWorld - bottomPoint).Magnitude

		local distance = math.abs(hitRadius - radius)
		if distance < 0.5 * thickness then
			foundHit = true
			smallestDistance = t
		end
	end

	-- Get the ray in local space, so that we can use the intersectRayCylinder
	-- call for the intersection. The canonical normal of the cylinder is
	-- (1, 0, 0) which is what that call expects.
	local o = cframe:PointToObjectSpace(unitRay.Origin)
	local d = cframe:VectorToObjectSpace(unitRay.Direction)

	-- Inner Cylinder
	local innerRadius = radius - 0.5 * thickness
	local hit, t = Math.intersectRayCylinder(o, d, innerRadius, thickness)
	if hit and t < smallestDistance then
		foundHit = true
		smallestDistance = t
	end

	-- Outer Cylinder
	local outerRadius = radius + 0.5 * thickness
	local hit, t = Math.intersectRayCylinder(o, d, outerRadius, thickness)
	if hit and t < smallestDistance then
		foundHit = true
		smallestDistance = t
	end

	if foundHit then
		return smallestDistance
	else
		return nil
	end
end

return RotateHandleView
