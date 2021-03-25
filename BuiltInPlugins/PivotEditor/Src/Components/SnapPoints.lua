local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local SNAP_POINT_TRANSPARENCY = 0.7
local SNAP_POINT_COLOR = Color3.new(1, 0, 1)
local SNAP_POINT_SIZE = 0.2
local SNAP_POINT_SIZE_VEC = Vector3.new(SNAP_POINT_SIZE, SNAP_POINT_SIZE, SNAP_POINT_SIZE)

return function(props)
	local snapPointElements = {}
	for i, pointCFrame in ipairs(props.SnapPoints) do
		local point = pointCFrame.Position
		local scale = props.DraggerContext:getHandleScale(point)
		snapPointElements[i * 2 - 1] = Roact.createElement("BoxHandleAdornment", {
			ZIndex = 0,
			Adornee = Workspace.Terrain,
			CFrame = pointCFrame,
			Color3 = SNAP_POINT_COLOR,
			Size = SNAP_POINT_SIZE_VEC * scale,
		})
		snapPointElements[i * 2] = Roact.createElement("BoxHandleAdornment", {
			ZIndex = 0,
			Adornee = Workspace.Terrain,
			CFrame = pointCFrame,
			Color3 = SNAP_POINT_COLOR,
			AlwaysOnTop = true,
			Transparency = SNAP_POINT_TRANSPARENCY,
			Size = SNAP_POINT_SIZE_VEC * scale,
		})
	end
	return Roact.createElement("Folder", {}, snapPointElements)
end