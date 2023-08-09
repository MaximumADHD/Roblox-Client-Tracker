-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/validate-documents.ts
type void = nil --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau `void` equivalent when supported ]]
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
-- ROBLOX deviation START: not needed
-- local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation END
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)
-- ROBLOX deviation START: not needed
-- local RegExp = require(Packages.RegExp)
-- ROBLOX deviation END
local exports = {}
-- ROBLOX deviation START: not needed - js-to-lua issue https://github.com/Roblox/js-to-lua/issues/919
-- local JestGlobals = require(Packages.Dev.JestGlobals)
-- local expect = JestGlobals.expect
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
local Kind = graphqlModule.Kind
local validate = graphqlModule.validate
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local GraphQLError = graphqlModule.GraphQLError
type GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLError = graphqlModule.GraphQLError
-- ROBLOX deviation END
local specifiedRules = graphqlModule.specifiedRules
-- ROBLOX deviation START: import as type instead of local
-- local FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
-- local ValidationContext = graphqlModule.ValidationContext
-- local ASTVisitor = graphqlModule.ASTVisitor
-- local DefinitionNode = graphqlModule.DefinitionNode
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type ValidationContext = graphqlModule.ValidationContext
type ASTVisitor = graphqlModule.ASTVisitor
type DefinitionNode = graphqlModule.DefinitionNode
-- ROBLOX deviation END
local concatAST = graphqlModule.concatAST
-- ROBLOX deviation START: import as type instead of local
-- local DocumentNode = graphqlModule.DocumentNode
type DocumentNode = graphqlModule.DocumentNode
-- ROBLOX deviation END
local versionInfo = graphqlModule.versionInfo
-- ROBLOX deviation START: fix import and import as type
-- local Source = require(script.Parent["loaders.js"]).Source
local loadersModule = require(script.Parent.loaders)
type Source = loadersModule.Source
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local AggregateError = require(script.Parent["AggregateError.js"]).AggregateError
local AggregateError = require(script.Parent.AggregateError).AggregateError
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: add predefine variables
local createDefaultRules
-- ROBLOX deviation END
export type ValidationRule = (context: ValidationContext) -> ASTVisitor
export type LoadDocumentError = { filePath: string?, errors: ReadonlyArray<GraphQLError> }
local function validateGraphQlDocuments(
	schema: GraphQLSchema,
	documentFiles: Array<Source>,
	effectiveRules_: Array<ValidationRule>?
): Promise<ReadonlyArray<LoadDocumentError>>
	local effectiveRules: Array<ValidationRule> = if effectiveRules_ ~= nil
		then effectiveRules_
		else createDefaultRules()
	return Promise.resolve():andThen(function()
		local allFragmentMap = Map.new()
		local documentFileObjectsToValidate: Array<{ location: string?, document: DocumentNode }> = {}
		for _, documentFile in documentFiles do
			-- ROBLOX deviation START: remove toJSBoolean to fix analyze error - nil assertion
			-- if Boolean.toJSBoolean(documentFile.document) then
			if documentFile.document then
				-- ROBLOX deviation END
				local definitionsToValidate: Array<DefinitionNode> = {}
				for _, definitionNode in documentFile.document.definitions do
					if definitionNode.kind == Kind.FRAGMENT_DEFINITION then
						allFragmentMap:set(definitionNode.name.value, definitionNode)
					else
						table.insert(definitionsToValidate, definitionNode) --[[ ROBLOX CHECK: check if 'definitionsToValidate' is an Array ]]
					end
				end
				table.insert(documentFileObjectsToValidate, {
					location = documentFile.location,
					document = { kind = Kind.DOCUMENT, definitions = definitionsToValidate },
				}) --[[ ROBLOX CHECK: check if 'documentFileObjectsToValidate' is an Array ]]
			end
		end
		local allErrors: Array<LoadDocumentError> = {}
		local allFragmentsDocument: DocumentNode = {
			kind = Kind.DOCUMENT,
			-- ROBLOX deviation START: remove Array.spread
			-- definitions = Array.concat({}, Array.spread(allFragmentMap:values())),
			definitions = Array.concat({}, allFragmentMap:values()),
			-- ROBLOX deviation END
		}
		Promise.all(Array.map(documentFileObjectsToValidate, function(documentFile)
			return Promise.resolve():andThen(function()
				local documentToValidate = concatAST({ allFragmentsDocument, documentFile.document })
				local errors = validate(schema, documentToValidate, effectiveRules)
				-- ROBLOX deviation START: fix .length conversion
				-- 				if
				-- 					errors.length
				-- 					> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
				-- 				then
				if #errors > 0 then
					-- ROBLOX deviation END
					table.insert(allErrors, { filePath = documentFile.location, errors = errors }) --[[ ROBLOX CHECK: check if 'allErrors' is an Array ]]
				end
			end)
		end) --[[ ROBLOX CHECK: check if 'documentFileObjectsToValidate' is an Array ]]):expect()
		return allErrors
	end)
