--!strict
local actions = require(script.Parent.actions)

type BaseAction = actions.Action<string>

type EmptyObject = {}

export type CombinedState<State> = EmptyObject & State

export type IDispatch<Store> = <Action>(self: Store, action: Action & BaseAction) -> ()
export type Dispatch<State = any> = IDispatch<Store<State>>

export type IStore<State, Dispatch> = {
	dispatch: Dispatch,
	getState: (self: IStore<State, Dispatch>) -> State,
	destruct: (self: IStore<State, Dispatch>) -> (),
	flush: (self: IStore<State, Dispatch>) -> (),
	changed: RBXScriptSignal,
}
export type Store<State = any> = IStore<State, Dispatch<State>>

return nil
