--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/error/locatedError.js

local errorWorkspace = script.Parent
local srcWorkspace = errorWorkspace.Parent
local rootWorkspace = srcWorkspace.Parent
local Packages = rootWorkspace

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local instanceof = LuauPolyfill.instanceof
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error

local inspect = require(srcWorkspace.jsutils.inspect).inspect

local astModule = require(srcWorkspace.language.ast)
type ASTNode = astModule.ASTNode

local GraphQLErrorModule = require(errorWorkspace.GraphQLError)
local GraphQLError = GraphQLErrorModule.GraphQLError
type GraphQLError = GraphQLErrorModule.GraphQLError

local function locatedError(
	rawOriginalError,
	nodes: ASTNode | Array<ASTNode> | nil,
	path: Array<string | number> | nil
): GraphQLError
	-- Sometimes a non-error is thrown, wrap it as an Error instance to ensure a consistent Error interface.
	local originalError: Error | GraphQLError
	if instanceof(rawOriginalError, Error) then
		originalError = rawOriginalError :: Error
	elseif
		typeof(rawOriginalError) == "table"
		and typeof(rawOriginalError.message) == "string"
		and rawOriginalError.stack ~= nil
	then
		-- ROBLOX deviation: special case for Error-ish objects with a message and stack field
		originalError = Error.new(rawOriginalError.message)
	elseif typeof(rawOriginalError) == "table" and typeof(rawOriginalError.error) == "string" then
		-- ROBLOX deviation: special case for errors thrown via 'error("error message")'
		originalError = Error.new("Unexpected error value: " .. inspect(rawOriginalError.error))
	else
		originalError = Error.new("Unexpected error value: " .. inspect(rawOriginalError))
	end

	-- Note: this uses a brand-check to support GraphQL errors originating from other contexts.
	if Array.isArray((originalError :: GraphQLError).path) then
		return originalError :: GraphQLError
	end

	local output = GraphQLError.new(
		originalError.message,
		(originalError :: GraphQLError).nodes or nodes,
		(originalError :: GraphQLError).source,
		(originalError :: GraphQLError).positions,
		path,
		originalError
	)

	return output
end

return {
	locatedError = locatedError,
}
