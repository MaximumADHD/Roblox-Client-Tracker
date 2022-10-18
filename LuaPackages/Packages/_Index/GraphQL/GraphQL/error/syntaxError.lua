--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/error/syntaxError.js

local error_ = script.Parent
local GraphQLError = require(error_.GraphQLError).GraphQLError

-- /**
--  * Produces a GraphQLError representing a syntax error, containing useful
--  * descriptive information about the syntax error's position in the source.
--  */
local function syntaxError(source, position: number, description: string)
	return GraphQLError.new("Syntax Error: " .. description, nil, source, { position })
end

return {
	syntaxError = syntaxError,
}
