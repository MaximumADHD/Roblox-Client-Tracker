--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/tokenKind.js
local exports = {}

-- ROBLOX FIXME Luau: this gross workaround is becaus string literals don't automatically express as the singleton type yet
exports.TokenKind = {
	SOF = "<SOF>" :: "<SOF>",
	EOF = "<EOF>" :: "<EOF>",
	BANG = "!" :: "!",
	DOLLAR = "$" :: "$",
	AMP = "&" :: "&",
	PAREN_L = "(" :: "(",
	PAREN_R = ")" :: ")",
	SPREAD = "..." :: "...",
	COLON = ":" :: ":",
	EQUALS = "=" :: "=",
	AT = "@" :: "@",
	BRACKET_L = "[" :: "[",
	BRACKET_R = "]" :: "]",
	BRACE_L = "{" :: "{",
	PIPE = "|" :: "|",
	BRACE_R = "}" :: "}",
	NAME = "Name" :: "Name",
	INT = "Int" :: "Int",
	FLOAT = "Float" :: "Float",
	STRING = "String" :: "String",
	BLOCK_STRING = "BlockString" :: "BlockString",
	COMMENT = "Comment" :: "Comment",
}

--[[*
 * The enum type representing the token kinds values.
 ]]
-- ROBLOX deviation: Luau types can't express this, so we manually unroll inline
-- export type TokenKindEnum = $Values<typeof TokenKind>;
export type TokenKindEnum =
	"<SOF>"
	| "<EOF>"
	| "!"
	| "$"
	| "&"
	| "("
	| ")"
	| "..."
	| ":"
	| "="
	| "@"
	| "["
	| "]"
	| "{"
	| "|"
	| "}"
	| "Name"
	| "Int"
	| "Float"
	| "String"
	| "BlockString"
	| "Comment"

return exports
