-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/parse-graphql-sdl.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not used
-- local Array = LuauPolyfill.Array
-- ROBLOX deviation END
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type instead of local
-- local DocumentNode = graphqlModule.DocumentNode
type DocumentNode = graphqlModule.DocumentNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type instead of local
-- local ASTNode = graphqlModule.ASTNode
type ASTNode = graphqlModule.ASTNode
-- ROBLOX deviation END
local parse = graphqlModule.parse
local GraphQLSource = graphqlModule.Source
local visit = graphqlModule.visit
local isTypeSystemDefinitionNode = graphqlModule.isTypeSystemDefinitionNode
-- ROBLOX deviation START: import as type instead of local
-- local StringValueNode = graphqlModule.StringValueNode
type StringValueNode = graphqlModule.StringValueNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local print_ = graphqlModule.print_
local print_ = graphqlModule.print
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local commentsJsModule = require(script.Parent["comments.js"])
local commentsJsModule = require(script.Parent.comments)
-- ROBLOX deviation END
local dedentBlockStringValue = commentsJsModule.dedentBlockStringValue
local getLeadingCommentBlock = commentsJsModule.getLeadingCommentBlock
-- ROBLOX deviation START: fix import and import as type
-- local GraphQLParseOptions = require(script.Parent["Interfaces.js"]).GraphQLParseOptions
local interfacesJsModule = require(script.Parent.Interfaces)
type GraphQLParseOptions = interfacesJsModule.GraphQLParseOptions
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local String = LuauPolyfill.String
-- ROBLOX deviation END
-- ROBLOX deviation START: add predeclared functions
local transformCommentsToDescriptions
local isDescribable
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional function
local function removeCommentsAndTrim(rawSDL: string)
	local ref = string.gsub(rawSDL, "(#[^*]*)", "")
	return String.trim(ref)
