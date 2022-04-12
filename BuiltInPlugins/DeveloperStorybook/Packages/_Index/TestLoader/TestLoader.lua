local types = require(script.types)

export type DebugFlags = types.DebugFlags

return {
	ModuleLoader = require(script.ModuleLoader),
	getDebugFlags = require(script.getDebugFlags),
	hasInternalPermission = require(script.hasInternalPermission),
	isCli = require(script.isCli),
	launch = require(script.launch),
}
