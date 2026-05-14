--!strict
local Rodux = require(script.Parent.Parent.Rodux)

type Action = Rodux.Action<string>
type ThunkAction<ReturnType, State> = Rodux.ThunkAction<ReturnType, State>
type ActionCreator<Type, Action, Args...> = Rodux.ActionCreator<Type, Action, Args...>

export type DispatchProp = <Payload>(action: Payload & Action) -> ()

export type ThunkfulDispatchProp<State = any> =
	DispatchProp
	& <ReturnType>(thunkAction: ThunkAction<ReturnType, State>) -> ReturnType

export type MapStateToProps<StoreState, Props, PartialProps> = (StoreState, Props) -> PartialProps?

export type MapStateToPropsOrThunk<StoreState, Props, PartialProps> =
	MapStateToProps<StoreState, Props, PartialProps>
	| () -> MapStateToProps<StoreState, Props, PartialProps>

export type ActionCreatorMap = {
	[string]: ActionCreator<any, any, ...any>,
}

export type MapDispatchToProps<StoreState, PartialProps> = (ThunkfulDispatchProp<StoreState>) -> PartialProps?

export type MapDispatchToPropsOrActionCreator<StoreState, PartialProps> =
	MapDispatchToProps<StoreState, PartialProps>
	| ActionCreatorMap

return nil
