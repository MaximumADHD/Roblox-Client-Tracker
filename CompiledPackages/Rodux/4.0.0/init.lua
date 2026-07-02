--!strict
local Store = require(script.Store)
local createReducer = require(script.createReducer)
local combineReducers = require(script.combineReducers)
local makeActionCreator = require(script.makeActionCreator)
local loggerMiddleware = require(script.loggerMiddleware)
local thunkMiddleware = require(script.thunkMiddleware)
local makeThunkMiddleware = require(script.makeThunkMiddleware)

local actions = require(script.types.actions)
local reducers = require(script.types.reducers)
local store = require(script.types.store)
local thunks = require(script.types.thunks)

export type Action<Type = any> = actions.Action<Type>
export type AnyAction = actions.AnyAction
export type ActionCreator<Type, Action, Args...> = actions.ActionCreator<Type, Action, Args...>

export type Reducer<State = any, Action = AnyAction> = reducers.Reducer<State, Action>

export type Store<State = any> = store.Store<State>

export type ThunkAction<ReturnType, State = any> = thunks.ThunkAction<ReturnType, State>
export type ThunkfulStore<State = any> = thunks.ThunkfulStore<State>

return {
	Store = Store,
	createReducer = createReducer,
	combineReducers = combineReducers,
	makeActionCreator = makeActionCreator,
	loggerMiddleware = loggerMiddleware.middleware,
	thunkMiddleware = thunkMiddleware,
	makeThunkMiddleware = makeThunkMiddleware,
}
