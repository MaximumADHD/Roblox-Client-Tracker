--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/concatAST.js

local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>

local astModule = require(script.Parent.Parent.language.ast)
type DocumentNode = astModule.DocumentNode
type DefinitionNode = astModule.DefinitionNode

--[[*
--  * Provided a collection of ASTs, presumably each from different files,
--  * concatenate the ASTs together into batched AST, useful for validating many
--  * GraphQL source files which together represent one conceptual application.
--  *]]
function concatAST(documents: Array<DocumentNode>): DocumentNode
	-- ROBLOX FIXME Luau: ** without the : Array<DefinitionNode> annotation, this gets a weird "Property '[indexer value]' is not compatible. Type contains a self-recursive construct that cannot be resolved"
	local definitions: Array<DefinitionNode> = {}
	for _, doc in ipairs(documents) do
		definitions = Array.concat(definitions, doc.definitions)
	end
	return { kind = "Document", definitions = definitions }
end

return {
	concatAST = concatAST,
}
