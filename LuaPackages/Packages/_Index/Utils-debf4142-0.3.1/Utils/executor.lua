-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/executor.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
type Record<K, T> = { [K]: T } --[[ ROBLOX TODO: TS 'Record' built-in type is not available in Luau ]]
local exports = {}
-- ROBLOX deviation START: fix module import
-- local interfacesJsModule = require(script.Parent["Interfaces.js"])
local interfacesJsModule = require(script.Parent.Interfaces)
-- ROBLOX deviation END
-- ROBLOX deviation START: import as types instead of locals
-- local ExecutionResult = interfacesJsModule.ExecutionResult
-- local ExecutionRequest = interfacesJsModule.ExecutionRequest
type ExecutionResult<TData = { [string]: any }> = interfacesJsModule.ExecutionResult<TData>
type ExecutionRequest<TArgs = { [string]: any }, TContext = any, TRootValue = any, TExtensions = { [string]: any }> =
	interfacesJsModule.ExecutionRequest<TArgs, TContext, TRootValue, TExtensions>
-- ROBLOX deviation END
type MaybePromise<T> = Promise<T> | T
type MaybeAsyncIterable<T> = AsyncIterable<T> | T
-- ROBLOX deviaton START: add additional types
type AsyncIterable<T> = any
type AsyncExecutorFn<TReturn, TArgs, TContext, TRoot, TExtensions> = (
	request: ExecutionRequest<TArgs, TContext, TRoot, TExtensions>
) -> Promise<MaybeAsyncIterable<ExecutionResult<TReturn>>>
-- ROBLOX deviation END
-- ROBLOX deviation START: fix type definition
-- export type AsyncExecutor<TBaseContext = Record<string, any>, TBaseExtensions = Record<string, any>> =
-- 	<
-- 		TReturn = any,
-- 		TArgs = Record<string, any>,
-- 		TContext = TBaseContext,
-- 		TRoot = any,
-- 		TExtensions = TBaseExtensions
-- 	>(
-- 		request: ExecutionRequest<TArgs, TContext, TRoot, TExtensions>
-- 	) -> Promise<MaybeAsyncIterable<ExecutionResult<TReturn>>>
export type AsyncExecutor<TBaseContext = { [string]: any }, TBaseExtensions = { [string]: any }> = AsyncExecutorFn<
	any,
	Record<string, any>,
	TBaseContext,
	any,
	TBaseExtensions
>
-- ROBLOX deviation END
-- ROBLOX deviation START: fix type definition using helper type
-- export type SyncExecutor<TBaseContext = Record<string, any>, TBaseExtensions = Record<string, any>> = <
-- 	TReturn = any,
-- 	TArgs = Record<string, any>,
-- 	TContext = TBaseContext,
-- 	TRoot = any,
-- 	TExtensions = TBaseExtensions
-- >(request: ExecutionRequest<TArgs, TContext, TRoot, TExtensions>) -> ExecutionResult<TReturn>
type SyncExecutorFn<TReturn, TArgs, TContext, TRoot, TExtensions> = (
	request: ExecutionRequest<TArgs, TContext, TRoot, TExtensions>
) -> ExecutionResult<TReturn>
export type SyncExecutor<TBaseContext = { [string]: any }, TBaseExtensions = { [string]: any }> = SyncExecutorFn<
	any,
	Record<string, any>,
	TBaseContext,
	any,
	TBaseExtensions
>
-- ROBLOX deviation END
-- ROBLOX deviation START: fix type definition using helper type
-- export type Executor<TBaseContext = Record<string, any>, TBaseExtensions = Record<string, any>> = <
-- 	TReturn = any,
-- 	TArgs = Record<string, any>,
-- 	TContext = TBaseContext,
-- 	TRoot = any,
-- 	TExtensions = TBaseExtensions
-- >(
-- 	request: ExecutionRequest<TArgs, TContext, TRoot, TExtensions>
-- ) -> MaybePromise<MaybeAsyncIterable<ExecutionResult<TReturn>>>
type ExecutorFn<TReturn, TArgs, TContext, TRoot, TExtensions> = (
	request: ExecutionRequest<TArgs, TContext, TRoot, TExtensions>
) -> MaybePromise<MaybeAsyncIterable<ExecutionResult<TReturn>>>
export type Executor<TBaseContext = { [string]: any }, TBaseExtensions = { [string]: any }> = ExecutorFn<
	any,
	Record<string, any>,
	TBaseContext,
	any,
	TBaseExtensions
>
-- ROBLOX deviation END
return exports
