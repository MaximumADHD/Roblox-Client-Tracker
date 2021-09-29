local Action = require(script.Parent.Action)

local Plugin = script.Parent.Parent.Parent

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local PlaneLockType = TerrainEnums.PlaneLockType

local FFlagTerrainToolsEditPlaneLock = game:GetFastFlag("TerrainToolsEditPlaneLock")

return Action(script.Name, function(planeLock)
	-- (skuhne) TODO: remove and update with other adjustable plane lock tickets
	if FFlagTerrainToolsEditPlaneLock then
		assert(type(planeLock) == "string", ("Expected planeLock to be a string, received %s"):format(type(planeLock)))
	else
		assert(type(planeLock) == "boolean", ("Expected planeLock to be a boolean, received %s"):format(type(planeLock)))
	end

	return {
		planeLock = planeLock,
	}
end)
