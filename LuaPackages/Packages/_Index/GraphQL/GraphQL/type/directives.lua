--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/type/directives.js
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local coerceToMap = LuauPolyfill.coerceToMap
type Array<T> = LuauPolyfill.Array<T>

local _ObjMapModule = require(srcWorkspace.jsutils.ObjMap)
type ObjMap<T> = _ObjMapModule.ObjMap<T>

local ObjMap = require(script.Parent.Parent.jsutils.ObjMap)
type ReadOnlyObjMap<T> = ObjMap.ReadOnlyObjMap<T>
type ReadOnlyObjMapLike<T> = ObjMap.ReadOnlyObjMapLike<T>

local inspect = require(script.Parent.Parent.jsutils.inspect).inspect
local toObjMap = require(script.Parent.Parent.jsutils.toObjMap).toObjMap
local devAssert = require(script.Parent.Parent.jsutils.devAssert).devAssert
local instanceOf = require(script.Parent.Parent.jsutils.instanceOf)
local isObjectLike = require(script.Parent.Parent.jsutils.isObjectLike).isObjectLike

local AstModule = require(script.Parent.Parent.language.ast)
type DirectiveDefinitionNode = AstModule.DirectiveDefinitionNode
local DirectiveLocationModule = require(script.Parent.Parent.language.directiveLocation)
type DirectiveLocationEnum = DirectiveLocationModule.DirectiveLocationEnum
local DirectiveLocation = DirectiveLocationModule.DirectiveLocation

local definition = require(script.Parent.definition)
type GraphQLArgument = definition.GraphQLArgument
type GraphQLFieldConfigArgumentMap = definition.GraphQLFieldConfigArgumentMap
local scalars = require(script.Parent.scalars)
local GraphQLString = scalars.GraphQLString
local GraphQLBoolean = scalars.GraphQLBoolean
local argsToArgsConfig = definition.argsToArgsConfig
local GraphQLNonNull = definition.GraphQLNonNull
type GraphQLNonNull<T> = definition.GraphQLNonNull<T>

local GraphQLDirective: GraphQLDirective

--[[**
 * Test if the given value is a GraphQL directive.
 *]]
function isDirective(directive: any): boolean
	return instanceOf(directive, GraphQLDirective)
end

function assertDirective(directive: any): GraphQLDirective
	if not isDirective(directive) then
		error(Error.new(("Expected %s to be a GraphQL directive."):format(inspect(directive))))
	end

	return directive
end

--[[*
 * Directives are used by the GraphQL runtime as a way of modifying execution
 * behavior. Type system creators will usually not create these directly.
 ]]
export type GraphQLDirective = {
	name: string,
	description: string?,
	locations: Array<DirectiveLocationEnum>,
	args: Array<GraphQLArgument>,
	isRepeatable: boolean,
	extensions: ObjMap<any>?,
	astNode: DirectiveDefinitionNode?,
	new: (config: GraphQLDirectiveConfig) -> GraphQLDirective,
	toConfig: (self: GraphQLDirective) -> GraphQLDirectiveNormalizedConfig,
	toString: (self: GraphQLDirective) -> string,
	toJSON: (self: GraphQLDirective) -> string,
	__tostring: (self: GraphQLDirective) -> string,
}

GraphQLDirective = {} :: GraphQLDirective;
(GraphQLDirective :: any).__index = GraphQLDirective

function GraphQLDirective.new(config: GraphQLDirectiveConfig): GraphQLDirective
	local self = {}

	self.name = config.name
	self.description = config.description
	self.locations = config.locations
	self.isRepeatable = if config.isRepeatable then true else false
	self.extensions = config.extensions and toObjMap(config.extensions)
	self.astNode = config.astNode

	devAssert(config.name, "Directive must be named.")
	devAssert(
		Array.isArray(config.locations),
		("@%s locations must be an Array."):format(config.name)
	)

	local args = if config.args then config.args else {}

	-- ROBLOX deviation: empty table doesn't necessarily mean an array
	devAssert(
		(isObjectLike(args) and not (Array.isArray(args) and next(args :: Array<any>) ~= nil))
			or instanceOf(args, Map),
		("@%s args must be an object with argument names as keys."):format(config.name)
	)

	self.args = Array.map(coerceToMap(args):entries(), function(entries)
		local argName, argConfig = entries[1], entries[2]

		return {
			name = argName,
			description = argConfig.description,
			type = argConfig.type,
			defaultValue = argConfig.defaultValue,
			deprecationReason = argConfig.deprecationReason,
			extensions = argConfig.extensions and toObjMap(argConfig.extensions),
			astNode = argConfig.astNode,
		}
	end)

	return (setmetatable(self, GraphQLDirective) :: any) :: GraphQLDirective
end

function GraphQLDirective:toConfig()
	return {
		name = self.name,
		description = self.description,
		locations = self.locations,
		args = argsToArgsConfig(self.args),
		isRepeatable = self.isRepeatable,
		extensions = self.extensions,
		astNode = self.astNode,
	}
end

