--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/parser.js
--!strict
local language = script.Parent
local srcWorkspace = language.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type void = nil

local errorImport = require(srcWorkspace.error)
type GraphQLError = errorImport.GraphQLError

local TokenKindModule = require(language.tokenKind)
type TokenKindEnum = TokenKindModule.TokenKindEnum

local AstModule = require(language.ast)
local Location = AstModule.Location
type DocumentNode = AstModule.DocumentNode
type NonNullTypeNode = AstModule.NonNullTypeNode
type NameNode = AstModule.NameNode
type ListTypeNode = AstModule.ListTypeNode
type DefinitionNode = AstModule.DefinitionNode
type OperationDefinitionNode = AstModule.OperationDefinitionNode
type OperationTypeNode = AstModule.OperationTypeNode
type VariableDefinitionNode = AstModule.VariableDefinitionNode
type VariableNode = AstModule.VariableNode
type SelectionSetNode = AstModule.SelectionSetNode
type SelectionNode = AstModule.SelectionNode
type FieldNode = AstModule.FieldNode
type ArgumentNode = AstModule.ArgumentNode
type ValueNode = AstModule.ValueNode
type StringValueNode = AstModule.StringValueNode
type ListValueNode = AstModule.ListValueNode
type ObjectValueNode = AstModule.ObjectValueNode
type ObjectFieldNode = AstModule.ObjectFieldNode
type DirectiveNode = AstModule.DirectiveNode
type TypeNode = AstModule.TypeNode
type NamedTypeNode = AstModule.NamedTypeNode
type TypeSystemDefinitionNode = AstModule.TypeSystemDefinitionNode
type SchemaDefinitionNode = AstModule.SchemaDefinitionNode
type OperationTypeDefinitionNode = AstModule.OperationTypeDefinitionNode
type ScalarTypeDefinitionNode = AstModule.ScalarTypeDefinitionNode
type ObjectTypeDefinitionNode = AstModule.ObjectTypeDefinitionNode
type FieldDefinitionNode = AstModule.FieldDefinitionNode
type InputValueDefinitionNode = AstModule.InputValueDefinitionNode
type InterfaceTypeDefinitionNode = AstModule.InterfaceTypeDefinitionNode
type UnionTypeDefinitionNode = AstModule.UnionTypeDefinitionNode
type EnumTypeDefinitionNode = AstModule.EnumTypeDefinitionNode
type EnumValueDefinitionNode = AstModule.EnumValueDefinitionNode
type InputObjectTypeDefinitionNode = AstModule.InputObjectTypeDefinitionNode
type TypeSystemExtensionNode = AstModule.TypeSystemExtensionNode
type SchemaExtensionNode = AstModule.SchemaExtensionNode
type ScalarTypeExtensionNode = AstModule.ScalarTypeExtensionNode
type ObjectTypeExtensionNode = AstModule.ObjectTypeExtensionNode
type InterfaceTypeExtensionNode = AstModule.InterfaceTypeExtensionNode
type UnionTypeExtensionNode = AstModule.UnionTypeExtensionNode
type EnumTypeExtensionNode = AstModule.EnumTypeExtensionNode
type InputObjectTypeExtensionNode = AstModule.InputObjectTypeExtensionNode
type DirectiveDefinitionNode = AstModule.DirectiveDefinitionNode
type FragmentDefinitionNode = AstModule.FragmentDefinitionNode
type FragmentSpreadNode = AstModule.FragmentSpreadNode
type InlineFragmentNode = AstModule.InlineFragmentNode
type Location = AstModule.Location
type Token = AstModule.Token

local sourceModule = require(language.source)
local Source = sourceModule.Source
type Source = sourceModule.Source

local lexer = require(language.lexer)
local Lexer = lexer.Lexer
type Lexer = lexer.Lexer
local isPunctuatorTokenKind = lexer.isPunctuatorTokenKind

local TokenKind = TokenKindModule.TokenKind
local DirectiveLocation = require(language.directiveLocation).DirectiveLocation
local Kind = require(language.kinds).Kind

local syntaxError = require(script.Parent.Parent.error.syntaxError).syntaxError

--[[
 * Configuration options to control parser behavior
 *]]
export type ParseOptions = {
	--[[/**
   * By default, the parser creates AST nodes that know the location
   * in the source that they correspond to. This configuration flag
   * disables that behavior for performance or testing.
   */
  ]]
	noLocation: boolean?,
	--[[
   * @deprecated will be removed in 17.0.0
   *
   * If enabled, the parser will understand and parse variable definitions
   * contained in a fragment definition. They'll be represented in the
   * `variableDefinitions` field of the FragmentDefinitionNode.
   *
   * The syntax is identical to normal, query-defined variables. For example:
   *
   *   fragment A($var: Boolean = false) on T  {
   *     ...
   *   }
   *
   *]]
	experimentalFragmentVariables: boolean?,
}

-- deviation: pre-declare functions
local getTokenDesc
local getTokenKindDesc

