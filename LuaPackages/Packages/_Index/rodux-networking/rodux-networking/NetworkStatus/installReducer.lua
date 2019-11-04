local Rodux = require(script.Parent.Rodux)
local Freeze = require(script.Parent.Freeze)
local buildActionName = require(script.Parent.buildActionName)

return function(options)
	return function()
		return Rodux.createReducer(Freeze.UnorderedMap.new({}), {
			[buildActionName(options)] = function(state, action)
				local updatedStatus = {}
				for _, id in ipairs(action.ids) do
					local mappedId = action.keymapper(id)
					updatedStatus[mappedId] = action.status
				end

				return state:batchSet(updatedStatus)
			end,
		})
	end
end
