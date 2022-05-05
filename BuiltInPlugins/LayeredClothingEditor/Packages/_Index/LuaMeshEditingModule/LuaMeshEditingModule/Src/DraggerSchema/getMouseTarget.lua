local LuaMeshEditingModule = script.Parent.Parent.Parent

local Util = LuaMeshEditingModule.Src.Util
local Constants = require(Util.Constants)
local Selectable = require(Util.Selectable)

local Workspace = game:GetService("Workspace")

local EngineFeatureDraggerBruteForce = game:GetEngineFeature("DraggerBruteForceAll")

return function(draggerContext, mouseRay, currentSelection)
	local whitelist = {
		Workspace:FindFirstChild(Constants.ControlPointsFolderName),
	}

	if EngineFeatureDraggerBruteForce then
		local params = RaycastParams.new()
		params.FilterDescendantsInstances = whitelist
		params.BruteForceAllSlow = true
		params.FilterType = Enum.RaycastFilterType.Whitelist
		local hitResult = Workspace:Raycast(mouseRay.Origin, mouseRay.Direction, params)

		if not hitResult then
			return nil
		end

		local result = Selectable.new(hitResult.Instance.Parent.Name, tonumber(hitResult.Instance.Name))
		return result, hitResult.Instance, hitResult.Distance
	else
		local hitItem, hitPosition = Workspace:FindPartOnRayWithWhitelist(mouseRay, whitelist)

		local hitDistance = (mouseRay.Origin - hitPosition).Magnitude

		if hitItem then
			local result = Selectable.new(hitItem.Parent.Name, tonumber(hitItem.Name))
			return result, hitItem, hitDistance
		else
			return nil
		end
	end
end