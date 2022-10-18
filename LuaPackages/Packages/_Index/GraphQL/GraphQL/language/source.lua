--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/language/source.js
local language = script.Parent
local src = language.Parent

local inspect = require(src.jsutils.inspect).inspect
local devAssert = require(src.jsutils.devAssert).devAssert
local instanceOf = require(src.jsutils.instanceOf)

type Location = {
	line: number,
	column: number,
}

--[[*
--  * A representation of source input to GraphQL. The `name` and `locationOffset` parameters are
--  * optional, but they are useful for clients who store GraphQL documents in source files.
--  * For example, if the GraphQL input starts at line 40 in a file named `Foo.graphql`, it might
--  * be useful for `name` to be `"Foo.graphql"` and location to be `{ line: 40, column: 1 }`.
--  * The `line` and `column` properties in `locationOffset` are 1-indexed.
--  *]]
export type Source = {
	body: string,
	name: string,
	locationOffset: Location,

	new: (body: string, _name: string?, _locationOffset: Location?) -> Source,
	__tostring: (Source) -> string,
}

local Source: Source = {} :: Source;
(Source :: any).__index = Source

function Source.new(body: string, _name: string?, _locationOffset: Location?): Source
	local name = _name or "GraphQL request"
	local locationOffset = _locationOffset or { line = 1, column = 1 }

	devAssert(typeof(body) == "string", "Body must be a string. Received: " .. inspect(body) .. ".")

	local self = {}
	self.body = body
	self.name = name
	self.locationOffset = locationOffset
	devAssert(
		self.locationOffset.line > 0,
		"line in locationOffset is 1-indexed and must be positive."
	)
	devAssert(
		self.locationOffset.column > 0,
		"column in locationOffset is 1-indexed and must be positive."
	)

	return (setmetatable(self, Source) :: any) :: Source
end

function Source:__tostring(): string
	-- ROBLOX: deviation for idiomatic lua representation of "object"
	return "{table Source}"
end

--[[*
--  * Test if the given value is a Source object.
--  *
--  * @internal
--  *]]
function isSource(source: any): boolean
	return instanceOf(source, Source)
end

return {
	Source = Source,
	isSource = isSource,
}