type Parser = {
	_options: ParseOptions?,
	_lexer: Lexer,

	new: (source: string | Source, options: ParseOptions?) -> Parser,

	parseName: (self: Parser) -> NameNode,
	parseDocument: (self: Parser) -> DocumentNode,
	parseDefinition: (self: Parser) -> DefinitionNode,
	parseOperationDefinition: (self: Parser) -> OperationDefinitionNode,
	parseOperationType: (self: Parser) -> OperationTypeNode,
	parseVariableDefinitions: (self: Parser) -> Array<VariableDefinitionNode>,
	parseVariableDefinition: (self: Parser) -> VariableDefinitionNode,
	parseVariable: (self: Parser) -> VariableNode,
	parseSelectionSet: (self: Parser) -> SelectionSetNode,
	parseSelection: (self: Parser) -> SelectionNode,
	parseField: (self: Parser) -> FieldNode,
	parseArguments: (self: Parser, isConst: boolean) -> Array<ArgumentNode>,
	parseArgument: (self: Parser) -> ArgumentNode,
	parseConstArgument: (self: Parser) -> ArgumentNode,
	parseFragment: (self: Parser) -> FragmentSpreadNode | InlineFragmentNode,
	parseFragmentDefinition: (self: Parser) -> FragmentDefinitionNode,
	parseFragmentName: (self: Parser) -> NameNode,
	parseValueLiteral: (self: Parser, isConst: boolean) -> ValueNode,
	parseStringLiteral: (self: Parser) -> StringValueNode,
	parseList: (self: Parser, isConst: boolean) -> ListValueNode,
	parseObject: (self: Parser, isConst: boolean) -> ObjectValueNode,
	parseObjectField: (self: Parser, isConst: boolean) -> ObjectFieldNode,
	parseDirectives: (self: Parser, isConst: boolean) -> Array<DirectiveNode>,
	parseDirective: (self: Parser, isConst: boolean) -> DirectiveNode,
	parseTypeReference: (self: Parser) -> TypeNode,
	parseNamedType: (self: Parser) -> NamedTypeNode,
	parseTypeSystemDefinition: (self: Parser) -> TypeSystemDefinitionNode,
	peekDescription: (self: Parser) -> boolean,
	parseDescription: (self: Parser) -> void | StringValueNode,
	parseSchemaDefinition: (self: Parser) -> SchemaDefinitionNode,
	parseOperationTypeDefinition: (self: Parser) -> OperationTypeDefinitionNode,
	parseScalarTypeDefinition: (self: Parser) -> ScalarTypeDefinitionNode,
	parseObjectTypeDefinition: (self: Parser) -> ObjectTypeDefinitionNode,
	parseImplementsInterfaces: (self: Parser) -> Array<NamedTypeNode>,
	parseFieldsDefinition: (self: Parser) -> Array<FieldDefinitionNode>,
	parseFieldDefinition: (self: Parser) -> FieldDefinitionNode,
	parseArgumentDefs: (self: Parser) -> Array<InputValueDefinitionNode>,
	parseInputValueDef: (self: Parser) -> InputValueDefinitionNode,
	parseInterfaceTypeDefinition: (self: Parser) -> InterfaceTypeDefinitionNode,
	parseUnionTypeDefinition: (self: Parser) -> UnionTypeDefinitionNode,
	parseUnionMemberTypes: (self: Parser) -> Array<NamedTypeNode>,
	parseEnumTypeDefinition: (self: Parser) -> EnumTypeDefinitionNode,
	parseEnumValuesDefinition: (self: Parser) -> Array<EnumValueDefinitionNode>,
	parseEnumValueDefinition: (self: Parser) -> EnumValueDefinitionNode,
	parseInputObjectTypeDefinition: (self: Parser) -> InputObjectTypeDefinitionNode,
	parseInputFieldsDefinition: (self: Parser) -> Array<InputValueDefinitionNode>,
	parseTypeSystemExtension: (self: Parser) -> TypeSystemExtensionNode,
	parseSchemaExtension: (self: Parser) -> SchemaExtensionNode,
	parseScalarTypeExtension: (self: Parser) -> ScalarTypeExtensionNode,
	parseObjectTypeExtension: (self: Parser) -> ObjectTypeExtensionNode,
	parseInterfaceTypeExtension: (self: Parser) -> InterfaceTypeExtensionNode,
	parseUnionTypeExtension: (self: Parser) -> UnionTypeExtensionNode,
	parseEnumTypeExtension: (self: Parser) -> EnumTypeExtensionNode,
	parseInputObjectTypeExtension: (self: Parser) -> InputObjectTypeExtensionNode,
	parseDirectiveDefinition: (self: Parser) -> DirectiveDefinitionNode,
	parseDirectiveLocations: (self: Parser) -> Array<NameNode>,
	parseDirectiveLocation: (self: Parser) -> NameNode,
	loc: (self: Parser, startToken: Token) -> Location | void,
	peek: (self: Parser, kind: TokenKindEnum) -> boolean,
	expectToken: (self: Parser, kind: TokenKindEnum) -> Token,
	expectOptionalToken: (self: Parser, kind: TokenKindEnum) -> Token?,
	expectKeyword: (self: Parser, value: string) -> (),
	expectOptionalKeyword: (self: Parser, value: string) -> boolean,
	unexpected: (self: Parser, atToken: Token?) -> GraphQLError,
	any: <T>(
		self: Parser,
		openKind: TokenKindEnum,
		parseFn: (self: Parser) -> T,
		closeKind: TokenKindEnum
	) -> Array<T>,
	optionalMany: <T>(
		self: Parser,
		openKind: TokenKindEnum,
		parseFn: (self: Parser) -> T,
		closeKind: TokenKindEnum
	) -> Array<T>,
	many: <T>(
		self: Parser,
		openKind: TokenKindEnum,
		parseFn: (self: Parser) -> T,
		closeKind: TokenKindEnum
	) -> Array<T>,
	delimitedMany: <T>(
		self: Parser,
		delimiterKind: TokenKindEnum,
		parseFn: (self: Parser) -> T
	) -> Array<T>,
}

local Parser: Parser = {} :: Parser;
(Parser :: any).__index = Parser

--[[*
--  * Given a GraphQL source, parses it into a Document.
--  * Throws GraphQLError if a syntax error is encountered.
--  *]]
local function parse(source: string | Source, options: ParseOptions?): DocumentNode
	local parser = Parser.new(source, options)
	return parser:parseDocument()
end

--[[
--  * Given a string containing a GraphQL value (ex. `[42]`), parse the AST for
--  * that value.
--  * Throws GraphQLError if a syntax error is encountered.
--  *
--  * This is useful within tools that operate upon GraphQL Values directly and
--  * in isolation of complete GraphQL documents.
--  *
--  * Consider providing the results to the utility function: valueFromAST().
]]
local function parseValue(source: string | Source, options: ParseOptions?): ValueNode
	local parser = Parser.new(source, options)
	parser:expectToken(TokenKind.SOF)
	local value = parser:parseValueLiteral(false)
	parser:expectToken(TokenKind.EOF)
	return value
end

--[[*
--  * Given a string containing a GraphQL Type (ex. `[Int!]`), parse the AST for
--  * that type.
--  * Throws GraphQLError if a syntax error is encountered.
--  *
--  * This is useful within tools that operate upon GraphQL Types directly and
--  * in isolation of complete GraphQL documents.
--  *
--  * Consider providing the results to the utility function: typeFromAST().
--  *]]
local function parseType(source: string | Source, options: ParseOptions?): TypeNode
	local parser = Parser.new(source, options)
	parser:expectToken(TokenKind.SOF)
	local type_ = parser:parseTypeReference()
	parser:expectToken(TokenKind.EOF)
	return type_
end

function Parser.new(source: string | Source, options: ParseOptions?): Parser
	local sourceObj
	if typeof(source) == "string" then
		sourceObj = Source.new(source)
	else
		sourceObj = source
	end

	local self = {}
	self._lexer = Lexer.new(sourceObj)
	self._options = options

	return (setmetatable(self, Parser) :: any) :: Parser
end

--[[*
--  * Converts a name lex token into a name parse node.
--  *]]
function Parser:parseName(): NameNode
	local token = self:expectToken(TokenKind.NAME)
	return {
		kind = Kind.NAME,
		value = token.value,
		loc = self:loc(token),
	}
end

-- Implements the parsing rules in the Document section.

