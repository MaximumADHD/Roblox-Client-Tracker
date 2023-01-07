--!strict

local AliasReducer = script.Parent.Parent
local getDeepValue = require(AliasReducer.getDeepValue)

local RoduxAliasesTypes = require(AliasReducer.RoduxAliasesTypes)

return function(options: RoduxAliasesTypes.RoduxOptions)
	local keyPath: string = options.keyPath
	return function(state: RoduxAliasesTypes.State, userId: number | string)
		local byUserId = getDeepValue(state, keyPath .. ".byUserId")
		return byUserId[userId]
	end
end
