--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/error/GraphQLError.js

local srcWorkspace = script.Parent.Parent
local languageWorkspace = srcWorkspace.language
local Packages = srcWorkspace.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type void = nil

local HttpService = game:GetService("HttpService")

local isObjectLike = require(srcWorkspace.jsutils.isObjectLike).isObjectLike

local _astModule = require(languageWorkspace.ast)
type ASTNode = _astModule.ASTNode
type Location = _astModule.Location
local _sourceModule = require(languageWorkspace.source)
type Source = _sourceModule.Source
local locationModule = require(languageWorkspace.location)
type SourceLocation = locationModule.SourceLocation
local getLocation = locationModule.getLocation
local printLocationModule = require(languageWorkspace.printLocation)
local printLocation = printLocationModule.printLocation
local printSourceLocation = printLocationModule.printSourceLocation

-- ROBLOX deviation: pre-declare functions
local printError: (error_: GraphQLError) -> string
local undefinedIfEmpty

local GraphQLError: GraphQLError = setmetatable({}, {
	__index = Error,
}) :: GraphQLError;
(GraphQLError :: any).__index = GraphQLError;
(GraphQLError :: any).__tostring = function(self)
	return printError(self)
end

export type GraphQLError = {
	-- ROBLOX FIXME Luau: can't express Error intersection without errors until normalization lands, so inline Error fields
	name: string,
	stack: string?,
	-- /**
	--  * A message describing the Error for debugging purposes.
	--  *
	--  * Enumerable, and appears in the result of JSON.stringify().
	--  *
	--  * Note: should be treated as readonly, despite invariant usage.
	--  */
	message: string,

	-- /**
	--  * An array of { line, column } locations within the source GraphQL document
	--  * which correspond to this error.
	--  *
	--  * Errors during validation often contain multiple locations, for example to
	--  * point out two things with the same name. Errors during execution include a
	--  * single location, the field which produced the error.
	--  *
	--  * Enumerable, and appears in the result of JSON.stringify().
	--  */
	locations: Array<SourceLocation> | void,

	-- /**
	--  * An array describing the JSON-path into the execution response which
	--  * corresponds to this error. Only included for errors during execution.
	--  *
	--  * Enumerable, and appears in the result of JSON.stringify().
	--  */
	path: Array<string | number> | void,

	-- /**
	--  * An array of GraphQL AST Nodes corresponding to this error.
	--  */
	nodes: Array<ASTNode> | void,

	-- /**
	--  * The source GraphQL document for the first location of this error.
	--  *
	--  * Note that if this Error represents more than one node, the source may not
	--  * represent nodes after the first node.
	--  */
	source: Source | void,

	-- /**
	--  * An array of character offsets within the source GraphQL document
	--  * which correspond to this error.
	--  */
	positions: Array<number> | void,

	-- /**
	--  * The original error thrown from a field resolver during execution.
	--  */
	originalError: Error | void | nil,

	-- /**
	--  * Extension fields to add to the formatted error.
	--  */
	extensions: { [string]: any }?, -- ROBLOX TODO: missing type varargs from upstream

	new: (
		message: string,
		nodes: Array<ASTNode> | ASTNode | void | nil,
		source: Source?,
		positions: Array<number>?,
		path: Array<string | number>?,
		originalError: (Error & { extensions: any? })?,
		extensions: { [string]: any }? -- ROBLOX TODO: missing type varargs from upstream
	) -> GraphQLError,
	toString: (GraphQLError) -> string,
	toJSON: (GraphQLError) -> string,
}

