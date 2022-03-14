local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)
local llama = require(ProjectRoot.llama)
local Dictionary = llama.Dictionary
local Set = llama.Set

return Rodux.createReducer({}, {
	MuteUser = function(state: table, action: table): table
		local mutedUserIds = state["mutedUserIds"]
		if not mutedUserIds then
			-- Initialize muted list
			mutedUserIds = {}
		end
		mutedUserIds = Set.add(mutedUserIds, action.userId)

		return Dictionary.joinDeep(state, {
			mutedUserIds = mutedUserIds,
		})
	end,
	UnmuteUser = function(state: table, action: table): table
		local mutedUserIds = state["mutedUserIds"]
		if mutedUserIds and Set.has(mutedUserIds, action.userId) then
			mutedUserIds = Set.subtract(mutedUserIds, action.userId)
		end

		return Dictionary.joinDeep(state, {
			mutedUserIds = mutedUserIds,
		})
	end,
})
