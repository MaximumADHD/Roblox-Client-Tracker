local types = require(script.types)
export type own = types.own
export type dispose = types.dispose
export type resource<A..., R...> = types.resource<A..., R...>

return {
	createResource = require(script.createResource),
	createCachedResource = require(script.createCachedResource),
}
