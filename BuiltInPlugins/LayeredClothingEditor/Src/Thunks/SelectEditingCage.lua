local Plugin = script.Parent.Parent.Parent
local SetEditingCage = require(Plugin.Src.Actions.SetEditingCage)

return function(cage)
	return function(store)
		local state = store:getState()

		local currentCage = state.selectItem.editingCage

		if currentCage ~= cage then
			store:dispatch(SetEditingCage(cage))
		end
	end
end