local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)
local ToolUtil = require(Plugin.Src.Util.ToolUtil)

local Workspace = game:GetService("Workspace")

return function(draggerContext, mouseRay, currentSelection)
	local whitelist = {
		Workspace:FindFirstChild("RbfPoints"),
	}
	local lattices = Workspace:FindFirstChild("Lattices")
	if lattices then
		whitelist = Cryo.Dictionary.join(whitelist, lattices:GetChildren())
	end

	local hitItem, hitPosition = Workspace:FindPartOnRayWithWhitelist(mouseRay, whitelist)

	local hitDistance = (mouseRay.Origin - hitPosition).Magnitude

	if hitItem then
		local latticeTag = hitItem:FindFirstChild(Constants.LCE_CONTROL_TAG)
		if ToolUtil:isDraggerPointMode(draggerContext) and hitItem:FindFirstChild(Constants.LCE_POINT_TAG) then
			local selectedPointMeta = draggerContext.SelectedPointMeta
			local result = {Deformer = hitItem.Parent.Name, Index = tonumber(hitItem.Name)}
			result = setmetatable(result, selectedPointMeta)
			return result, hitItem, hitDistance
		elseif ToolUtil:isDraggerLatticeMode(draggerContext) and latticeTag then
			local selectedControlPointMeta = draggerContext.SelectedControlPointMeta
			local result = {
				Deformer = hitItem.Parent.Name,
				ID = hitItem.Name,
				GridPosition = latticeTag.Value
			}
			result = setmetatable(result, selectedControlPointMeta)
			return result, hitItem, hitDistance
		end
	else
		return nil
	end
end