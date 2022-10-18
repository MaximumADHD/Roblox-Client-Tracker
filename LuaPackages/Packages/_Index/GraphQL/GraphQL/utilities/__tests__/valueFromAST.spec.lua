--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/valueFromAST-test.js

return function()
	local utilitiesWorkspace = script.Parent.Parent
	local srcWorkspace = utilitiesWorkspace.Parent
	local Packages = srcWorkspace.Parent

	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Error = LuauPolyfill.Error
	local Number = LuauPolyfill.Number

	-- ROBLOX deviation: no distinction between undefined and null in Lua so we need to go around this with custom NULL like constant
	local NULL = require(srcWorkspace.luaUtils.null)

	local invariant = require(srcWorkspace.jsutils.invariant).invariant
	local identityFunc = require(srcWorkspace.jsutils.identityFunc).identityFunc
	local parseValue = require(srcWorkspace.language.parser).parseValue

	local definitionImport = require(srcWorkspace.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local GraphQLScalarType = definitionImport.GraphQLScalarType
	local GraphQLEnumType = definitionImport.GraphQLEnumType
	local GraphQLInputObjectType = definitionImport.GraphQLInputObjectType

	local valueFromAST = require(utilitiesWorkspace.valueFromAST).valueFromAST

	local scalars = require(srcWorkspace.type.scalars)
	local GraphQLInt = scalars.GraphQLInt
	local GraphQLFloat = scalars.GraphQLFloat
	local GraphQLString = scalars.GraphQLString
	local GraphQLBoolean = scalars.GraphQLBoolean
	local GraphQLID = scalars.GraphQLID

	describe("valueFromAST", function()
		local function expectValueFrom(expect_, valueText, type_, variables)
			local ast = parseValue(valueText)
			local value = valueFromAST(ast, type_, variables)

			return expect_(value)
		end

		it("rejects empty input", function()
			expect(valueFromAST(nil, GraphQLBoolean)).toEqual(nil)
		end)

		it("converts according to input coercion rules", function()
			expectValueFrom(expect, "true", GraphQLBoolean).to.equal(true)
			expectValueFrom(expect, "false", GraphQLBoolean).to.equal(false)
			expectValueFrom(expect, "123", GraphQLInt).to.equal(123)
			expectValueFrom(expect, "123", GraphQLFloat).to.equal(123)
			expectValueFrom(expect, "123.456", GraphQLFloat).to.equal(123.456)
			expectValueFrom(expect, '"abc123"', GraphQLString).to.equal("abc123")
			expectValueFrom(expect, "123456", GraphQLID).to.equal("123456")
			expectValueFrom(expect, '"123456"', GraphQLID).to.equal("123456")
		end)

		it("does not convert when input coercion rules reject a value", function()
			expectValueFrom(expect, "123", GraphQLBoolean).to.equal(nil)
			expectValueFrom(expect, "123.456", GraphQLInt).to.equal(nil)
			expectValueFrom(expect, "true", GraphQLInt).to.equal(nil)
			expectValueFrom(expect, '"123"', GraphQLInt).to.equal(nil)
			expectValueFrom(expect, '"123"', GraphQLFloat).to.equal(nil)
			expectValueFrom(expect, "123", GraphQLString).to.equal(nil)
			expectValueFrom(expect, "true", GraphQLString).to.equal(nil)
			expectValueFrom(expect, "123.456", GraphQLString).to.equal(nil)
		end)

		it("convert using parseLiteral from a custom scalar type", function()
			local passthroughScalar = GraphQLScalarType.new({
				name = "PassthroughScalar",
				parseLiteral = function(node)
					invariant(node.kind == "StringValue")
					return node.value
				end,
				parseValue = identityFunc,
			})

			expectValueFrom(expect, '"value"', passthroughScalar).to.equal("value")

			local throwScalar = GraphQLScalarType.new({
				name = "ThrowScalar",
				parseLiteral = function()
					error(Error.new("Test"))
				end,
				parseValue = identityFunc,
			})

			expectValueFrom(expect, "value", throwScalar).to.equal(nil)

			local returnUndefinedScalar = GraphQLScalarType.new({
				name = "ReturnUndefinedScalar",
				parseLiteral = function()
					return nil
				end,
				parseValue = identityFunc,
			})

			expectValueFrom(expect, "value", returnUndefinedScalar).to.equal(nil)
		end)

		it("converts enum values according to input coercion rules", function()
			local testEnum = GraphQLEnumType.new({
				name = "TestColor",
				values = {
					RED = { value = 1 },
					GREEN = { value = 2 },
					BLUE = { value = 3 },
					NULL = { value = NULL },
					NAN = { value = Number.NaN },
					NO_CUSTOM_VALUE = { value = nil },
				},
			})

			expectValueFrom(expect, "RED", testEnum).to.equal(1)
			expectValueFrom(expect, "BLUE", testEnum).to.equal(3)
			expectValueFrom(expect, "3", testEnum).to.equal(nil)
			expectValueFrom(expect, '"BLUE"', testEnum).to.equal(nil)
			expectValueFrom(expect, "null", testEnum).to.equal(NULL)
			expectValueFrom(expect, "NULL", testEnum).to.equal(NULL)
			expectValueFrom(expect, "NULL", GraphQLNonNull.new(testEnum)).to.equal(NULL)
			expectValueFrom(expect, "NAN", testEnum).toBeNaN()
			expectValueFrom(expect, "NO_CUSTOM_VALUE", testEnum).to.equal("NO_CUSTOM_VALUE")
		end)

		-- Boolean!
		local nonNullBool = GraphQLNonNull.new(GraphQLBoolean)
		-- [Boolean]
		local listOfBool = GraphQLList.new(GraphQLBoolean)
		-- [Boolean!]
		local listOfNonNullBool = GraphQLList.new(nonNullBool)
		-- [Boolean]!
		local nonNullListOfBool = GraphQLNonNull.new(listOfBool)
		-- [Boolean!]!
		local nonNullListOfNonNullBool = GraphQLNonNull.new(listOfNonNullBool)

		it("coerces to null unless non-null", function()
			expectValueFrom(expect, "null", GraphQLBoolean).to.equal(NULL)
			expectValueFrom(expect, "null", nonNullBool).to.equal(nil)
		end)

		it("coerces lists of values", function()
			expectValueFrom(expect, "true", listOfBool).toEqual({ true })
			expectValueFrom(expect, "123", listOfBool).to.equal(nil)
			expectValueFrom(expect, "null", listOfBool).to.equal(NULL)
			expectValueFrom(expect, "[true, false]", listOfBool).toEqual({ true, false })
			expectValueFrom(expect, "[true, 123]", listOfBool).to.equal(nil)
			expectValueFrom(expect, "[true, null]", listOfBool).toEqual({ true, NULL })
			expectValueFrom(expect, "{ true: true }", listOfBool).to.equal(nil)
		end)

		it("coerces non-null lists of values", function()
			expectValueFrom(expect, "true", nonNullListOfBool).toEqual({ true })
			expectValueFrom(expect, "123", nonNullListOfBool).to.equal(nil)
			expectValueFrom(expect, "null", nonNullListOfBool).to.equal(nil)
			expectValueFrom(expect, "[true, false]", nonNullListOfBool).toEqual({ true, false })
			expectValueFrom(expect, "[true, 123]", nonNullListOfBool).to.equal(nil)
			expectValueFrom(expect, "[true, null]", nonNullListOfBool).toEqual({ true, NULL })
		end)

		it("coerces lists of non-null values", function()
			expectValueFrom(expect, "true", listOfNonNullBool).toEqual({ true })
			expectValueFrom(expect, "123", listOfNonNullBool).to.equal(nil)
			expectValueFrom(expect, "null", listOfNonNullBool).to.equal(NULL)
			expectValueFrom(expect, "[true, false]", listOfNonNullBool).toEqual({ true, false })
			expectValueFrom(expect, "[true, 123]", listOfNonNullBool).to.equal(nil)
			expectValueFrom(expect, "[true, null]", listOfNonNullBool).to.equal(nil)
		end)

		it("coerces non-null lists of non-null values", function()
			expectValueFrom(expect, "true", nonNullListOfNonNullBool).toEqual({ true })
			expectValueFrom(expect, "123", nonNullListOfNonNullBool).to.equal(nil)
			expectValueFrom(expect, "null", nonNullListOfNonNullBool).to.equal(nil)
			expectValueFrom(expect, "[true, false]", nonNullListOfNonNullBool).toEqual({
				true,
				false,
			})
			expectValueFrom(expect, "[true, 123]", nonNullListOfNonNullBool).to.equal(nil)
			expectValueFrom(expect, "[true, null]", nonNullListOfNonNullBool).to.equal(nil)
		end)

		local testInputObj = GraphQLInputObjectType.new({
			name = "TestInput",
			fields = {
				int = {
					type = GraphQLInt,
					defaultValue = 42,
				},
				bool = { type = GraphQLBoolean },
				requiredBool = { type = nonNullBool },
			},
		})

		it("coerces input objects according to input coercion rules", function()
			expectValueFrom(expect, "null", testInputObj).to.equal(NULL)
			expectValueFrom(expect, "123", testInputObj).to.equal(nil)
			expectValueFrom(expect, "[]", testInputObj).to.equal(nil)
			expectValueFrom(expect, "{ int: 123, requiredBool: false }", testInputObj).toEqual({
				int = 123,
				requiredBool = false,
			})
			expectValueFrom(expect, "{ bool: true, requiredBool: false }", testInputObj).toEqual({
				int = 42,
				bool = true,
				requiredBool = false,
			})
			expectValueFrom(expect, "{ int: true, requiredBool: true }", testInputObj).to.equal(nil)
			expectValueFrom(expect, "{ requiredBool: null }", testInputObj).to.equal(nil)
			expectValueFrom(expect, "{ bool: true }", testInputObj).to.equal(nil)
		end)

		it("accepts variable values assuming already coerced", function()
			expectValueFrom(expect, "$var", GraphQLBoolean, {}).to.equal(nil)
			expectValueFrom(expect, "$var", GraphQLBoolean, { var = true }).to.equal(true)
			expectValueFrom(expect, "$var", GraphQLBoolean, { var = NULL }).to.equal(NULL)
			expectValueFrom(expect, "$var", nonNullBool, { var = NULL }).to.equal(nil)
		end)

		it("asserts variables are provided as items in lists", function()
			expectValueFrom(expect, "[ $foo ]", listOfBool, {}).toEqual({ NULL })
			expectValueFrom(expect, "[ $foo ]", listOfNonNullBool, {}).to.equal(nil)
			expectValueFrom(expect, "[ $foo ]", listOfNonNullBool, { foo = true }).toEqual({ true })
			-- Note: variables are expected to have already been coerced, so we
			-- do not expect the singleton wrapping behavior for variables.
			expectValueFrom(expect, "$foo", listOfNonNullBool, { foo = true }).to.equal(true)
			expectValueFrom(expect, "$foo", listOfNonNullBool, {
				foo = { true },
			}).toEqual({ true })
		end)

		it("omits input object fields for unprovided variables", function()
			expectValueFrom(
				expect,
				"{ int: $foo, bool: $foo, requiredBool: true }",
				testInputObj,
				{}
			).toEqual({
				int = 42,
				requiredBool = true,
			})

			expectValueFrom(expect, "{ requiredBool: $foo }", testInputObj, {}).to.equal(nil)

			expectValueFrom(expect, "{ requiredBool: $foo }", testInputObj, { foo = true }).toEqual({
				int = 42,
				requiredBool = true,
			})
		end)
	end)
end
