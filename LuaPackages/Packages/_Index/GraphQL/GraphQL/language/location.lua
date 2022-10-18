--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/location.js
local Packages = script.Parent.Parent.Parent
local String = require(Packages.LuauPolyfill).String

local Source = require(script.Parent.source)
type Source = Source.Source

-- /**
--  * Represents a location in a Source.
--  */
export type SourceLocation = {
	line: number,
	column: number,
}

-- /**
--  * Takes a Source and a UTF-8 character offset, and returns the corresponding
--  * line and column as a SourceLocation.
--  * ROBLOX deviation: position takes 1-based index
--  */
local function getLocation(source: Source, position: number): SourceLocation
	local terms = { "\r\n", "\r", "\n" }
	local line = 1
	local column = position
	local match = String.findOr(source.body, terms)
	while match ~= nil and match.index < position do
		local init = match.index + string.len(match.match)
		line += 1
		column = position + 1 - init
		match = String.findOr(source.body, terms, init)
	end

	return { line = line, column = column }
end

return {
	getLocation = getLocation,
}
