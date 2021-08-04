local Plugin = script.Parent.Parent.Parent
local SetEditingCage = require(Plugin.Src.Actions.SetEditingCage)
local SelectRbfPoint = require(Plugin.Src.Thunks.SelectRbfPoint)
local SelectControlPoint = require(Plugin.Src.Thunks.SelectControlPoint)

return function(cage)
	return function(store)
		local state = store:getState()

		local currentCage = state.selectItem.editingCage

		if currentCage ~= cage then
			store:dispatch(SelectRbfPoint({}))
			store:dispatch(SelectControlPoint({}))
			store:dispatch(SetEditingCage(cage))
		end
	end
end