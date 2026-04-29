--!strict
local actions = require(script.Parent.types.actions)
local reducers = require(script.Parent.types.reducers)

type AnyAction = actions.AnyAction

export type Reducer<State = any, Action = AnyAction> = reducers.Reducer<State, Action>

return function<State>(initialState, handlers): Reducer<State>
	-- FIXME LUAU: Prefer any cast to avoid assert runtime overhead until typechecker can narrow type of _state_ to be non-nil
	return function(state: any, action)
		if state == nil then
			state = initialState
		end

		local handler = handlers[action.type]

		if handler then
			return handler(state, action)
		end

		return state
	end
end
