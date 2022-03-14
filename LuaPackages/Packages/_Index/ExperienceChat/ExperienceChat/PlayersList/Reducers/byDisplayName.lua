local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)
local Dictionary = require(ProjectRoot.llama).Dictionary
local Set = require(ProjectRoot.llama).Set

return Rodux.createReducer({}, {
	PlayerAdded = function(state: table, action: table): table
		local displayName = action.displayName
		local userId = action.userId

		local playersListByDisplayName = state.playersListByDisplayName
		if not playersListByDisplayName then
			playersListByDisplayName = {}
		end

		local userIdByDisplayName = playersListByDisplayName[displayName]
		if not userIdByDisplayName then
			playersListByDisplayName[displayName] = {}
		end
		playersListByDisplayName[displayName] = Set.add(playersListByDisplayName[displayName], userId)

		return Dictionary.joinDeep(state, {
			playersListByDisplayName = playersListByDisplayName,
		})
	end,
	PlayerRemoved = function(state: table, action: table): table
		local displayName = action.displayName
		local userId = action.userId

		local playersListByDisplayName = state.playersListByDisplayName
		if playersListByDisplayName and Dictionary.has(playersListByDisplayName, displayName) then
			local userIdsWithDisplayName = playersListByDisplayName[displayName]
			if userIdsWithDisplayName and Set.has(userIdsWithDisplayName, userId) then
				userIdsWithDisplayName = Set.subtract(userIdsWithDisplayName, userId)
			end
			playersListByDisplayName[displayName] = userIdsWithDisplayName
		end

		return Dictionary.joinDeep(state, {
			playersListByDisplayName = playersListByDisplayName,
		})
	end,
})
