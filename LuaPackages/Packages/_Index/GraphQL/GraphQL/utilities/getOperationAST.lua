--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/getOperationAST.js

local astImport = require(script.Parent.Parent.language.ast)
type DocumentNode = astImport.DocumentNode
type OperationDefinitionNode = astImport.OperationDefinitionNode
local Kind = require(script.Parent.Parent.language.kinds).Kind

local exports = {}

--[[*
--  * Returns an operation AST given a document AST and optionally an operation
--  * name. If a name is not provided, an operation is only returned if only one is
--  * provided in the document.
--  *]]
local function getOperationAST(
	documentAST: DocumentNode,
	operationName: string?
): OperationDefinitionNode?
	local operation = nil
	for _, definition in pairs(documentAST.definitions) do
		if definition.kind == Kind.OPERATION_DEFINITION then
			if operationName == nil then
				-- If no operation name was provided, only return an Operation if there
				-- is one defined in the document. Upon encountering the second, return
				-- nil.
				if operation then
					return nil
				end
				operation = definition
			elseif definition.name and definition.name.value == operationName then
				return definition
			end
		end
	end
	return operation
end
exports.getOperationAST = getOperationAST
return exports
