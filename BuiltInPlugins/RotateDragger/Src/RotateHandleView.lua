--[[
	Displays rotation gimbal handles. When dragging, start and end radii showing
	the central angle of rotation are displayed.
]]

local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger Framework
local DraggerFramework = Plugin.Packages.DraggerFramework
local Math = require(DraggerFramework.Utility.Math)

local getFFlagImprovedHandleParams2 = require(DraggerFramework.Flags.getFFlagImprovedHandleParams2)

local RotateHandleView = Roact.PureComponent:extend("RotateHandleView")

local HANDLE_SEGMENTS = 32
local HANDLE_RADIUS = 4.5
local HANDLE_THICKNESS = getFFlagImprovedHandleParams2() and 0.15 or 0.10
local HANDLE_HITTEST_THICKNESS = HANDLE_THICKNESS * (getFFlagImprovedHandleParams2() and 4 or 2.5)
local HANDLE_THIN_BY_FRAC = 0.34
local HANDLE_THICK_BY_FRAC = 1.5
local HANDLE_DIM_TRANSPARENCY = getFFlagImprovedHandleParams2() and 0.45 or 0.7

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

	local radiusOffset = self.props.RadiusOffset or 0.0
	local radius
	if getFFlagImprovedHandleParams2() then
		radius = (HANDLE_RADIUS + radiusOffset) * self.props.Scale
	else
		radius = HANDLE_RADIUS * self.props.Scale
	end
	if getFFlagImprovedHandleParams2() then
		if self.props.Hovered then
			radius = radius + self.props.Scale * 0.1
		end
	end
	local thickness = HANDLE_THICKNESS * self.props.Scale
	local angleStep = 2 * math.pi / HANDLE_SEGMENTS
	local segmentLength
	local offset = radius * math.cos(angleStep / 2)

	local children = {}

	-- Thinning for drag
	if self.props.Thin then
		thickness = HANDLE_THIN_BY_FRAC * thickness
	end

	if getFFlagImprovedHandleParams2() then
		if self.props.Hovered then
			thickness = HANDLE_THICK_BY_FRAC * thickness
		end

		segmentLength = 2 * (radius + 0.5 * thickness) * math.sin(angleStep / 2)
	else
		segmentLength = 2 * radius * math.sin(angleStep / 2)
	end

	-- Draw main rotation gimbal.
	for i = 0, HANDLE_SEGMENTS - 1 do
		local angle = angleStep * i
		local cframe = self.props.HandleCFrame * CFrame.Angles(angle, 0, 0) * CFrame.new(0, 0, offset)
		local alwaysOnTopName = "OnTopHandleSegment" .. tostring(i)
		if getFFlagImprovedHandleParams2() then
			children[alwaysOnTopName] = Roact.createElement("BoxHandleAdornment", {
				Adornee = Workspace.Terrain,
				AlwaysOnTop = true,
				CFrame = cframe,
				Color3 = self.props.Color,
				Size = Vector3.new(thickness, segmentLength, thickness),
				Transparency = HANDLE_DIM_TRANSPARENCY,
				ZIndex = 0,
			})
			local brightName = "BrightHandleSegment" .. tostring(i)
			children[brightName] = Roact.createElement("BoxHandleAdornment", {
				Adornee = Workspace.Terrain,
				AlwaysOnTop = false,
				CFrame = cframe,
				Color3 = self.props.Color,
				Size = Vector3.new(thickness, segmentLength, thickness),
				ZIndex = 0,
			})
		else
			children[alwaysOnTopName] = Roact.createElement("BoxHandleAdornment", {
				Adornee = Workspace.Terrain,
				AlwaysOnTop = true,
				CFrame = cframe,
				Color3 = self.props.Color,
				Size = Vector3.new(thickness, segmentLength, thickness),
				Transparency = self.props.Hovered and 0.0 or HANDLE_DIM_TRANSPARENCY,
				ZIndex = 0,
			})
			if not self.props.Hovered then
				local brightName = "BrightHandleSegment" .. tostring(i)
				children[brightName] = Roact.createElement("BoxHandleAdornment", {
					Adornee = Workspace.Terrain,
					AlwaysOnTop = false,
					CFrame = cframe,
					Color3 = self.props.Color,
					Size = Vector3.new(thickness, segmentLength, thickness),
					ZIndex = 0,
				})
			end
		end
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
	if getFFlagImprovedHandleParams2() then
		local thinThickness = HANDLE_THICKNESS * self.props.Scale
		if self.props.StartAngle ~= nil then
			children.StartAngleElement = createRadiusElement(self.props.StartAngle, thinThickness)
		end
		if self.props.EndAngle ~= nil then
			children.EndAngleElement = createRadiusElement(self.props.EndAngle, thinThickness)
		end
	else
		if self.props.StartAngle ~= nil then
			children.StartAngleElement = createRadiusElement(self.props.StartAngle, thickness)
		end
		if self.props.EndAngle ~= nil then
			children.EndAngleElement = createRadiusElement(self.props.EndAngle, thickness)
		end
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

	local radiusOffset = props.RadiusOffset or 0.0
	local radius
	if getFFlagImprovedHandleParams2() then
		radius = (HANDLE_RADIUS + radiusOffset) * props.Scale
	else
		radius = HANDLE_RADIUS * props.Scale
	end
	local thickness = HANDLE_HITTEST_THICKNESS * props.Scale
	local normal = cframe.RightVector
	local point = cframe.Position

	local smallestDistance = math.huge
	local foundHit = false
	local hit, t

	-- Top ring
	local topPoint = point + normal * 0.5 * thickness
	t = Math.intersectRayPlane(unitRay.Origin, unitRay.Direction, topPoint, normal)
	if t >= 0 and t < smallestDistance then
		local mouseWorld = unitRay.Origin + unitRay.Direction * t
		local hitRadius = (mouseWorld - topPoint).Magnitude

		local distance = math.abs(hitRadius - radius)
		if distance < 0.5 * thickness then
			foundHit = true
			smallestDistance = t
		end
	end

	-- Bottom ring
	local bottomPoint = point - normal * 0.5 * thickness
	t = Math.intersectRayPlane(unitRay.Origin, unitRay.Direction, bottomPoint, -normal)
	if t >= 0 and t < smallestDistance then
		local mouseWorld = unitRay.Origin + unitRay.Direction * t
		local hitRadius = (mouseWorld - bottomPoint).Magnitude

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
	hit, t = Math.intersectRayCylinder(o, d, innerRadius, thickness)
	if hit and t < smallestDistance then
		foundHit = true
		smallestDistance = t
	end

	-- Outer Cylinder
	local outerRadius = radius + 0.5 * thickness
	hit, t = Math.intersectRayCylinder(o, d, outerRadius, thickness)
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