end
exports.validateGraphQlDocuments = validateGraphQlDocuments
local function checkValidationErrors(loadDocumentErrors: ReadonlyArray<LoadDocumentError>): void | never
	-- ROBLOX deviation START: fix .length conversion
	-- 	if
	-- 		loadDocumentErrors.length
	-- 		> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 	then
	if #loadDocumentErrors > 0 then
		-- ROBLOX deviation END
		local errors: Array<Error> = {}
		for _, loadDocumentError in loadDocumentErrors do
			for _, graphQLError in loadDocumentError.errors do
				local error_ = Error.new()
				error_.name = "GraphQLDocumentError"
				error_.message = ("%s: %s"):format(tostring(error_.name), tostring(graphQLError.message))
				error_.stack = error_.message
				-- ROBLOX deviation START: remove toJSBoolean to fix analyze error - nil assertion
				-- if Boolean.toJSBoolean(graphQLError.locations) then
				if graphQLError.locations then
					-- ROBLOX deviation END
					for _, location in graphQLError.locations do
						-- ROBLOX deviation START: can't use ..=
						-- 						error_.stack ..= ("\n    at %s:%s:%s"):format(
						-- 							tostring(loadDocumentError.filePath),
						-- 							tostring(location.line),
						-- 							tostring(location.column)
						-- 						)
						error_.stack = tostring(error_.stack)
							.. ("\n    at %s:%s:%s"):format(
								tostring(loadDocumentError.filePath),
								tostring(location.line),
								tostring(location.column)
							)
						-- ROBLOX deviation END
					end
				end
				table.insert(errors, error_) --[[ ROBLOX CHECK: check if 'errors' is an Array ]]
			end
		end
		error(AggregateError.new(
			errors,
			([[GraphQL Document Validation failed with %s errors;
  %s]]):format(
				-- ROBLOX deviation START: fix .length conversion
				-- tostring(errors.length),
				tostring(#errors),
				-- ROBLOX deviation END
				tostring(Array.join(
					Array.map(errors, function(error_, index)
						return ("Error %s: %s"):format(tostring(index), tostring(error_.stack))
					end), --[[ ROBLOX CHECK: check if 'errors' is an Array ]]
					"\n\n"
				))
			)
		))
	end
	-- ROBLOX deviation START: add explicit return
	return
	-- ROBLOX deviation END
end
exports.checkValidationErrors = checkValidationErrors
-- ROBLOX deviation START: predefine function
-- local function createDefaultRules()
function createDefaultRules()
	-- ROBLOX deviation END
	local ignored = { "NoUnusedFragmentsRule", "NoUnusedVariablesRule", "KnownDirectivesRule" }
	if
		versionInfo.major
		< 15 --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
	then
		ignored = Array.map(ignored, function(rule)
			-- ROBLOX deviation START: fix .replace conversion
			-- return rule:replace(RegExp("Rule$"), "")
			local sub = rule:gsub("Rule$", "", 1)
			return sub
			-- ROBLOX deviation END
		end) --[[ ROBLOX CHECK: check if 'ignored' is an Array ]]
	end
	return Array.filter(specifiedRules, function(f: (...any) -> any)
		-- ROBLOX deviation START: fix getting function name
		-- 		return not Boolean.toJSBoolean(
		-- 			Array.includes(ignored, f.name) --[[ ROBLOX CHECK: check if 'ignored' is an Array ]]
		-- 		)
		local name = debug.info(f, "n")
		return not Array.includes(ignored, name)
		-- ROBLOX deviation END
	end) --[[ ROBLOX CHECK: check if 'specifiedRules' is an Array ]]
end
exports.createDefaultRules = createDefaultRules
return exports