--[[*
--  * Document : Definition+
--  *]]
function Parser:parseDocument(): DocumentNode
	local start = self._lexer.token
	return {
		kind = Kind.DOCUMENT,
		definitions = self:many(TokenKind.SOF, self.parseDefinition, TokenKind.EOF),
		loc = self:loc(start),
	}
end

--[[*
--  * Definition :
--  *   - ExecutableDefinition
--  *   - TypeSystemDefinition
--  *   - TypeSystemExtension
--  *
--  * ExecutableDefinition :
--  *   - OperationDefinition
--  *   - FragmentDefinition
--  *]]

function Parser:parseDefinition(): DefinitionNode
	if self:peek(TokenKind.NAME) then
		local tokenValue = self._lexer.token.value
		if tokenValue == "query" or tokenValue == "mutation" or tokenValue == "subscription" then
			return self:parseOperationDefinition()
		elseif tokenValue == "fragment" then
			return self:parseFragmentDefinition()
		elseif
			tokenValue == "schema"
			or tokenValue == "scalar"
			or tokenValue == "type"
			or tokenValue == "interface"
			or tokenValue == "union"
			or tokenValue == "enum"
			or tokenValue == "input"
			or tokenValue == "directive"
		then
			return self:parseTypeSystemDefinition()
		elseif tokenValue == "extend" then
			return self:parseTypeSystemExtension()
		end
	elseif self:peek(TokenKind.BRACE_L) then
		return self:parseOperationDefinition()
	elseif self:peekDescription() then
		return self:parseTypeSystemDefinition()
	end

	error(self:unexpected())
end

-- Implements the parsing rules in the Operations section.

--[[*
--  * OperationDefinition :
--  *  - SelectionSet
--  *  - OperationType Name? VariableDefinitions? Directives? SelectionSet
--  *]]
function Parser:parseOperationDefinition(): OperationDefinitionNode
	local start = self._lexer.token
	if self:peek(TokenKind.BRACE_L) then
		return {
			kind = Kind.OPERATION_DEFINITION,
			operation = "query",
			name = nil,
			variableDefinitions = {},
			directives = {},
			selectionSet = self:parseSelectionSet(),
			loc = self:loc(start),
		}
	end
	-- ROBLOX FIXME Luau: both casts are needed to prevent singleton string union from widening to plain string type
	local operation: OperationTypeNode = self:parseOperationType() :: OperationTypeNode
	local name
	if self:peek(TokenKind.NAME) then
		name = self:parseName()
	end
	return {
		kind = Kind.OPERATION_DEFINITION,
		operation = operation,
		name = name,
		variableDefinitions = self:parseVariableDefinitions(),
		directives = self:parseDirectives(false),
		selectionSet = self:parseSelectionSet(),
		loc = self:loc(start),
	}
end

--[[*
--  * OperationType : one of query mutation subscription
--  *]]
function Parser:parseOperationType(): OperationTypeNode
	local operationToken = self:expectToken(TokenKind.NAME)

	if operationToken.value == "query" then
		return "query"
	elseif operationToken.value == "mutation" then
		return "mutation"
	elseif operationToken.value == "subscription" then
		return "subscription"
	end

	error(self:unexpected(operationToken))
end

--[[*
--  * VariableDefinitions : ( VariableDefinition+ )
--  *]]
function Parser:parseVariableDefinitions(): Array<VariableDefinitionNode>
	return self:optionalMany(TokenKind.PAREN_L, self.parseVariableDefinition, TokenKind.PAREN_R)
end

--[[*
--  * VariableDefinition : Variable : Type DefaultValue? Directives[Const]?
--  *]]
function Parser:parseVariableDefinition(): VariableDefinitionNode
	local start = self._lexer.token
	local _ref0 = self:parseVariable()
	self:expectToken(TokenKind.COLON)
	local _ref1 = self:parseTypeReference()
	return {
		kind = Kind.VARIABLE_DEFINITION,
		variable = _ref0,
		type = _ref1,
		defaultValue = (if self:expectOptionalToken(TokenKind.EQUALS)
			then self:parseValueLiteral(true)
			else nil),
		directives = self:parseDirectives(true),
		loc = self:loc(start),
	}
end

--[[*
--  * Variable : $ Name
--  *]]
function Parser:parseVariable(): VariableNode
	local start = self._lexer.token
	self:expectToken(TokenKind.DOLLAR)
	return {
		kind = Kind.VARIABLE,
		name = self:parseName(),
		loc = self:loc(start),
	}
end

--[[*
--  * SelectionSet : { Selection+ }
--  *]]
function Parser:parseSelectionSet(): SelectionSetNode
	local start = self._lexer.token
	return {
		kind = Kind.SELECTION_SET,
		selections = self:many(TokenKind.BRACE_L, self.parseSelection, TokenKind.BRACE_R),
		loc = self:loc(start),
	}
end

--[[*
--  * Selection :
--  *   - Field
--  *   - FragmentSpread
--  *   - InlineFragment
--  *]]
function Parser:parseSelection(): SelectionNode
	if self:peek(TokenKind.SPREAD) then
		return self:parseFragment()
	else
		return self:parseField()
	end
end

--[[*
--  * Field : Alias? Name Arguments? Directives? SelectionSet?
--  *
--  * Alias : Name :
--  *]]
function Parser:parseField(): FieldNode
	local start = self._lexer.token

	local nameOrAlias = self:parseName()
	local alias
	-- ROBLOX FIXME Luau: Luau infers `NameNode?` here because without type states it doesn't understand both branches assign NameNode to the variable?
	local name
	if self:expectOptionalToken(TokenKind.COLON) then
		alias = nameOrAlias
		name = self:parseName()
	else
		name = nameOrAlias
	end

	return {
		kind = Kind.FIELD,
		alias = alias,
		name = name,
		arguments = self:parseArguments(false),
		directives = self:parseDirectives(false),
		selectionSet = self:peek(TokenKind.BRACE_L) and self:parseSelectionSet() or nil,
		loc = self:loc(start),
	}
end

--[[*
--  * Arguments[Const] : ( Argument[?Const]+ )
--  *]]
function Parser:parseArguments(isConst: boolean): Array<ArgumentNode>
	local item
	if isConst then
		item = self.parseConstArgument
	else
		item = self.parseArgument
	end
	return self:optionalMany(TokenKind.PAREN_L, item, TokenKind.PAREN_R)
end

--[[*
--  * Argument[Const] : Name : Value[?Const]
--  *]]
function Parser:parseArgument(): ArgumentNode
	local start = self._lexer.token
	local name = self:parseName()

	self:expectToken(TokenKind.COLON)
	return {
		kind = Kind.ARGUMENT,
		name = name,
		value = self:parseValueLiteral(false),
		loc = self:loc(start),
	}
