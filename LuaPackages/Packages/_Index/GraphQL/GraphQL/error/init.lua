--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/error/index.js

local graphQLErrorModule = require(script.GraphQLError)
local formatErrorModule = require(script.formatError)

export type GraphQLFormattedError = formatErrorModule.GraphQLFormattedError
export type GraphQLError = graphQLErrorModule.GraphQLError

return {
	GraphQLError = graphQLErrorModule.GraphQLError,
	printError = graphQLErrorModule.printError,
	syntaxError = require(script.syntaxError).syntaxError,
	locatedError = require(script.locatedError).locatedError,
	formatError = formatErrorModule.formatError,
}
