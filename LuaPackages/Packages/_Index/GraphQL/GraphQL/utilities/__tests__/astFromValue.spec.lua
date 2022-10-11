--upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/astFromValue-test.js

return function()
	local utilitiesWorkspace = script.Parent.Parent
	local srcWorkspace = utilitiesWorkspace.Parent
	local rootWorkspace = srcWorkspace.Parent

	local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
	local Map = LuauPolyfill.Map
	local NaN = LuauPolyfill.Number.NaN

	-- ROBLOX deviation: bring in NULL type
	local NULL = require(utilitiesWorkspace.astFromValue).NULL

	local scalarsImport = require(srcWorkspace.type.scalars)
	local GraphQLID = scalarsImport.GraphQLID
	local GraphQLInt = scalarsImport.GraphQLInt
	local GraphQLFloat = scalarsImport.GraphQLFloat
	local GraphQLString = scalarsImport.GraphQLString
	local GraphQLBoolean = scalarsImport.GraphQLBoolean
	local definitionImport = require(srcWorkspace.type.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local GraphQLScalarType = definitionImport.GraphQLScalarType
	local GraphQLEnumType = definitionImport.GraphQLEnumType
	local GraphQLInputObjectType = definitionImport.GraphQLInputObjectType

	local astFromValue = require(utilitiesWorkspace.astFromValue).astFromValue

	describe("astFromValue", function()
		it("converts boolean values to ASTs", function()
			expect(astFromValue(true, GraphQLBoolean)).toEqual({
				kind = "BooleanValue",
				value = true,
			})

			expect(astFromValue(false, GraphQLBoolean)).toEqual({
				kind = "BooleanValue",
				value = false,
			})

			expect(astFromValue(nil, GraphQLBoolean)).toEqual(NULL)

			-- ROBLOX deviation: use NULL const to deferentiate undefined and null
			expect(astFromValue(NULL, GraphQLBoolean)).toEqual({
				kind = "NullValue",
			})

			expect(astFromValue(0, GraphQLBoolean)).toEqual({
				kind = "BooleanValue",
				value = false,
			})

			expect(astFromValue(1, GraphQLBoolean)).toEqual({
				kind = "BooleanValue",
				value = true,
			})

			local NonNullBoolean = GraphQLNonNull.new(GraphQLBoolean)
			expect(astFromValue(0, NonNullBoolean)).toEqual({
				kind = "BooleanValue",
				value = false,
			})
		end)

		it("converts Int values to Int ASTs", function()
			expect(astFromValue(-1, GraphQLInt)).toEqual({
				kind = "IntValue",
				value = "-1",
			})

			expect(astFromValue(123, GraphQLInt)).toEqual({
				kind = "IntValue",
				value = "123",
			})

			expect(astFromValue(1e4, GraphQLInt)).toEqual({
				kind = "IntValue",
				value = "10000",
			})

			-- GraphQL spec does not allow coercing non-integer values to Int to avoid
			-- accidental data loss.
			expect(function()
				return astFromValue(123.5, GraphQLInt)
			end).toThrow("Int cannot represent non-integer value: 123.5")

			-- Note: outside the bounds of 32bit signed int.
			expect(function()
				return astFromValue(1e40, GraphQLInt)
				-- ROBLOX deviation: value is represented as 1.e+40 instead of 1e+40
			end).toThrow("Int cannot represent non 32-bit signed integer value: 1.e+40")

			expect(function()
				return astFromValue(NaN, GraphQLInt)
			end).toThrow("Int cannot represent non-integer value: NaN")
		end)

		it("converts Float values to Int/Float ASTs", function()
			expect(astFromValue(-1, GraphQLFloat)).toEqual({
				kind = "IntValue",
				value = "-1",
			})

			expect(astFromValue(123, GraphQLFloat)).toEqual({
				kind = "IntValue",
				value = "123",
			})

			expect(astFromValue(123.5, GraphQLFloat)).toEqual({
				kind = "FloatValue",
				value = "123.5",
			})

			expect(astFromValue(1e4, GraphQLFloat)).toEqual({
				kind = "IntValue",
				value = "10000",
			})

			expect(astFromValue(1e40, GraphQLFloat)).toEqual({
				kind = "FloatValue",
				-- ROBLOX deviation: value is represented as 1.e+40 instead of 1e+40
				value = "1.e+40",
			})
		end)

		it("converts String values to String ASTs", function()
			expect(astFromValue("hello", GraphQLString)).toEqual({
				kind = "StringValue",
				value = "hello",
			})

			expect(astFromValue("VALUE", GraphQLString)).toEqual({
				kind = "StringValue",
				value = "VALUE",
			})

			expect(astFromValue("VA\nLUE", GraphQLString)).toEqual({
				kind = "StringValue",
				value = "VA\nLUE",
			})

			expect(astFromValue(123, GraphQLString)).toEqual({
				kind = "StringValue",
				value = "123",
			})

			expect(astFromValue(false, GraphQLString)).toEqual({
				kind = "StringValue",
				value = "false",
			})

			-- ROBLOX deviation: use NULL const to deferentiate undefined and null
			expect(astFromValue(NULL, GraphQLString)).toEqual({
				kind = "NullValue",
			})

			expect(astFromValue(nil, GraphQLString)).toEqual(NULL)
		end)

		it("converts ID values to Int/String ASTs", function()
			expect(astFromValue("hello", GraphQLID)).toEqual({
				kind = "StringValue",
				value = "hello",
			})

			expect(astFromValue("VALUE", GraphQLID)).toEqual({
				kind = "StringValue",
				value = "VALUE",
			})

			-- Note: EnumValues cannot contain non-identifier characters
			expect(astFromValue("VA\nLUE", GraphQLID)).toEqual({
				kind = "StringValue",
				value = "VA\nLUE",
			})

			-- Note: IntValues are used when possible.
			expect(astFromValue(-1, GraphQLID)).toEqual({
				kind = "IntValue",
				value = "-1",
			})

			expect(astFromValue(123, GraphQLID)).toEqual({
				kind = "IntValue",
				value = "123",
			})

			expect(astFromValue("123", GraphQLID)).toEqual({
				kind = "IntValue",
				value = "123",
			})

			expect(astFromValue("01", GraphQLID)).toEqual({
				kind = "StringValue",
				value = "01",
			})

			expect(function()
				return astFromValue(false, GraphQLID)
			end).toThrow("ID cannot represent value: false")

			-- ROBLOX deviation: use NULL const to deferentiate undefined and null
			expect(astFromValue(NULL, GraphQLID)).toEqual({
				kind = "NullValue",
			})

			expect(astFromValue(nil, GraphQLID)).toEqual(NULL)
		end)

		it("converts using serialize from a custom scalar type", function()
			local passthroughScalar = GraphQLScalarType.new({
				name = "PassthroughScalar",
				serialize = function(value)
					return value
				end,
			})

			expect(astFromValue("value", passthroughScalar)).toEqual({
				kind = "StringValue",
				value = "value",
			})

			expect(function()
				return astFromValue(NaN, passthroughScalar)
			end).toThrow("Cannot convert value to AST: NaN.")
			expect(function()
				return astFromValue(math.huge, passthroughScalar)
			end).toThrow("Cannot convert value to AST: Infinity.")

			local returnNullScalar = GraphQLScalarType.new({
				name = "ReturnNullScalar",
				serialize = function()
					return NULL
				end,
			})

			expect(astFromValue("value", returnNullScalar)).to.equal(NULL)

			local SomeClass = {}
			SomeClass.__index = SomeClass
			function SomeClass.new()
				-- ROBLOX deviation: Lua can't distinguish an empty object from an empty array
				local self = { state = true }
				return setmetatable(self, SomeClass)
			end

			local returnCustomClassScalar = GraphQLScalarType.new({
				name = "ReturnCustomClassScalar",
				serialize = function()
					return SomeClass.new()
				end,
			})

			expect(function()
				return astFromValue("value", returnCustomClassScalar)
				-- ROBLOX deviation: Lua can't distinguish an empty object from an empty array
			end).toThrow("Cannot convert value to AST: { state: true }.")
		end)

		it("does not converts NonNull values to NullValue", function()
			local NonNullBoolean = GraphQLNonNull.new(GraphQLBoolean)
			expect(astFromValue(NULL, NonNullBoolean)).toEqual(NULL)
		end)

		local complexValue = {
			someArbitrary = "complexValue",
		}

		local myEnum = GraphQLEnumType.new({
			name = "MyEnum",
			values = {
				HELLO = {},
				GOODBYE = {},
				COMPLEX = { value = complexValue },
			},
		})

		it("converts string values to Enum ASTs if possible", function()
			expect(astFromValue("HELLO", myEnum)).toEqual({
				kind = "EnumValue",
				value = "HELLO",
			})

			expect(astFromValue(complexValue, myEnum)).toEqual({
				kind = "EnumValue",
				value = "COMPLEX",
			})

			-- Note: case sensitive
			expect(function()
				return astFromValue("hello", myEnum)
			end).toThrow('Enum "MyEnum" cannot represent value: "hello"')

			-- Note: Not a valid enum value
			expect(function()
				return astFromValue("UNKNOWN_VALUE", myEnum)
			end).toThrow('Enum "MyEnum" cannot represent value: "UNKNOWN_VALUE"')
		end)

		it("converts array values to List ASTs", function()
			expect(astFromValue({
				"FOO",
				"BAR",
			}, GraphQLList.new(GraphQLString))).toEqual({
				kind = "ListValue",
				values = {
					{
						kind = "StringValue",
						value = "FOO",
					},
					{
						kind = "StringValue",
						value = "BAR",
					},
				},
			})

			expect(astFromValue({
				"HELLO",
				"GOODBYE",
			}, GraphQLList.new(myEnum))).toEqual({
				kind = "ListValue",
				values = {
					{
						kind = "EnumValue",
						value = "HELLO",
					},
					{
						kind = "EnumValue",
						value = "GOODBYE",
					},
				},
			})

			-- ROBLOX FIXME: implement generator like solution (generators are Iterable in JS)
			-- function* listGenerator() {
			-- local function listGenerator()
			-- yield 1;
			-- yield 2;
			-- yield 3;
			-- end

			-- expect(astFromValue(listGenerator(), GraphQLList.new(GraphQLInt))).toEqual({
			-- 	kind = "ListValue",
			-- 	values = {
			-- 		{
			-- 			kind = "IntValue",
			-- 			value = "1",
			-- 		},
			-- 		{
			-- 			kind = "IntValue",
			-- 			value = "2",
			-- 		},
			-- 		{
			-- 			kind = "IntValue",
			-- 			value = "3",
			-- 		},
			-- 	},
			-- })
		end)

		it("converts list singletons", function()
			expect(astFromValue("FOO", GraphQLList.new(GraphQLString))).toEqual({
				kind = "StringValue",
				value = "FOO",
			})
		end)

		it("skip invalid list items", function()
			local ast = astFromValue({
				"FOO",
				nil,
				"BAR",
			}, GraphQLList.new(GraphQLNonNull.new(GraphQLString)))

			expect(ast).toEqual({
				kind = "ListValue",
				values = {
					{
						kind = "StringValue",
						value = "FOO",
					},
					{
						kind = "StringValue",
						value = "BAR",
					},
				},
			})
		end)

		local inputObj = GraphQLInputObjectType.new({
			name = "MyInputObj",
			fields = Map.new({
				{ "foo", { type = GraphQLFloat } },
				{ "bar", { type = myEnum } },
			}),
		})

		it("converts input objects", function()
			local result = astFromValue({
				foo = 3,
				bar = "HELLO",
			}, inputObj)
			expect(result).toEqual({
				kind = "ObjectValue",
				fields = {
					{
						kind = "ObjectField",
						name = {
							kind = "Name",
							value = "foo",
						},
						value = {
							kind = "IntValue",
							value = "3",
						},
					},
					{
						kind = "ObjectField",
						name = {
							kind = "Name",
							value = "bar",
						},
						value = {
							kind = "EnumValue",
							value = "HELLO",
						},
					},
				},
			})
		end)

		it("converts input objects with explicit nulls", function()
			local value = astFromValue({ foo = NULL }, inputObj)
			expect(value).toEqual({
				kind = "ObjectValue",
				fields = {
					{
						kind = "ObjectField",
						name = {
							kind = "Name",
							value = "foo",
						},
						value = {
							kind = "NullValue",
						},
					},
				},
			})
		end)

		it("does not converts non-object values as input objects", function()
			expect(astFromValue(5, inputObj)).to.equal(NULL)
		end)
	end)
end
