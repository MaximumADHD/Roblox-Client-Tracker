local ContactsReducer = script.Parent.Parent.Parent
local Packages = ContactsReducer.Parent
local Types = ContactsReducer.Types
local Rodux = require(Packages.Rodux) :: any
local ReducerTypes = require(Types.ReducerTypes)
local ActionTypes = require(Types.ActionTypes)
local Actions = require(ContactsReducer.Actions)
local RequestSent = Actions.RequestSent
local Dash = require(Packages.Dash) :: any

local DEFAULT_STATE: ReducerTypes.HasSentRequest = {}

return function(_options)
	return Rodux.createReducer(DEFAULT_STATE, {
		[RequestSent.name] = function(state: ReducerTypes.HasSentRequest, action: ActionTypes.RequestSentAction)
			return Dash.join(state, { [action.payload.id] = true })
		end,
	})
end
