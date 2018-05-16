local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local SetEntriesInSort = require(Modules.LuaApp.Actions.SetEntriesInSort)
local AddGameSorts = require(Modules.LuaApp.Actions.AddGameSorts)

return function(state, action)
	state = state or {}

	if action.type == AddGameSorts.name then
		local tmpTable = {}
		for _, sortData in pairs(action.sorts) do
			tmpTable[sortData.name] = state[sortData.name] or {}
		end
		state = Immutable.JoinDictionaries(state, tmpTable)

	elseif action.type == SetEntriesInSort.name then
		-- store the universeIds associated with their sort
		state = Immutable.Set(state, action.sort, action.entries)
	end
	return state
end