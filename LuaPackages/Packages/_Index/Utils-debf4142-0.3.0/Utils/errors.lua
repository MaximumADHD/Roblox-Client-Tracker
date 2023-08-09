-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/errors.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Error = LuauPolyfill.Error
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import type
-- local ASTNode = graphqlModule.ASTNode
type ASTNode = graphqlModule.ASTNode
-- ROBLOX deviation END
local GraphQLError = graphqlModule.GraphQLError
-- ROBLOX deviation START: add type import
type GraphQLError = graphqlModule.GraphQLError
-- ROBLOX deviation END
-- ROBLOX deviation START: import type
-- local Source = graphqlModule.Source
type Source = graphqlModule.Source
-- ROBLOX deviation END
local versionInfo = graphqlModule.versionInfo
-- ROBLOX deviation START: import type
-- local Maybe = require(script.Parent["types.js"]).Maybe
local typesModule = require(script.Parent.types)
type Maybe<T> = typesModule.Maybe<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: additional imports
type Array<T> = LuauPolyfill.Array<T>
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
type GraphQLErrorOptions = {
	nodes: (ReadonlyArray<ASTNode> | ASTNode | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]])?,
	source: Maybe<Source>?,
	positions: Maybe<ReadonlyArray<number>>?,
	path: Maybe<ReadonlyArray<string | number>>?,
	originalError: Maybe<Error & { extensions: unknown? }>?,
	extensions: any?,
}
local function createGraphQLError(message: string, options: GraphQLErrorOptions?): GraphQLError
	if
		versionInfo.major
		>= 17 --[[ ROBLOX CHECK: operator '>=' works only if either both arguments are strings or both are a number ]]
	then
		return (GraphQLError :: any).new(message, options)
	end
	return (GraphQLError :: any).new(
		message,
		if typeof(options) == "table" then options.nodes else nil,
		if typeof(options) == "table" then options.source else nil,
		if typeof(options) == "table" then options.positions else nil,
		if typeof(options) == "table" then options.path else nil,
		if typeof(options) == "table" then options.originalError else nil,
		if typeof(options) == "table" then options.extensions else nil
	)
end
exports.createGraphQLError = createGraphQLError
local function relocatedError(originalError: GraphQLError, path: ReadonlyArray<string | number>?): GraphQLError
	return createGraphQLError(originalError.message, {
		nodes = originalError.nodes,
		source = originalError.source,
		positions = originalError.positions,
		path = if path == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
			then originalError.path
			else path,
		originalError = originalError,
		extensions = originalError.extensions,
		-- ROBLOX deviation START: needs cast
		-- })
	} :: GraphQLErrorOptions)
	-- ROBLOX deviation END
end
exports.relocatedError = relocatedError
return exports
