-- upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/execution/index.js

local executeModule = require(script.execute)
local valuesModule = require(script.values)

export type ExecutionArgs = executeModule.ExecutionArgs
export type ExecutionResult = executeModule.ExecutionResult
export type FormattedExecutionResult = executeModule.FormattedExecutionResult

return {
	responsePathAsArray = require(script.Parent.jsutils.Path).pathToArray,

	execute = executeModule.execute,
	executeSync = executeModule.executeSync,
	defaultFieldResolver = executeModule.defaultFieldResolver,
	defaultTypeResolver = executeModule.defaultTypeResolver,

	getDirectiveValues = valuesModule.getDirectiveValues,
}
