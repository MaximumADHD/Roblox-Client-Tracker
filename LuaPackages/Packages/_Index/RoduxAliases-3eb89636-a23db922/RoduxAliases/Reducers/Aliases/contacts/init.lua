--!strict

local AliasReducer = script.Parent.Parent.Parent
local Root = AliasReducer.Parent
local Rodux = require(Root.Rodux) :: any
local byUserId = require(script.byUserId)

local RoduxAliasesTypes = require(AliasReducer.RoduxAliasesTypes)

return function(options: RoduxAliasesTypes.RoduxOptions)
	return Rodux.combineReducers({
		byUserId = byUserId(options),
	})
end
