-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/loaders.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local DocumentNode = graphqlModule.DocumentNode
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local BuildSchemaOptions = graphqlModule.BuildSchemaOptions
type DocumentNode = graphqlModule.DocumentNode
type GraphQLSchema = graphqlModule.GraphQLSchema
type BuildSchemaOptions = graphqlModule.BuildSchemaOptions
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import and import as type instead of local
-- local GraphQLParseOptions = require(script.Parent["Interfaces.js"]).GraphQLParseOptions
local interfacesModule = require(script.Parent.Interfaces)
type GraphQLParseOptions = interfacesModule.GraphQLParseOptions
-- ROBLOX deviation END
export type Source = {
	document: DocumentNode?,
	schema: GraphQLSchema?,
	rawSDL: string?,
	location: string?,
}
export type BaseLoaderOptions =
	GraphQLParseOptions
	& BuildSchemaOptions
	& { cwd: string?, ignore: (string | Array<string>)? }
export type WithList<T> = T | Array<T>
export type ElementOf<TList> = any --[[ ROBLOX TODO: Unhandled node for type: TSConditionalType ]] --[[ TList extends Array<infer TElement> ? TElement : never ]]
export type Loader<TOptions = BaseLoaderOptions> = {
	load: (
		-- ROBLOX deviation START: add back generic type parameter
		-- self: Loader,
		self: Loader<TOptions>,
		-- ROBLOX deviation END
		pointer: string,
		options: TOptions?
	) -> Promise<Array<Source> | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | never>,
	loadSync: (
		-- ROBLOX deviation START: add back generic type parameter
		-- self: Loader,
		self: Loader<TOptions>,
		-- ROBLOX deviation END
		pointer: string,
		options: TOptions?
	) -> Array<Source> | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | never,
}
return exports
