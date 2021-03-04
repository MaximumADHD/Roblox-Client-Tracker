local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)

local ErrorOccurred = require(Root.Actions.ErrorOccurred)
local CompleteRequest = require(Root.Actions.CompleteRequest)

return Rodux.createReducer({}, {
	[ErrorOccurred.name] = function(state, action)
		return action.purchaseError
	end,
	[CompleteRequest.name] = function(state, action)
		return {}
	end,
})