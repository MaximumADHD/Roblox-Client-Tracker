--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/error/formatError.js

local src = script.Parent.Parent
local rootWorkspace = src.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local devAssert = require(src.jsutils.devAssert).devAssert
local locationModule = require(src.language.location)
type SourceLocation = locationModule.SourceLocation
local GraphQLErrorModule = require(script.Parent.GraphQLError)
type GraphQLError = GraphQLErrorModule.GraphQLError

local exports = {}

-- /**
-- * Given a GraphQLError, format it according to the rules described by the
-- * Response Format, Errors section of the GraphQL Specification.
-- */
exports.formatError = function(error_: GraphQLError): GraphQLFormattedError
	devAssert(error_, "Received nil error.")

	local message = if error_.message and string.len(error_.message) > 0
		then error_.message
		else "An unknown error occurred."

	local locations = error_.locations
	local path = error_.path
	local extensions = error_.extensions

	return extensions
			and {
				message = message,
				locations = locations,
				path = path,
				extensions = extensions,
			}
		or {
			message = message,
			locations = locations,
			path = path,
		}
end

--[[*
 * @see https://github.com/graphql/graphql-spec/blob/master/spec/Section%207%20--%20Response.md#errors
 ]]
export type GraphQLFormattedError = {
	--[[*
   * A short, human-readable summary of the problem that **SHOULD NOT** change
   * from occurrence to occurrence of the problem, except for purposes of
   * localization.
   ]]
	message: string,
	--[[*
   * If an error can be associated to a particular point in the requested
   * GraphQL document, it should contain a list of locations.
   ]]
	locations: Array<SourceLocation> | nil, -- ROBLOX deviation: Luau can't express void, so use nil
	--[[*
   * If an error can be associated to a particular field in the GraphQL result,
   * it _must_ contain an entry with the key `path` that details the path of
   * the response field which experienced the error. This allows clients to
   * identify whether a null result is intentional or caused by a runtime error.
   ]]
	path: Array<string | number> | nil, -- ROBLOX deviation: Luau can't express void, so use nil
	--[[*
   * Reserved for implementors to extend the protocol however they see fit,
   * and hence there are no additional restrictions on its contents.
   ]]
	extensions: { [string]: any }?, -- ROBLOX TODO: Luau can't do type varargs yet
}

return exports
