-- ROBLOX comment: no upstream
-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/merge-typedefs.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local graphqlModule = require(Packages.GraphQL)
type ParseOptions = graphqlModule.ParseOptions
local utilsModule = require(script.Parent.utils)
type CompareFn<T> = utilsModule.CompareFn<T>
local graphqlToolsUtilsModule = require(Packages.Utils)
type GetDocumentNodeFromSchemaOptions = graphqlToolsUtilsModule.GetDocumentNodeFromSchemaOptions

export type Config = ParseOptions & GetDocumentNodeFromSchemaOptions & {
	--[[*
   * Produces `schema { query: ..., mutation: ..., subscription: ... }`
   *
   * Default: true
   ]]
	useSchemaDefinition: boolean?,
	--[[*
   * Creates schema definition, even when no types are available
   * Produces: `schema { query: Query }`
   *
   * Default: false
   ]]
	forceSchemaDefinition: boolean?,
	--[[*
   * Throws an error on a merge conflict
   *
   * Default: false
   ]]
	throwOnConflict: boolean?,
	--[[*
   * Descriptions are defined as preceding string literals, however an older
   * experimental version of the SDL supported preceding comments as
   * descriptions. Set to true to enable this deprecated behavior.
   * This option is provided to ease adoption and will be removed in v16.
   *
   * Default: false
   ]]
	commentDescriptions: boolean?,
	--[[*
   * Puts the next directive first.
   *
   * Default: false
   *
   * @example:
   * Given:
   * ```graphql
   *  type User { a: String @foo }
   *  type User { a: String @bar }
   * ```
   *
   * Results:
   * ```
   *  type User { a: @bar @foo }
   * ```
   ]]
	reverseDirectives: boolean?,
	exclusions: Array<string>?,
	sort: (boolean | CompareFn<string>)?,
	convertExtensions: boolean?,
	consistentEnumMerge: boolean?,
	ignoreFieldConflicts: boolean?,
}

return exports
