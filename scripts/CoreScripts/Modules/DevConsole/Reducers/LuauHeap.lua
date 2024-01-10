--!strict
local Immutable = require(script.Parent.Parent.Immutable)

local Actions = script.Parent.Parent.Actions
local SetLuauHeapState = require(Actions.SetLuauHeapState)
local SetLuauHeapProfileTarget = require(Actions.SetLuauHeapProfileTarget)
local SetLuauHeapActiveSnapshot = require(Actions.SetLuauHeapActiveSnapshot)
local SetLuauHeapCompareSnapshot = require(Actions.SetLuauHeapCompareSnapshot)
local LuauHeapTypes = require(script.Parent.Parent.Components.LuauHeap.LuauHeapTypes)

export type State = {
	isClientView: boolean,

	client: LuauHeapTypes.SessionState,
	server: LuauHeapTypes.SessionState,
}

local defaultState: State = {
	isClientView = true,

	client = {
		snapshots = {},
		active = 0,
		compare = 0,
	},
	server = {
		snapshots = {},
		active = 0,
		compare = 0,
	},
}

return function(state: State?, action: { [string]: any }): State
	local immutableState: State = state or defaultState

	if action.type == SetLuauHeapState.name then
		local update = if action.isClientState then {
			client = action.sessionState
		} else {
			server = action.sessionState
		}
		return Immutable.JoinDictionaries(immutableState, update) :: any
	elseif action.type == SetLuauHeapProfileTarget.name then
		return Immutable.JoinDictionaries(immutableState, {
			isClientView = action.isClientView
		})
	elseif action.type == SetLuauHeapActiveSnapshot.name then
		if immutableState.isClientView then
			local session = table.clone(immutableState.client)
			session.active = action.active
			return Immutable.JoinDictionaries(immutableState, {
				client = session
			})
		else
			local session = table.clone(immutableState.server)
			session.active = action.active
			return Immutable.JoinDictionaries(immutableState, {
				server = session
			})
		end
	elseif action.type == SetLuauHeapCompareSnapshot.name then
		if immutableState.isClientView then
			local session = table.clone(immutableState.client)
			session.compare = action.compare
			return Immutable.JoinDictionaries(immutableState, {
				client = session
			})
		else
			local session = table.clone(immutableState.server)
			session.compare = action.compare
			return Immutable.JoinDictionaries(immutableState, {
				server = session
			})
		end
	end

	return immutableState
end
