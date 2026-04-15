--!strict
local actions = require(script.Parent.actions)

type AnyAction = actions.AnyAction

export type Reducer<State = any, Action = AnyAction> = (State?, Action) -> State

export type ReducersMapObject<State = any, Action = AnyAction> = {
	-- TODO Luau: used to be [K in keyof S]: K[S]
	[string]: Reducer<State, Action>,
}

return nil