function GraphQLDirective.__tostring(self): string
	return self:toString()
end

function GraphQLDirective:toString(): string
	return "@" .. self.name
end

function GraphQLDirective:toJSON(): string
	return self:toString()
end

--[[**
 * Used to conditionally include fields or fragments.
 *]]
export type GraphQLDirectiveConfig = {
	name: string,
	description: string?,
	locations: Array<DirectiveLocationEnum>,
	args: GraphQLFieldConfigArgumentMap?,
	isRepeatable: boolean?,
	extensions: ReadOnlyObjMapLike<any>?,
	astNode: DirectiveDefinitionNode?,
}

type GraphQLDirectiveNormalizedConfig = GraphQLDirectiveConfig & {
	args: GraphQLFieldConfigArgumentMap,
	isRepeatable: boolean,
	extensions: ReadOnlyObjMap<any>?,
}

--[[*
 * Used to conditionally include fields or fragments.
 ]]
local GraphQLIncludeDirective = GraphQLDirective.new({
	name = "include",
	description = "Directs the executor to include this field or fragment only when the `if` argument is true.",
	locations = {
		DirectiveLocation.FIELD,
		DirectiveLocation.FRAGMENT_SPREAD,
		DirectiveLocation.INLINE_FRAGMENT,
	},
	args = Map.new({
		{
			"if",
			{
				type = GraphQLNonNull.new(GraphQLBoolean),
				description = "Included when true.",
			},
		} :: Array<any>,
	}),
})

--[[**
 * Used to conditionally skip (exclude) fields or fragments.
 *]]
local GraphQLSkipDirective = GraphQLDirective.new({
	name = "skip",
	description = "Directs the executor to skip this field or fragment when the `if` argument is true.",
	locations = {
		DirectiveLocation.FIELD,
		DirectiveLocation.FRAGMENT_SPREAD,
		DirectiveLocation.INLINE_FRAGMENT,
	},
	args = Map.new({
		{
			"if",
			{
				type = GraphQLNonNull.new(GraphQLBoolean),
				description = "Skipped when true.",
			},
		} :: Array<any>,
	}),
})

--[[**
 * Constant string used for default reason for a deprecation.
 *]]
local DEFAULT_DEPRECATION_REASON = "No longer supported"

--[[**
 * Used to declare element of a GraphQL schema as deprecated.
 *]]
local GraphQLDeprecatedDirective = GraphQLDirective.new({
	name = "deprecated",
	description = "Marks an element of a GraphQL schema as no longer supported.",
	locations = {
		DirectiveLocation.FIELD_DEFINITION,
		DirectiveLocation.ARGUMENT_DEFINITION,
		DirectiveLocation.INPUT_FIELD_DEFINITION,
		DirectiveLocation.ENUM_VALUE,
	},
	args = Map.new({
		{
			"reason",
			{
				type = GraphQLString,
				description = "Explains why this element was deprecated, usually also including a suggestion for how to access supported similar data. Formatted using the Markdown syntax, as specified by [CommonMark](https://commonmark.org/).",
				defaultValue = DEFAULT_DEPRECATION_REASON,
			},
		} :: Array<any>,
	}),
})

-- type GraphQLArgumentConfig = {
-- description: string?, type: GraphQLInputType, defaultValue: any?, extensions: ReadOnlyObjMapLike<any>?, deprecationReason: string?, astNode: InputValueDefinitionNode?}
--[[**
 * Used to provide a URL for specifying the behaviour of custom scalar definitions.
 *]]
local GraphQLSpecifiedByDirective = GraphQLDirective.new({
	name = "specifiedBy",
	description = "Exposes a URL that specifies the behaviour of this scalar.",
	locations = {
		DirectiveLocation.SCALAR,
	},
	args = Map.new({
		{
			"url",
			{
				type = GraphQLNonNull.new(GraphQLString),
				description = "The URL that specifies the behaviour of this scalar.",
			},
		} :: Array<any>,
	}),
})

--[[**
 * The full list of specified directives.
 *]]
local specifiedDirectives = Object.freeze({
	GraphQLIncludeDirective,
	GraphQLSkipDirective,
	GraphQLDeprecatedDirective,
	GraphQLSpecifiedByDirective,
})

local function isSpecifiedDirective(directive: GraphQLDirective): boolean
	return Array.some(specifiedDirectives, function(specifiedDirective)
		local name = specifiedDirective.name

		return name == directive.name
	end)
end

return {
	isDirective = isDirective,
	assertDirective = assertDirective,
	GraphQLDirective = GraphQLDirective,
	GraphQLIncludeDirective = GraphQLIncludeDirective,
	GraphQLSkipDirective = GraphQLSkipDirective,
	DEFAULT_DEPRECATION_REASON = DEFAULT_DEPRECATION_REASON,
	GraphQLDeprecatedDirective = GraphQLDeprecatedDirective,
	GraphQLSpecifiedByDirective = GraphQLSpecifiedByDirective,
	specifiedDirectives = specifiedDirectives,
	isSpecifiedDirective = isSpecifiedDirective,
}
