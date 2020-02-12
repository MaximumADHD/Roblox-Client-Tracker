local EnumNetworkStatus = require(script.Parent.EnumNetworkStatus)
local buildActionName = require(script.Parent.buildActionName)

return function(options)
	local getStatus = require(script.Parent.getStatus)(options)

	local function actionCreator(ids, keymapper, status)
		return {
			ids = ids,
			keymapper = keymapper,
			status = status,
			type = buildActionName(options),
		}
	end

	local function filter(state, ids, keymapper)
		local filteredIds = {}
		for _, id in ipairs(ids) do
			local status = getStatus(state, keymapper(id))
			if status ~= EnumNetworkStatus.Fetching then
				table.insert(filteredIds, id)
			end
		end
		return filteredIds
	end

	return function(store, ids, keymapper, promiseFunction)
		local filteredIds = filter(store:getState(), ids, keymapper)

		store:dispatch(actionCreator(filteredIds, keymapper, EnumNetworkStatus.Fetching))

		return promiseFunction(store, filteredIds):andThen(function(result)
			store:dispatch(actionCreator(filteredIds, keymapper, EnumNetworkStatus.Done))
			return result
		end,
		function(errorString)
			store:dispatch(actionCreator(filteredIds, keymapper, EnumNetworkStatus.Failed))
			error(errorString)
		end)
	end
end