end

function Parser:parseConstArgument(): ArgumentNode
	local start = self._lexer.token
	local _ref0 = self:parseName()
	self:expectToken(TokenKind.COLON)
	local _ref1 = self:parseValueLiteral(true)
	return {
		kind = Kind.ARGUMENT,
		name = _ref0,
		value = _ref1,
		loc = self:loc(start),
	}
end

-- Implements the parsing rules in the Fragments section.

--[[*
--  * Corresponds to both FragmentSpread and InlineFragment in the spec.
--  *
--  * FragmentSpread : ... FragmentName Directives?
--  *
--  * InlineFragment : ... TypeCondition? Directives? SelectionSet
--  *]]
function Parser:parseFragment(): FragmentSpreadNode | InlineFragmentNode
	local start = self._lexer.token
	self:expectToken(TokenKind.SPREAD)

	local hasTypeCondition = self:expectOptionalKeyword("on")
	if not hasTypeCondition and self:peek(TokenKind.NAME) then
		return {
			kind = Kind.FRAGMENT_SPREAD,
			name = self:parseFragmentName(),
			directives = self:parseDirectives(false),
			loc = self:loc(start),
		}
	end
	return {
		kind = Kind.INLINE_FRAGMENT,
		typeCondition = if hasTypeCondition then self:parseNamedType() else nil,
		directives = self:parseDirectives(false),
		selectionSet = self:parseSelectionSet(),
		loc = self:loc(start),
	}
end

--[[*
--  * FragmentDefinition :
--  *   - fragment FragmentName on TypeCondition Directives? SelectionSet
--  *
--  * TypeCondition : NamedType
--  *]]
function Parser:parseFragmentDefinition(): FragmentDefinitionNode
	local start = self._lexer.token
	self:expectKeyword("fragment")
	-- Experimental support for defining variables within fragments changes
	-- the grammar of FragmentDefinition:
	--   - fragment FragmentName VariableDefinitions? on TypeCondition Directives? SelectionSet
	if (self._options and self._options.experimentalFragmentVariables) == true then
		local name = self:parseFragmentName()
		local variableDefinitions = self:parseVariableDefinitions()
		self:expectKeyword("on")
		local typeConditions = self:parseNamedType()
		local directives = self:parseDirectives(false)
		local selectionSet = self:parseSelectionSet()
		local loc = self:loc(start)
		return {
			kind = Kind.FRAGMENT_DEFINITION,
			name = name,
			variableDefinitions = variableDefinitions,
			typeCondition = typeConditions,
			directives = directives,
			selectionSet = selectionSet,
			loc = loc,
		}
	end
	local name = self:parseFragmentName()
	self:expectKeyword("on")
	local typeCondition = self:parseNamedType()
	local directives = self:parseDirectives(false)
	local selectionSet = self:parseSelectionSet()
	local loc = self:loc(start)
	return {
		kind = Kind.FRAGMENT_DEFINITION,
		name = name,
		typeCondition = typeCondition,
		directives = directives,
		selectionSet = selectionSet,
		loc = loc,
	}
end

--[[*
--  * FragmentName : Name but not `on`
--  *]]
function Parser:parseFragmentName(): NameNode
	if self._lexer.token.value == "on" then
		error(self:unexpected())
	end
	return self:parseName()
end

-- Implements the parsing rules in the Values section.

--[[*
--  * Value[Const] :
--  *   - [~Const] Variable
--  *   - IntValue
--  *   - FloatValue
--  *   - StringValue
--  *   - BooleanValue
--  *   - NullValue
--  *   - EnumValue
--  *   - ListValue[?Const]
--  *   - ObjectValue[?Const]
--  *
--  * BooleanValue : one of `true` `false`
--  *
--  * NullValue : `null`
--  *
--  * EnumValue : Name but not `true`, `false` or `null`
--  *]]
function Parser:parseValueLiteral(isConst: boolean): ValueNode
	local token = self._lexer.token

	local kind = token.kind
	if kind == TokenKind.BRACKET_L then
		return self:parseList(isConst)
	elseif kind == TokenKind.BRACE_L then
		return self:parseObject(isConst)
	elseif kind == TokenKind.INT then
		self._lexer:advance()
		return {
			kind = Kind.INT,
			value = token.value,
			loc = self:loc(token),
		}
	elseif kind == TokenKind.FLOAT then
		self._lexer:advance()
		return {
			kind = Kind.FLOAT,
			value = token.value,
			loc = self:loc(token),
		}
	elseif kind == TokenKind.STRING or kind == TokenKind.BLOCK_STRING then
		return self:parseStringLiteral()
	elseif kind == TokenKind.NAME then
		self._lexer:advance()
		local tokenValue = token.value
		if tokenValue == "true" then
			return { kind = Kind.BOOLEAN, value = true, loc = self:loc(token) }
		elseif tokenValue == "false" then
			return { kind = Kind.BOOLEAN, value = false, loc = self:loc(token) }
		elseif tokenValue == "null" then
			return { kind = Kind.NULL, loc = self:loc(token) }
		else
			return {
				kind = Kind.ENUM,
				value = tokenValue,
				loc = self:loc(token),
			}
		end
	elseif kind == TokenKind.DOLLAR then
		if not isConst then
			return self:parseVariable()
		end
		-- break
	end
	error(self:unexpected())
end

function Parser:parseStringLiteral(): StringValueNode
	local token = self._lexer.token
	self._lexer:advance()
	return {
		kind = Kind.STRING,
		value = token.value,
		block = token.kind == TokenKind.BLOCK_STRING,
		loc = self:loc(token),
	}
end

--[[*
--  * ListValue[Const] :
--  *   - [ ]
--  *   - [ Value[?Const]+ ]
--  *]]
function Parser:parseList(isConst: boolean): ListValueNode
	local start = self._lexer.token
	local item = function()
		return self:parseValueLiteral(isConst)
	end
	return {
		kind = Kind.LIST,
		values = self:any(TokenKind.BRACKET_L, item, TokenKind.BRACKET_R),
		loc = self:loc(start),
	}
end

--[[*
--  * ObjectValue[Const] :
--  *   - { }
--  *   - { ObjectField[?Const]+ }
--  *]]
function Parser:parseObject(isConst: boolean): ObjectValueNode
	local start = self._lexer.token
	local item = function()
		return self:parseObjectField(isConst)
	end
	return {
		kind = Kind.OBJECT,
		fields = self:any(TokenKind.BRACE_L, item, TokenKind.BRACE_R),
		loc = self:loc(start),
	}
end

