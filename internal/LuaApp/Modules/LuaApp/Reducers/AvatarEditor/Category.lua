local Reducers = script.Parent
local CategoryIndex = require(Reducers.CategoryIndex)
local TabsInfo = require(Reducers.TabsInfo)

return function(state, action)
	state = state or {}

	return {
		CategoryIndex = CategoryIndex(state.CategoryIndex, action);
		TabsInfo = TabsInfo(state.TabsInfo, action);
	}
end
