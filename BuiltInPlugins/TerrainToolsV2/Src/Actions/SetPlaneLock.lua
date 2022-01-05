local Action = require(script.Parent.Action)

local Plugin = script.Parent.Parent.Parent

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local PlaneLockType = TerrainEnums.PlaneLockType

return Action(script.Name, function(planeLock)
	assert(type(planeLock) == "string", ("Expected planeLock to be a string, received %s"):format(type(planeLock)))

	return {
		planeLock = planeLock,
	}
end)