--[[*
--  * ObjectField[Const] : Name : Value[?Const]
--  *]]
function Parser:parseObjectField(isConst: boolean): ObjectFieldNode
	local start = self._lexer.token
	local name = self:parseName()
	self:expectToken(TokenKind.COLON)

	return {
		kind = Kind.OBJECT_FIELD,
		name = name,
		value = self:parseValueLiteral(isConst),
		loc = self:loc(start),
	}
end

function Parser:parseDirectives(isConst)
	local directives = {}
	while self:peek(TokenKind.AT) do
		table.insert(directives, self:parseDirective(isConst))
	end
	return directives
end

--[[*
--  * Directive[Const] : @ Name Arguments[?Const]?
--  *]]
function Parser:parseDirective(isConst)
	local start = self._lexer.token
	self:expectToken(TokenKind.AT)
	return {
		kind = Kind.DIRECTIVE,
		name = self:parseName(),
		arguments = self:parseArguments(isConst),
		loc = self:loc(start),
	}
end

-- Implements the parsing rules in the Types section.

--[[*
--  * Type :
--  *   - NamedType
--  *   - ListType
--  *   - NonNullType
--  *]]
function Parser:parseTypeReference(): TypeNode
	local start = self._lexer.token
	-- ROBLOX FIXME Luau: Luau should infer this annotation, needs type states
	local type_: ListTypeNode | NamedTypeNode
	if self:expectOptionalToken(TokenKind.BRACKET_L) then
		local innerType = self:parseTypeReference()
		self:expectToken(TokenKind.BRACKET_R)
		type_ = {
			kind = Kind.LIST_TYPE,
			type = innerType,
			loc = self:loc(start),
			-- ROBLOX deviation START: upstream 16.x and main needed a template type here, so we'll narrow with a manual cast
		} :: ListTypeNode
		-- ROBLOX deviation END
	else
		type_ = self:parseNamedType()
	end

	if self:expectOptionalToken(TokenKind.BANG) then
		return {
			kind = Kind.NON_NULL_TYPE,
			type = type_,
			loc = self:loc(start),
			-- ROBLOX deviation START: upstream 16.x and main needed a template type here, so we'll narrow with a manual cast
		} :: NonNullTypeNode
		-- ROBLOX deviation END
	end
	return type_
end

--[[*
--  * NamedType : Name
--  *]]
function Parser:parseNamedType(): NamedTypeNode
	local start = self._lexer.token
	return {
		kind = Kind.NAMED_TYPE,
		name = self:parseName(),
		loc = self:loc(start),
	}
end

--[[*
--  * TypeSystemDefinition :
--  *   - SchemaDefinition
--  *   - TypeDefinition
--  *   - DirectiveDefinition
--  *
--  * TypeDefinition :
--  *   - ScalarTypeDefinition
--  *   - ObjectTypeDefinition
--  *   - InterfaceTypeDefinition
--  *   - UnionTypeDefinition
--  *   - EnumTypeDefinition
--  *   - InputObjectTypeDefinition
--  *]]
function Parser:parseTypeSystemDefinition()
	-- Many definitions begin with a description and require a lookahead.
	local keywordToken = if self:peekDescription()
		then self._lexer:lookahead()
		else self._lexer.token

	if keywordToken.kind == TokenKind.NAME then
		local tokenValue = keywordToken.value
		if tokenValue == "schema" then
			return self:parseSchemaDefinition()
		elseif tokenValue == "scalar" then
			return self:parseScalarTypeDefinition()
		elseif tokenValue == "type" then
			return self:parseObjectTypeDefinition()
		elseif tokenValue == "interface" then
			return self:parseInterfaceTypeDefinition()
		elseif tokenValue == "union" then
			return self:parseUnionTypeDefinition()
		elseif tokenValue == "enum" then
			return self:parseEnumTypeDefinition()
		elseif tokenValue == "input" then
			return self:parseInputObjectTypeDefinition()
		elseif tokenValue == "directive" then
			return self:parseDirectiveDefinition()
		end
	end

	error(self:unexpected(keywordToken))
end

function Parser:peekDescription(): boolean
	return self:peek(TokenKind.STRING) or self:peek(TokenKind.BLOCK_STRING)
end

--[[*
--  * Description : StringValue
--  *]]
function Parser:parseDescription()
	if self:peekDescription() then
		return self:parseStringLiteral()
	end
	return -- ROBLOX deviation: no implicit returns
end

--[[*
--  * SchemaDefinition : Description? schema Directives[Const]? { OperationTypeDefinition+ }
--  *]]
function Parser:parseSchemaDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("schema")
	local directives = self:parseDirectives(true)
	local operationTypes = self:many(
		TokenKind.BRACE_L,
		self.parseOperationTypeDefinition,
		TokenKind.BRACE_R
	)
	return {
		kind = Kind.SCHEMA_DEFINITION,
		description = description,
		directives = directives,
		operationTypes = operationTypes,
		loc = self:loc(start),
	}
end

--[[*
--  * OperationTypeDefinition : OperationType : NamedType
--  *]]
function Parser:parseOperationTypeDefinition(): OperationTypeDefinitionNode
	local start = self._lexer.token
	-- ROBLOX FIXME Luau: both casts are needed to prevent singleton string union from widening to plain string type
	local operation: OperationTypeNode = self:parseOperationType() :: OperationTypeNode
	self:expectToken(TokenKind.COLON)
	local type_ = self:parseNamedType()
	return {
		kind = Kind.OPERATION_TYPE_DEFINITION,
		operation = operation,
		type = type_,
		loc = self:loc(start),
	}
end

--[[*
--  * ScalarTypeDefinition : Description? scalar Name Directives[Const]?
--  *]]
function Parser:parseScalarTypeDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("scalar")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	return {
		kind = Kind.SCALAR_TYPE_DEFINITION,
		description = description,
		name = name,
		directives = directives,
		loc = self:loc(start),
	}
end

--[[*
--  * ObjectTypeDefinition :
--  *   Description?
--  *   type Name ImplementsInterfaces? Directives[Const]? FieldsDefinition?
--  *]]
function Parser:parseObjectTypeDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("type")
	local name = self:parseName()
	local interfaces = self:parseImplementsInterfaces()
	local directives = self:parseDirectives(true)
	local fields = self:parseFieldsDefinition()
	return {
		kind = Kind.OBJECT_TYPE_DEFINITION,
		description = description,
		name = name,
		interfaces = interfaces,
		directives = directives,
		fields = fields,
		loc = self:loc(start),
	}
end

--[[*
--  * ImplementsInterfaces :
--  *   - implements `&`? NamedType
--  *   - ImplementsInterfaces & NamedType
--  *]]
function Parser:parseImplementsInterfaces(): Array<any>
	if self:expectOptionalKeyword("implements") then
		return self:delimitedMany(TokenKind.AMP, self.parseNamedType)
	else
		return {}
	end
