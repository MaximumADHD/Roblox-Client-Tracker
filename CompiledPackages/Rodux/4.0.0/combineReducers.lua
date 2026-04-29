--!strict
--[[
	Create a composite reducer from a map of keys and sub-reducers.
]]

local actions = require(script.Parent.types.actions)
local reducers = require(script.Parent.types.reducers)
local store = require(script.Parent.types.store)

type AnyAction = actions.AnyAction

export type Reducer<State = any, Action = AnyAction> = reducers.Reducer<State, Action>
export type ReducersMapObject<State = any, Action = AnyAction> = reducers.ReducersMapObject<State, Action>

type CombinedState<State> = store.CombinedState<State>

local function combineReducers<State>(map: ReducersMapObject): Reducer<CombinedState<State>>
	-- FIXME LUAU: Remove any cast here once we can constrain the generic type State to a table type
	return function(state, action)
		-- If state is nil, substitute it with a blank table.
		if state == nil then
			state = {}
		end

		local newState = {}

		for key, reducer in pairs(map) do
			-- Each reducer gets its own state, not the entire state table
			newState[key] = reducer(state[key], action)
		end

		return newState
	end :: any
end

return combineReducers
