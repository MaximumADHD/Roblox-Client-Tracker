local Plugin = script.Parent.Parent.Parent
local SetShowTree = require(Plugin.SrcDeprecated.Actions.SetShowTree)

return function()
	return function(store)
		local state = store:getState()

		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local showTree = not state.Status.ShowTree
		store:dispatch(SetShowTree(showTree))
	end
end