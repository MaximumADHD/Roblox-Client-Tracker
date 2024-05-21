local Root = script:FindFirstAncestor("RoduxSquads")
local Packages = Root.Parent
local Rodux = require(Packages.Rodux)

local currentSquad = require(script.currentSquad)
local currentExperienceInvite = require(script.currentExperienceInvite)
local partialSquads = require(script.partialSquads)

return function(config)
	return Rodux.combineReducers({
		currentSquad = currentSquad(config),
		currentExperienceInvite = currentExperienceInvite(config),
		partialSquads = partialSquads(),
	})
end
