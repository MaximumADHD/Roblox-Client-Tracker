local types = require(script.types)

export type DebugFlags = types.DebugFlags

return {
	ModuleLoader = require(script.ModuleLoader),
	getDebugFlags = require(script.getDebugFlags),
	hasInternalPermission = require(script.hasInternalPermission),
	isCli = require(script.isCli),
	isFTF = require(script.isFTF),
	launch = require(script.launch),
	resetApplicationScope = require(script.resetFTFApplicationScope),
	waitUntil = require(script.waitUntil),
}