end

--[[*
--  * FieldsDefinition : { FieldDefinition+ }
--  *]]
function Parser:parseFieldsDefinition()
	return self:optionalMany(TokenKind.BRACE_L, self.parseFieldDefinition, TokenKind.BRACE_R)
end

--[[*
--  * FieldDefinition :
--  *   - Description? Name ArgumentsDefinition? : Type Directives[Const]?
--  *]]
function Parser:parseFieldDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	local name = self:parseName()
	local args = self:parseArgumentDefs()
	self:expectToken(TokenKind.COLON)
	local type_ = self:parseTypeReference()
	local directives = self:parseDirectives(true)
	return {
		kind = Kind.FIELD_DEFINITION,
		description = description,
		name = name,
		arguments = args,
		type = type_,
		directives = directives,
		loc = self:loc(start),
	}
end

--[[*
--  * ArgumentsDefinition : ( InputValueDefinition+ )
--  *]]
function Parser:parseArgumentDefs()
	return self:optionalMany(TokenKind.PAREN_L, self.parseInputValueDef, TokenKind.PAREN_R)
end

--[[*
--  * InputValueDefinition :
--  *   - Description? Name : Type DefaultValue? Directives[Const]?
--  *]]
function Parser:parseInputValueDef()
	local start = self._lexer.token
	local description = self:parseDescription()
	local name = self:parseName()
	self:expectToken(TokenKind.COLON)
	local type_ = self:parseTypeReference()
	local defaultValue
	if self:expectOptionalToken(TokenKind.EQUALS) then
		defaultValue = self:parseValueLiteral(true)
	end
	local directives = self:parseDirectives(true)
	return {
		kind = Kind.INPUT_VALUE_DEFINITION,
		description = description,
		name = name,
		type = type_,
		defaultValue = defaultValue,
		directives = directives,
		loc = self:loc(start),
	}
end

--[[*
--  * InterfaceTypeDefinition :
--  *   - Description? interface Name Directives[Const]? FieldsDefinition?
--  *]]
function Parser:parseInterfaceTypeDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("interface")
	local name = self:parseName()
	local interfaces = self:parseImplementsInterfaces()
	local directives = self:parseDirectives(true)
	local fields = self:parseFieldsDefinition()
	return {
		kind = Kind.INTERFACE_TYPE_DEFINITION,
		description = description,
		name = name,
		interfaces = interfaces,
		directives = directives,
		fields = fields,
		loc = self:loc(start),
	}
end

--[[*
--  * UnionTypeDefinition :
--  *   - Description? union Name Directives[Const]? UnionMemberTypes?
--  *]]
function Parser:parseUnionTypeDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("union")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	local types = self:parseUnionMemberTypes()
	return {
		kind = Kind.UNION_TYPE_DEFINITION,
		description = description,
		name = name,
		directives = directives,
		types = types,
		loc = self:loc(start),
	}
end

--[[*
--  * UnionMemberTypes :
--  *   - = `|`? NamedType
--  *   - UnionMemberTypes | NamedType
--  *]]
function Parser:parseUnionMemberTypes(): Array<NamedTypeNode>
	local types = {}
	if self:expectOptionalToken(TokenKind.EQUALS) then
		--   // Optional leading pipe
		self:expectOptionalToken(TokenKind.PIPE)
		repeat
			table.insert(types, self:parseNamedType())
		until not self:expectOptionalToken(TokenKind.PIPE)
	end
	return types
end

--[[*
--  * EnumTypeDefinition :
--  *   - Description? enum Name Directives[Const]? EnumValuesDefinition?
--  *]]
function Parser:parseEnumTypeDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("enum")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	local values = self:parseEnumValuesDefinition()
	return {
		kind = Kind.ENUM_TYPE_DEFINITION,
		description = description,
		name = name,
		directives = directives,
		values = values,
		loc = self:loc(start),
	}
end

--[[*
--  * EnumValuesDefinition : { EnumValueDefinition+ }
--  *]]
function Parser:parseEnumValuesDefinition()
	return self:optionalMany(TokenKind.BRACE_L, self.parseEnumValueDefinition, TokenKind.BRACE_R)
end

--[[*
--  * EnumValueDefinition : Description? EnumValue Directives[Const]?
--  *
--  * EnumValue : Name
--  *]]
function Parser:parseEnumValueDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	return {
		kind = Kind.ENUM_VALUE_DEFINITION,
		description = description,
		name = name,
		directives = directives,
		loc = self:loc(start),
	}
end

--[[*
--  * InputObjectTypeDefinition :
--  *   - Description? input Name Directives[Const]? InputFieldsDefinition?
--  *]]
function Parser:parseInputObjectTypeDefinition()
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("input")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	local fields = self:parseInputFieldsDefinition()
	return {
		kind = Kind.INPUT_OBJECT_TYPE_DEFINITION,
		description = description,
		name = name,
		directives = directives,
		fields = fields,
		loc = self:loc(start),
	}
end

--[[*
--  * InputFieldsDefinition : { InputValueDefinition+ }
--  *]]
function Parser:parseInputFieldsDefinition()
	return self:optionalMany(TokenKind.BRACE_L, self.parseInputValueDef, TokenKind.BRACE_R)
end

--[[*
--  * TypeSystemExtension :
--  *   - SchemaExtension
--  *   - TypeExtension
--  *
--  * TypeExtension :
--  *   - ScalarTypeExtension
--  *   - ObjectTypeExtension
--  *   - InterfaceTypeExtension
--  *   - UnionTypeExtension
--  *   - EnumTypeExtension
--  *   - InputObjectTypeDefinition
--  *]]
function Parser:parseTypeSystemExtension()
	local keywordToken = self._lexer:lookahead()

	if keywordToken.kind == TokenKind.NAME then
		local tokenValue = keywordToken.value
		if tokenValue == "schema" then
			return self:parseSchemaExtension()
		elseif tokenValue == "scalar" then
			return self:parseScalarTypeExtension()
		elseif tokenValue == "type" then
			return self:parseObjectTypeExtension()
		elseif tokenValue == "interface" then
			return self:parseInterfaceTypeExtension()
		elseif tokenValue == "union" then
			return self:parseUnionTypeExtension()
		elseif tokenValue == "enum" then
			return self:parseEnumTypeExtension()
		elseif tokenValue == "input" then
			return self:parseInputObjectTypeExtension()
		end
	end

	error(self:unexpected(keywordToken))
end