end
-- ROBLOX deviation END
local function parseGraphQLSDL(location: string | nil, rawSDL: string, options_: GraphQLParseOptions?)
	local options: GraphQLParseOptions = if options_ ~= nil then options_ else {}
	local document: DocumentNode
	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		-- ROBLOX deviation START: use pcall instead of xpcall
		-- local ok, result, hasReturned = xpcall(function()
		local ok, result = pcall(function()
			-- ROBLOX deviation END
			if
				-- ROBLOX deviation START: use String.includes instead of Array.includes and simplify condition
				-- Boolean.toJSBoolean(if Boolean.toJSBoolean(options.commentDescriptions)
				-- 					then Array.includes(rawSDL, "#") --[[ ROBLOX CHECK: check if 'rawSDL' is an Array ]]
				-- 					else options.commentDescriptions)
				Boolean.toJSBoolean(options.commentDescriptions) and String.includes(rawSDL, "#")
				-- ROBLOX deviation END
			then
				document = transformCommentsToDescriptions(rawSDL, options) -- If noLocation=true, we need to make sure to print and parse it again, to remove locations,
				-- since `transformCommentsToDescriptions` must have locations set in order to transform the comments
				-- into descriptions.
				if Boolean.toJSBoolean(options.noLocation) then
					document = parse(print_(document), options)
				end
			else
				document = parse(GraphQLSource.new(rawSDL, location), options)
			end
			-- ROBLOX deviation START: move logic out of xpcall second callback
			-- end, function(e: any)
		end)
		if not ok then
			local e = result
			-- ROBLOX deviation END
			-- ROBLOX deviation START: simplify if expression and implement regex replace alternative
			-- 			if
			-- 				Boolean.toJSBoolean((function()
			-- 					local ref = Array.includes(e.message, "EOF") --[[ ROBLOX CHECK: check if 'e.message' is an Array ]]
			-- 					return if Boolean.toJSBoolean(ref)
			-- 						then rawSDL
			-- 							:replace(
			-- 								error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /(\#[^*]*)/g ]]
			-- 								""
			-- 							)
			-- 							:trim() == ""
			-- 						else ref
			-- 				end)())
			-- 			then
			if String.includes(e.message, "EOF") and removeCommentsAndTrim(rawSDL) == "" then
				-- ROBLOX deviation END
				document = { kind = Kind.DOCUMENT, definitions = {} }
			else
				error(e)
			end
			-- ROBLOX deviation START: move logic out of xpcall second callback
			-- end)
		end
		-- ROBLOX deviation END
		-- ROBLOX deviation START: not needed
		-- 		if hasReturned then
		-- 			return result
		-- 		end
		-- ROBLOX deviation END
	end
	return { location = location, document = document }
end
exports.parseGraphQLSDL = parseGraphQLSDL
-- ROBLOX deviation START: predefined function
-- local function transformCommentsToDescriptions(sourceSdl: string, options_: GraphQLParseOptions?): DocumentNode
function transformCommentsToDescriptions(sourceSdl: string, options_: GraphQLParseOptions?): DocumentNode
	-- ROBLOX deviation END
	local options: GraphQLParseOptions = if options_ ~= nil then options_ else {}
	local parsedDoc = parse(sourceSdl, Object.assign({}, options, { noLocation = false }))
	local modifiedDoc = visit(parsedDoc, {
		-- ROBLOX deviation START: add self
		-- leave = function(node: ASTNode)
		leave = function(_self, node: ASTNode)
			-- ROBLOX deviation END
			if Boolean.toJSBoolean(isDescribable(node)) then
				local rawValue = getLeadingCommentBlock(node)
				if rawValue ~= nil then
					local commentsBlock = dedentBlockStringValue("\n" .. tostring(rawValue))
					-- ROBLOX deviation START: use String.includes instead of Array.includes
					-- local isBlock = Array.includes(commentsBlock, "\n") --[[ ROBLOX CHECK: check if 'commentsBlock' is an Array ]]
					local isBlock = String.includes(commentsBlock, "\n")
					-- ROBLOX deviation END
					-- ROBLOX deviation START: need to cast as Luau doesn't support type assertions
					-- if not Boolean.toJSBoolean(node.description) then
					if not Boolean.toJSBoolean((node :: DescribableASTNodes).description) then
						-- ROBLOX deviation END
						return Object.assign({}, node, {
							description = {
								kind = Kind.STRING,
								value = commentsBlock,
								block = isBlock,
							},
						})
					else
						return Object.assign({}, node, {
							-- ROBLOX deviation START: need to cast as Luau doesn't support type assertions, also remove unnecessary tostring
							-- 							description = Object.assign({}, node.description, {
							-- 								value = tostring(node.description.value) .. "\n" .. tostring(commentsBlock),
							description = Object.assign({}, (node :: DescribableASTNodes).description, {
								value = (node :: DescribableASTNodes).description.value .. "\n" .. commentsBlock,
								-- ROBLOX deviation END
								block = true,
							}),
						})
					end
				end
			end
			-- ROBLOX deviation START: add explicit return
			return
			-- ROBLOX deviation END
		end,
	})
	return modifiedDoc
end
exports.transformCommentsToDescriptions = transformCommentsToDescriptions
type DiscriminateUnion<T, U> = any --[[ ROBLOX TODO: Unhandled node for type: TSConditionalType ]] --[[ T extends U ? T : never ]]
type DescribableASTNodes = DiscriminateUnion<ASTNode, { description: StringValueNode? }>
-- ROBLOX deviation START: predeclared function
-- local function isDescribable(
function isDescribable(
	-- ROBLOX deviation END
	node: ASTNode
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ node is DescribableASTNodes ]]
	-- ROBLOX deviation START: simplify condition
	-- 	local ref = isTypeSystemDefinitionNode(node)
	-- 	local ref = Boolean.toJSBoolean(ref) and ref or node.kind == Kind.FIELD_DEFINITION
	-- 	local ref = Boolean.toJSBoolean(ref) and ref or node.kind == Kind.INPUT_VALUE_DEFINITION
	-- 	return Boolean.toJSBoolean(ref) and ref or node.kind == Kind.ENUM_VALUE_DEFINITION
	return (
		isTypeSystemDefinitionNode(node)
		or node.kind == Kind.FIELD_DEFINITION
		or node.kind == Kind.INPUT_VALUE_DEFINITION
		or node.kind == Kind.ENUM_VALUE_DEFINITION
	)
	-- ROBLOX deviation END
end
exports.isDescribable = isDescribable
return exports
