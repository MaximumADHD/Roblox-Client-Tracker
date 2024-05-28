-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/getOperationASTFromRequest.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local DocumentNode = graphqlModule.DocumentNode
type DocumentNode = graphqlModule.DocumentNode
-- ROBLOX deviation END
local getOperationAST = graphqlModule.getOperationAST
-- ROBLOX deviation START: import as type instead of local
-- local OperationDefinitionNode = graphqlModule.OperationDefinitionNode
type OperationDefinitionNode = graphqlModule.OperationDefinitionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import and import as type instead of local
-- local ExecutionRequest = require(script.Parent["Interfaces.js"]).ExecutionRequest
local interfacesModule = require(script.Parent.Interfaces)
type ExecutionRequest = interfacesModule.ExecutionRequest
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local memoize1 = require(script.Parent["memoize.js"]).memoize1
local memoize1 = require(script.Parent.memoize).memoize1
-- ROBLOX deviation END
local function getOperationASTFromDocument(documentNode: DocumentNode, operationName: string?): OperationDefinitionNode
	local doc = getOperationAST(documentNode, operationName)
	if not Boolean.toJSBoolean(doc) then
		error(
			Error.new(
				("Cannot infer operation %s"):format(
					tostring(Boolean.toJSBoolean(operationName) and operationName or "")
				)
			)
		)
	end
	-- ROBLOX deviation START: cast type
	-- return doc
	return doc :: OperationDefinitionNode
	-- ROBLOX deviation END
end
exports.getOperationASTFromDocument = getOperationASTFromDocument
local getOperationASTFromRequest = memoize1(function(request: ExecutionRequest)
	return getOperationASTFromDocument(request.document, request.operationName)
end)
exports.getOperationASTFromRequest = getOperationASTFromRequest
return exports