--[[*
--  * SchemaExtension :
--  *  - extend schema Directives[Const]? { OperationTypeDefinition+ }
--  *  - extend schema Directives[Const]
--  *]]
function Parser:parseSchemaExtension()
	local start = self._lexer.token
	self:expectKeyword("extend")
	self:expectKeyword("schema")
	local directives = self:parseDirectives(true)
	local operationTypes = self:optionalMany(
		TokenKind.BRACE_L,
		self.parseOperationTypeDefinition,
		TokenKind.BRACE_R
	)
	if #directives == 0 and #operationTypes == 0 then
		error(self:unexpected())
	end
	return {
		kind = Kind.SCHEMA_EXTENSION,
		directives = directives,
		operationTypes = operationTypes,
		loc = self:loc(start),
	}
end

--[[*
--  * ScalarTypeExtension :
--  *   - extend scalar Name Directives[Const]
--  *]]
function Parser:parseScalarTypeExtension()
	local start = self._lexer.token
	self:expectKeyword("extend")
	self:expectKeyword("scalar")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	if #directives == 0 then
		error(self:unexpected())
	end
	return {
		kind = Kind.SCALAR_TYPE_EXTENSION,
		name = name,
		directives = directives,
		loc = self:loc(start),
	}
end

--[[*
--  * ObjectTypeExtension :
--  *  - extend type Name ImplementsInterfaces? Directives[Const]? FieldsDefinition
--  *  - extend type Name ImplementsInterfaces? Directives[Const]
--  *  - extend type Name ImplementsInterfaces
--  *]]
function Parser:parseObjectTypeExtension(): ObjectTypeExtensionNode
	local start = self._lexer.token
	self:expectKeyword("extend")
	self:expectKeyword("type")
	local name = self:parseName()
	local interfaces = self:parseImplementsInterfaces()
	local directives = self:parseDirectives(true)
	local fields = self:parseFieldsDefinition()
	if #interfaces == 0 and #directives == 0 and #fields == 0 then
		error(self:unexpected())
	end
	return {
		kind = Kind.OBJECT_TYPE_EXTENSION,
		name = name,
		interfaces = interfaces,
		directives = directives,
		fields = fields,
		loc = self:loc(start),
	}
end

--[[*
--  * InterfaceTypeExtension :
--  *  - extend interface Name ImplementsInterfaces? Directives[Const]? FieldsDefinition
--  *  - extend interface Name ImplementsInterfaces? Directives[Const]
--  *  - extend interface Name ImplementsInterfaces
--  *]]
function Parser:parseInterfaceTypeExtension(): InterfaceTypeExtensionNode
	local start = self._lexer.token
	self:expectKeyword("extend")
	self:expectKeyword("interface")
	local name = self:parseName()
	local interfaces = self:parseImplementsInterfaces()
	local directives = self:parseDirectives(true)
	local fields = self:parseFieldsDefinition()
	if #interfaces == 0 and #directives == 0 and #fields == 0 then
		error(self:unexpected())
	end
	return {
		kind = Kind.INTERFACE_TYPE_EXTENSION,
		name = name,
		interfaces = interfaces,
		directives = directives,
		fields = fields,
		loc = self:loc(start),
	}
end

--[[*
--  * UnionTypeExtension :
--  *   - extend union Name Directives[Const]? UnionMemberTypes
--  *   - extend union Name Directives[Const]
--  *]]
function Parser:parseUnionTypeExtension(): UnionTypeExtensionNode
	local start = self._lexer.token
	self:expectKeyword("extend")
	self:expectKeyword("union")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	local types = self:parseUnionMemberTypes()
	if #directives == 0 and #types == 0 then
		error(self:unexpected())
	end
	return {
		kind = Kind.UNION_TYPE_EXTENSION,
		name = name,
		directives = directives,
		types = types,
		loc = self:loc(start),
	}
end

--[[*
--  * EnumTypeExtension :
--  *   - extend enum Name Directives[Const]? EnumValuesDefinition
--  *   - extend enum Name Directives[Const]
--  *]]
function Parser:parseEnumTypeExtension(): EnumTypeExtensionNode
	local start = self._lexer.token
	self:expectKeyword("extend")
	self:expectKeyword("enum")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	local values = self:parseEnumValuesDefinition()
	if #directives == 0 and #values == 0 then
		error(self:unexpected())
	end
	return {
		kind = Kind.ENUM_TYPE_EXTENSION,
		name = name,
		directives = directives,
		values = values,
		loc = self:loc(start),
	}
end

--[[*
--  * InputObjectTypeExtension :
--  *   - extend input Name Directives[Const]? InputFieldsDefinition
--  *   - extend input Name Directives[Const]
--  *]]
function Parser:parseInputObjectTypeExtension(): InputObjectTypeExtensionNode
	local start = self._lexer.token
	self:expectKeyword("extend")
	self:expectKeyword("input")
	local name = self:parseName()
	local directives = self:parseDirectives(true)
	local fields = self:parseInputFieldsDefinition()
	if #directives == 0 and #fields == 0 then
		error(self:unexpected())
	end
	return {
		kind = Kind.INPUT_OBJECT_TYPE_EXTENSION,
		name = name,
		directives = directives,
		fields = fields,
		loc = self:loc(start),
	}
end

--[[*
--  * DirectiveDefinition :
--  *   - Description? directive @ Name ArgumentsDefinition? `repeatable`? on DirectiveLocations
--  *]]
function Parser:parseDirectiveDefinition(): DirectiveDefinitionNode
	local start = self._lexer.token
	local description = self:parseDescription()
	self:expectKeyword("directive")
	self:expectToken(TokenKind.AT)
	local name = self:parseName()
	local args = self:parseArgumentDefs()
	local repeatable = self:expectOptionalKeyword("repeatable")
	self:expectKeyword("on")
	local locations = self:parseDirectiveLocations()
	return {
		kind = Kind.DIRECTIVE_DEFINITION,
		description = description,
		name = name,
		arguments = args,
		repeatable = repeatable,
		locations = locations,
		loc = self:loc(start),
	}
end

--[[*
--  * DirectiveLocations :
--  *   - `|`? DirectiveLocation
--  *   - DirectiveLocations | DirectiveLocation
--  *]]
function Parser:parseDirectiveLocations(): Array<NameNode>
	-- Optional leading pipe
	self:expectOptionalToken(TokenKind.PIPE)
	local locations = {}
	repeat
		table.insert(locations, self:parseDirectiveLocation())
	until not self:expectOptionalToken(TokenKind.PIPE)
	return locations
end

