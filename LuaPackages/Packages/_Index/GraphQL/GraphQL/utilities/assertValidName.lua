--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/assertValidName.js

local srcWorkspace = script.Parent.Parent
local devAssert = require(srcWorkspace.jsutils.devAssert).devAssert
local graphqlErrorImport = require(srcWorkspace.error.GraphQLError)
local GraphQLError = graphqlErrorImport.GraphQLError
type GraphQLError = graphqlErrorImport.GraphQLError

local isValidNameError
local assertValidName

local NAME_RX = "[_%a][_%a%d]*"

--[[**
 	* Upholds the spec rules about naming.
 	*]]
function assertValidName(name: string): string
	local error_ = isValidNameError(name)
	if error_ then
		error(error_)
	end
	return name
end

--[[**
	* Returns an Error if a name is invalid.
	*]]
function isValidNameError(name: string): GraphQLError | nil
	devAssert(type(name) == "string", "Expected name to be a string.")
	if string.len(name) > 1 and name:sub(1, 1) == "_" and name:sub(2, 2) == "_" then
		return GraphQLError.new(
			'Name "'
				.. name
				.. '" must not begin with "__", which is reserved by GraphQL introspection.'
		)
	end

	local start, end_ = string.find(name, NAME_RX)
	local isValid = start == 1 and string.len(name) == end_
	if not isValid then
		return GraphQLError.new('Names must match [_%a][_%a%d]* but "' .. name .. '" does not.')
	end

	return nil
end

return {
	assertValidName = assertValidName,
	isValidNameError = isValidNameError,
}
