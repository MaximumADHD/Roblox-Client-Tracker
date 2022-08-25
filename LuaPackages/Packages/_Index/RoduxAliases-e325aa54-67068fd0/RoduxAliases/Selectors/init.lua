--!strict

local AliasReducer = script.Parent
local RoduxAliasesTypes = require(AliasReducer.RoduxAliasesTypes)

return function(options: RoduxAliasesTypes.RoduxOptions)
	return {
		getAliasByUserId = require(script.getAliasByUserId)(options),
	}
end