function GraphQLError.new(
	message: string,
	nodes: Array<ASTNode> | ASTNode | void | nil,
	source: Source?,
	positions: Array<number>?,
	path: Array<string | number>?,
	originalError: (Error & { extensions: any? })?,
	extensions: { [string]: any }? -- ROBLOX TODO: missing type varargs from upstream
): GraphQLError
	local self = (Error.new(message) :: any) :: GraphQLError

	self.name = "GraphQLError"
	self.originalError = originalError

	-- Compute list of blame nodes.
	self.nodes = undefinedIfEmpty(
		if Array.isArray(nodes) then nodes else if nodes then { nodes } else nil
	) :: Array<ASTNode> | nil

	-- ROBLOX FIXME Luau: Luau should normalize here as Array<Location> | nil without annotation
	local nodeLocations: Array<Location>? = {}
	-- ROBLOX TODO: upstream this null check
	if self.nodes then
		for _, node in ipairs(self.nodes) do
			local loc = node.loc
			if loc ~= nil then
				table.insert(nodeLocations :: Array<Location>, loc)
			end
		end
	end
	nodeLocations = undefinedIfEmpty(nodeLocations)

	-- Compute locations in the source for the given nodes/positions.
	self.source = if source
		then source
		else if nodeLocations == nil then nil else nodeLocations[1].source

	self.positions = if positions
		then positions
		else if not nodeLocations
			then nil
			else Array.map(nodeLocations, function(loc)
				return loc.start
			end)

	self.locations = if positions and source
		then Array.map(positions, function(pos)
			return getLocation(source, pos)
		end)
		else if nodeLocations
			then Array.map(nodeLocations, function(loc)
				return getLocation(loc.source, loc.start)
			end)
			else nil

	self.path = if path then path else nil

	local originalExtensions = if not originalError then nil else originalError.extensions

	if extensions == nil and isObjectLike(originalExtensions) then
		self.extensions = Object.assign({}, originalExtensions)
	else
		self.extensions = if extensions then extensions else nil
	end

	if originalError and originalError.stack then
		self.stack = originalError.stack
	end

	-- ROBLOX TODO? see if we should implement this in luau-polyfill Error
	-- if Error.captureStackTrace ~= nil then
	-- 	Error.captureStackTrace(self, GraphQLError)
	-- else
	-- 	self.stack = Error.new().stack
	-- end

	-- FIXME: workaround to not break chai comparisons, should be remove in v16
	-- ROBLOX deviation: remove already deprecated API only used for JS tests
	-- get [SYMBOL_TO_STRING_TAG](): string {
	-- 	return 'Object';
	-- }

	return (setmetatable(self, GraphQLError) :: any) :: GraphQLError
end

function GraphQLError:toString(): string
	return printError(self)
end

-- ROBLOX deviation: in JS JSON.stringify prints only enumerable props and Lua doesn't support that. This is fallback
function GraphQLError:toJSON(): string
	local enumerableProps = {
		"message",
	}
	if self.locations ~= nil then
		table.insert(enumerableProps, "locations")
	end
	if self.path ~= nil then
		table.insert(enumerableProps, "path")
	end
	if self.extensions ~= nil then
		table.insert(enumerableProps, "extensions")
	end

	-- ROBLOX comment: return consistent order of keys
	return "{"
		.. Array.join(
			Array.map(enumerableProps, function(key)
				return HttpService:JSONEncode(key) .. ":" .. HttpService:JSONEncode(self[key])
			end),
			","
		)
		.. "}"
end

function undefinedIfEmpty<T>(array: Array<T> | void): Array<T> | void
	return if array == nil or #(array :: Array<T>) == 0 then nil else array
end

function printError(error_: GraphQLError): string
	local output = error_.message

	if error_.nodes ~= nil then
		local lengthOfNodes = #error_.nodes
		for i = 1, lengthOfNodes, 1 do
			local node = error_.nodes[i]
			if node.loc ~= nil then
				output = output .. "\n\n" .. printLocation(node.loc)
			end
		end
	elseif error_.source ~= nil and error_.locations ~= nil then
		local lengthOfLocations = #error_.locations
		for i = 1, lengthOfLocations, 1 do
			local location = error_.locations[i]
			output = output .. "\n\n" .. printSourceLocation(error_.source, location)
		end
	end

	return output
end

return {
	printError = printError,
	GraphQLError = GraphQLError,
}
