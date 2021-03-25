local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MAIN_SPHERE_RADIUS = 0.6
local MAIN_SPHERE_TRANSPARENCY = 0.5

return function(props)
	local handleScale = props.DraggerContext:getHandleScale(props.CFrame.Position)
	return Roact.createElement("SphereHandleAdornment", {
		Adornee = Workspace.Terrain,
		CFrame = props.CFrame,
		Radius = handleScale * MAIN_SPHERE_RADIUS,
		ZIndex = 0,
		AlwaysOnTop = false,
		Transparency = MAIN_SPHERE_TRANSPARENCY,
		Color3 = props.DraggerContext:getSelectionBoxColor(props.IsActive),
	})
end