--[[*
--  * DirectiveLocation :
--  *   - ExecutableDirectiveLocation
--  *   - TypeSystemDirectiveLocation
--  *
--  * ExecutableDirectiveLocation : one of
--  *   `QUERY`
--  *   `MUTATION`
--  *   `SUBSCRIPTION`
--  *   `FIELD`
--  *   `FRAGMENT_DEFINITION`
--  *   `FRAGMENT_SPREAD`
--  *   `INLINE_FRAGMENT`
--  *
--  * TypeSystemDirectiveLocation : one of
--  *   `SCHEMA`
--  *   `SCALAR`
--  *   `OBJECT`
--  *   `FIELD_DEFINITION`
--  *   `ARGUMENT_DEFINITION`
--  *   `INTERFACE`
--  *   `UNION`
--  *   `ENUM`
--  *   `ENUM_VALUE`
--  *   `INPUT_OBJECT`
--  *   `INPUT_FIELD_DEFINITION`
--  *]]
function Parser:parseDirectiveLocation(): NameNode
	local start = self._lexer.token
	local name = self:parseName()
	if DirectiveLocation[name.value] ~= nil then
		return name
	end
	error(self:unexpected(start))
end

--[[*
--  * Returns a location object, used to identify the place in
--  * the source that created a given parsed object.
--  *]]
function Parser:loc(startToken: Token): Location | void
	if (self._options and self._options.noLocation) ~= true then
		return Location.new(startToken, self._lexer.lastToken, self._lexer.source)
	end
	return nil
end

--[[*
--  * Determines if the next token is of a given kind
--  *]]
function Parser:peek(kind: TokenKindEnum): boolean
	return self._lexer.token.kind == kind
end

--[[*
--  * If the next token is of the given kind, return that token after advancing
--  * the lexer. Otherwise, do not change the parser state and throw an error.
--  *]]
function Parser:expectToken(kind: TokenKindEnum): Token
	local token = self._lexer.token
	if token.kind == kind then
		self._lexer:advance()
		return token
	end

	error(
		syntaxError(
			self._lexer.source,
			token.start,
			"Expected " .. getTokenKindDesc(kind) .. ", found " .. getTokenDesc(token) .. "."
		)
	)
end

--[[*
--  * If the next token is of the given kind, return that token after advancing
--  * the lexer. Otherwise, do not change the parser state and return undefined.
--  *]]
function Parser:expectOptionalToken(kind: TokenKindEnum): Token?
	local token = self._lexer.token
	if token.kind == kind then
		self._lexer:advance()
		return token
	end
	return nil
end

--[[*
--  * If the next token is a given keyword, advance the lexer.
--  * Otherwise, do not change the parser state and throw an error.
--  *]]
function Parser:expectKeyword(value: string): ()
	local token = self._lexer.token
	if token.kind == TokenKind.NAME and token.value == value then
		self._lexer:advance()
	else
		error(
			syntaxError(
				self._lexer.source,
				token.start,
				'Expected "' .. value .. '", found ' .. getTokenDesc(token) .. "."
			)
		)
	end
end

--[[*
--  * If the next token is a given keyword, return "true" after advancing
--  * the lexer. Otherwise, do not change the parser state and return "false".
--  *]]
function Parser:expectOptionalKeyword(value: string): boolean
	local token = self._lexer.token
	if token.kind == TokenKind.NAME and token.value == value then
		self._lexer:advance()
		return true
	end
	return false
end

--[[*
--  * Helper function for creating an error when an unexpected lexed token
--  * is encountered.
--  *]]
function Parser:unexpected(atToken: Token?): GraphQLError
	local token = atToken ~= nil and atToken or self._lexer.token
	return syntaxError(self._lexer.source, token.start, "Unexpected " .. getTokenDesc(token) .. ".")
end

--[[*
--  * Returns a possibly empty list of parse nodes, determined by
--  * the parseFn. This list begins with a lex token of openKind
--  * and ends with a lex token of closeKind. Advances the parser
--  * to the next lex token after the closing token.
--  *]]
function Parser:any<T>(
	openKind: TokenKindEnum,
	-- ROBLOX deviation: we pass 1 arg here to account for self
	parseFn: (self: Parser) -> T,
	closeKind: TokenKindEnum
): Array<T>
	self:expectToken(openKind)
	local nodes = {}
	while not self:expectOptionalToken(closeKind) do
		table.insert(nodes, parseFn(self))
	end
	return nodes
end

--[[*
--  * Returns a list of parse nodes, determined by the parseFn.
--  * It can be empty only if open token is missing otherwise it will always
--  * return non-empty list that begins with a lex token of openKind and ends
--  * with a lex token of closeKind. Advances the parser to the next lex token
--  * after the closing token.
--  *]]
function Parser:optionalMany<T>(
	openKind: TokenKindEnum,
	-- ROBLOX deviation: we pass 1 arg here to account for self
	parseFn: (self: Parser) -> T,
	closeKind: TokenKindEnum
): Array<T>
	if self:expectOptionalToken(openKind) then
		local nodes = {}
		repeat
			table.insert(nodes, parseFn(self))
		until self:expectOptionalToken(closeKind)
		return nodes
	end
	return {}
end

--[[*
--  * Returns a non-empty list of parse nodes, determined by
--  * the parseFn. This list begins with a lex token of openKind
--  * and ends with a lex token of closeKind. Advances the parser
--  * to the next lex token after the closing token.
--  *]]
function Parser:many<T>(
	openKind: TokenKindEnum,
	-- ROBLOX deviation: we pass 1 arg here to account for self
	parseFn: (self: Parser) -> T,
	closeKind: TokenKindEnum
): Array<T>
	self:expectToken(openKind)
	local nodes = {}
	repeat
		table.insert(nodes, parseFn(self))
	until self:expectOptionalToken(closeKind)
	return nodes
end

--[[*
* Returns a non-empty list of parse nodes, determined by the parseFn.
* This list may begin with a lex token of delimiterKind followed by items separated by lex tokens of tokenKind.
* Advances the parser to the next lex token after last item in the list.
]]
function Parser:delimitedMany<T>(
	delimiterKind: TokenKindEnum,
	-- ROBLOX deviation: we pass 1 arg here to account for self
	parseFn: (self: Parser) -> T
): Array<T>
	self:expectOptionalToken(delimiterKind)

	local nodes = {}
	repeat
		table.insert(nodes, parseFn(self))
	until not (self:expectOptionalToken(delimiterKind))
	return nodes
end

--[[*
--  * A helper function to describe a token as a string for debugging
--  *]]
function getTokenDesc(token: Token): string
	local value = token.value
	return getTokenKindDesc(token.kind) .. (value ~= nil and ' "' .. value .. '"' or "")
end

--[[*
--  * A helper function to describe a token kind as a string for debugging
--  *]]
function getTokenKindDesc(kind: TokenKindEnum): string
	return isPunctuatorTokenKind(kind) and '"' .. kind .. '"' or kind
end

return {
	Parser = Parser,
	parse = parse,
	parseValue = parseValue,
	parseType = parseType,
}
