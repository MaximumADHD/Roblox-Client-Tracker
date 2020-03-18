--[[
	Component that displays a spherical scale handle.
]]

local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

-- Dragger Framework
local Framework = Plugin.Packages.DraggerFramework
local Colors = require(Framework.Utility.Colors)
local Math = require(Framework.Utility.Math)

local ScaleHandleView = Roact.PureComponent:extend("ScaleHandleView")

local HANDLE_RADIUS = 0.5
local HANDLE_RADIUS_HOVERED_SCALE = 1.15 -- Radius scale when handle is hovered
local HANDLE_HITTEST_RADIUS_SCALE = 2.5 -- Radius scale for hit testing

local HANDLE_TRANSPARENCY_START = 0.75
local HANDLE_TRANSPARENCY_END = 0.2
local HANDLE_OFFSET = 1.5

function getDebugSettingValue(name, defaultValue)
	local setting = Workspace:FindFirstChild(name, true)
	return setting and setting.Value * defaultValue or defaultValue
end

function ScaleHandleView:render()
	-- DEBUG: Allow designers to play with handle settings.
	-- Remove before shipping!
	HANDLE_OFFSET = getDebugSettingValue("ScaleHandleOffset", 1.5)
	HANDLE_RADIUS = getDebugSettingValue("ScaleHandleRadius", 0.5)
	HANDLE_TRANSPARENCY_START = getDebugSettingValue("ScaleHandleTransparencyStart", 0.75)
	HANDLE_TRANSPARENCY_END = getDebugSettingValue("ScaleHandleTransparencyEnd", 0.2)

	local children = {}

	local color = self.props.Color
	local cframe = self.props.HandleCFrame * CFrame.new(0, 0, -HANDLE_OFFSET)
	local radius = HANDLE_RADIUS * self.props.Scale

	if not self.props.Hovered then
		children.HiddenHandle = Roact.createElement("SphereHandleAdornment", {
			Adornee = Workspace.Terrain,
			AlwaysOnTop = true,
			CFrame = cframe,
			Color3 = color,
			Radius = radius,
			Transparency = HANDLE_TRANSPARENCY_START,
			ZIndex = 1,
		})
	end

	local transparencyEnd = HANDLE_TRANSPARENCY_END

	if self.props.Hovered then
		radius = radius * HANDLE_RADIUS_HOVERED_SCALE
		transparencyEnd = 0
	end

	children.Handle = Roact.createElement("SphereHandleAdornment", {
        Adornee = Workspace.Terrain,
        AlwaysOnTop = self.props.Hovered,
        CFrame = cframe,
        Color3 = color,
		Radius = radius,
		Transparency = transparencyEnd,
        ZIndex = 0,
	})

	return Roact.createFragment(children)
end

--[[
	Check if the mouse is over the scale handle.
	DON'T include the hitTest radius. We will deal with the scale handles by
	first checking if we hit any of them, and taking that one if we do.
	If we don't actually hit any, then we see if we're within the hitTest radius
	for any of them, and if we are take the closest one.
]]
function ScaleHandleView.hitTest(props, mouseRay)
	local radius = HANDLE_RADIUS * props.Scale

	local unitRay = mouseRay.Unit
	local worldPosition = props.HandleCFrame * Vector3.new(0, 0, -HANDLE_OFFSET)
	local result, t = Math.intersectRaySphere(unitRay.Origin, unitRay.Direction, worldPosition, radius)

	if result then
		return t
	else
		return nil
	end
end

function ScaleHandleView.distanceFromHandle(props, mouseRay)
	local hitTestRadius = HANDLE_RADIUS * props.Scale * HANDLE_HITTEST_RADIUS_SCALE
	local worldPosition = props.HandleCFrame * Vector3.new(0, 0, -HANDLE_OFFSET)

	local rayDir = mouseRay.Direction.Unit
	local projectedLength = (worldPosition - mouseRay.Origin):Dot(rayDir)
	local projectedPoint = mouseRay.Origin + rayDir * projectedLength
	local distanceToRay = (worldPosition - projectedPoint).Magnitude
	return distanceToRay - hitTestRadius
end

return ScaleHandleView
