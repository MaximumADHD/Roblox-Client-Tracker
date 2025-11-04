local SignalsScheduler = require(script.Parent.SignalsScheduler)

local createProxy = require(script.createProxy)
export type proxy<T> = createProxy.proxy<T>

return {
	batch = SignalsScheduler.batch,
	createProxy = createProxy,
	createReducer = require(script.createReducer),
	onDisposed = require(script.onDisposed),
}
