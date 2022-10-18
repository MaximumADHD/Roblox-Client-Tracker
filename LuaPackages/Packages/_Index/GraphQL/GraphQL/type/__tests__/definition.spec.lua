--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/type/__tests__/definition-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local rootWorkspace = srcWorkspace.Parent
	local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
	local Map = LuauPolyfill.Map
	local Number = LuauPolyfill.Number
	local coerceToTable = LuauPolyfill.coerceToTable

	local NULL = require(srcWorkspace.luaUtils.null)
	local NaN = Number.NaN

	local inspect = require(srcWorkspace.jsutils.inspect).inspect
	local identityFunc = require(srcWorkspace.jsutils.identityFunc).identityFunc

	local parseValue = require(srcWorkspace.language.parser).parseValue

	local definitionImport = require(script.Parent.Parent.definition)
	local GraphQLList = definitionImport.GraphQLList
	local GraphQLNonNull = definitionImport.GraphQLNonNull
	local GraphQLScalarType = definitionImport.GraphQLScalarType
	local GraphQLObjectType = definitionImport.GraphQLObjectType
	local GraphQLInterfaceType = definitionImport.GraphQLInterfaceType
	local GraphQLUnionType = definitionImport.GraphQLUnionType
	local GraphQLEnumType = definitionImport.GraphQLEnumType
	local GraphQLInputObjectType = definitionImport.GraphQLInputObjectType

	local ScalarType = GraphQLScalarType.new({ name = "Scalar" })
	local ObjectType = GraphQLObjectType.new({ name = "Object", fields = {} })
	local InterfaceType = GraphQLInterfaceType.new({ name = "Interface", fields = {} })
	local UnionType = GraphQLUnionType.new({ name = "Union", types = { ObjectType } })
	local EnumType = GraphQLEnumType.new({ name = "Enum", values = { foo = {} } })
	local InputObjectType = GraphQLInputObjectType.new({ name = "InputObject", fields = {} })

	local ListOfScalarsType = GraphQLList.new(ScalarType)
	local NonNullScalarType = GraphQLNonNull.new(ScalarType)
	local ListOfNonNullScalarsType = GraphQLList.new(NonNullScalarType)
	local NonNullListOfScalars = GraphQLNonNull.new(ListOfScalarsType)

	-- istanbul ignore next (Never called and used as a placeholder)
	local dummyFunc = function()
		--[[ empty ]]
	end

	describe("Type System: Scalars", function()
		it("accepts a Scalar type defining serialize", function()
			expect(function()
				return GraphQLScalarType.new({
					name = "SomeScalar",
				})
			end).never.to.throw()
		end)

		it("accepts a Scalar type defining specifiedByUrl", function()
			expect(function()
				return GraphQLScalarType.new({
					name = "SomeScalar",
					specifiedByUrl = "https://example.com/foo_spec",
				})
			end).never.to.throw()
		end)

		it("accepts a Scalar type defining parseValue and parseLiteral", function()
			expect(function()
				return GraphQLScalarType.new({
					name = "SomeScalar",
					parseValue = dummyFunc,
					parseLiteral = dummyFunc,
				})
			end).never.to.throw()
		end)

		it("provides default methods if omitted", function()
			local scalar = GraphQLScalarType.new({
				name = "Foo",
			})

			--[[ ROBLOX deviation: this is not exactly the identifyFunc but rather wrapped by another function
	  		--   because we have to wrap it with another function to handle `self` parameter correctly
			--   but it returns exactly the same object as is passed to it]]
			local value = {}
			expect(scalar:serialize(value)).to.equal(value)
			expect(scalar:serialize(value)).to.equal(identityFunc(value))
			expect(scalar:parseValue(value)).to.equal(value)
			expect(scalar:parseValue(value)).to.equal(identityFunc(value))
			-- expect(scalar.serialize).to.equal(identityFunc)
			-- expect(scalar.parseValue).to.equal(identityFunc)
			expect(scalar.parseLiteral).to.be.a("function")
		end)

		it("use parseValue for parsing literals if parseLiteral omitted", function()
			local scalar = GraphQLScalarType.new({
				name = "Foo",
				parseValue = function(value)
					return "parseValue: " .. inspect(value)
				end,
			})

			expect(scalar:parseLiteral(parseValue("null"))).to.equal("parseValue: null")
			expect(scalar:parseLiteral(parseValue('{ foo: "bar" }'))).to.equal(
				'parseValue: { foo: "bar" }'
			)
			expect(scalar:parseLiteral(parseValue("{ foo: { bar: $var } }"), {
				var = "baz",
			})).to.equal('parseValue: { foo: { bar: "baz" } }')
		end)

		it("rejects a Scalar type without name", function()
			expect(function()
				return GraphQLScalarType.new({})
			end).to.throw("Must provide name.")
		end)

		it("rejects a Scalar type defining serialize with an incorrect type", function()
			expect(function()
				return GraphQLScalarType.new({
					name = "SomeScalar",
					serialize = {},
				})
			end).to.throw(
				'SomeScalar must provide "serialize" function. If this custom Scalar is also used as an input type, ensure "parseValue" and "parseLiteral" functions are also provided.'
			)
		end)

		it("rejects a Scalar type defining parseLiteral but not parseValue", function()
			expect(function()
				return GraphQLScalarType.new({
					name = "SomeScalar",
					parseLiteral = dummyFunc,
				})
			end).to.throw(
				'SomeScalar must provide both "parseValue" and "parseLiteral" functions.'
			)
		end)

		it(
			"rejects a Scalar type defining parseValue and parseLiteral with an incorrect type",
			function()
				expect(function()
					return GraphQLScalarType.new({
						name = "SomeScalar",
						parseValue = {},
						parseLiteral = {},
					})
				end).to.throw(
					'SomeScalar must provide both "parseValue" and "parseLiteral" functions.'
				)
			end
		)

		it("rejects a Scalar type defining specifiedByUrl with an incorrect type", function()
			-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
			expect(function()
				return GraphQLScalarType.new({
					name = "SomeScalar",
					specifiedByUrl = {},
				})
			end).to.throw('SomeScalar must provide "specifiedByUrl" as a string, but got: [].')
		end)
	end)

	describe("Type System: Objects", function()
		it("does not mutate passed field definitions", function()
			local outputFields = {
				field1 = { type = ScalarType },
				field2 = {
					type = ScalarType,
					args = {
						id = { type = ScalarType },
					},
				},
			}
			local testObject1 = GraphQLObjectType.new({
				name = "Test1",
				fields = outputFields,
			})
			local testObject2 = GraphQLObjectType.new({
				name = "Test2",
				fields = outputFields,
			})

			expect(testObject1:getFields()).toEqual(testObject2:getFields())
			expect(outputFields).toEqual({
				field1 = { type = ScalarType },
				field2 = {
					type = ScalarType,
					args = {
						id = { type = ScalarType },
					},
				},
			})

			local inputFields = {
				field1 = { type = ScalarType },
				field2 = { type = ScalarType },
			}
			local testInputObject1 = GraphQLInputObjectType.new({
				name = "Test1",
				fields = inputFields,
			})
			local testInputObject2 = GraphQLInputObjectType.new({
				name = "Test2",
				fields = inputFields,
			})

			expect(testInputObject1:getFields()).toEqual(testInputObject2:getFields())
			expect(inputFields).toEqual({
				field1 = { type = ScalarType },
				field2 = { type = ScalarType },
			})
		end)

		it("defines an object type with deprecated field", function()
			local TypeWithDeprecatedField = GraphQLObjectType.new({
				name = "foo",
				fields = {
					bar = {
						type = ScalarType,
						deprecationReason = "A terrible reason",
					},
					baz = {
						type = ScalarType,
						deprecationReason = "",
					},
				},
			})

			expect(TypeWithDeprecatedField:getFields().bar).toObjectContain({
				name = "bar",
				deprecationReason = "A terrible reason",
			})
			expect(TypeWithDeprecatedField:getFields().baz).toObjectContain({
				name = "baz",
				deprecationReason = "",
			})
		end)

		it("accepts an Object type with a field function", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = function()
					return {
						f = { type = ScalarType },
					}
				end,
			})

			expect(coerceToTable(objType:getFields())).toEqual({
				f = {
					name = "f",
					description = nil,
					type = ScalarType,
					args = {},
					resolve = nil,
					subscribe = nil,
					deprecationReason = nil,
					extensions = nil,
					astNode = nil,
				},
			})
		end)

		it("accepts an Object type with field args", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					f = {
						type = ScalarType,
						args = {
							arg = { type = ScalarType },
						},
					},
				},
			})

			expect(coerceToTable(objType:getFields())).toEqual({
				f = {
					name = "f",
					description = nil,
					type = ScalarType,
					args = {
						{
							name = "arg",
							description = nil,
							type = ScalarType,
							defaultValue = nil,
							deprecationReason = nil,
							extensions = nil,
							astNode = nil,
						},
					},
					resolve = nil,
					subscribe = nil,
					deprecationReason = nil,
					extensions = nil,
					astNode = nil,
				},
			})
		end)

		it("accepts an Object type with array interfaces", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {},
				interfaces = { InterfaceType },
			})

			expect(objType:getInterfaces()).toEqual({ InterfaceType })
		end)

		it("accepts an Object type with interfaces as a function returning an array", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {},
				interfaces = function()
					return { InterfaceType }
				end,
			})

			expect(objType:getInterfaces()).toEqual({ InterfaceType })
		end)

		it("accepts a lambda as an Object field resolver", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					f = {
						type = ScalarType,
						resolve = dummyFunc,
					},
				},
			})

			expect(function()
				return objType:getFields()
			end).never.to.throw()
		end)

		it("rejects an Object type without name", function()
			expect(function()
				return GraphQLObjectType.new({})
			end).to.throw("Must provide name.")
		end)

		-- ROBLOX deviation: in Lua `fields = { f = nil }` is equivalent to `fields = {}`
		-- so we're setting fields to `{ f = "nil" }` as a string is still an invalid value
		it("rejects an Object type field with undefined config", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = { f = "nil" },
			})

			expect(function()
				return objType:getFields()
			end).to.throw("SomeObject.f field config must be an object.")
		end)

		it("rejects an Object type with incorrectly typed fields", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					{ field = ScalarType },
				},
			})

			expect(function()
				return objType:getFields()
			end).to.throw(
				"SomeObject fields must be an object with field names as keys or a function which returns such an object."
			)
		end)

		it("rejects an Object type with a field function that returns incorrect type", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = function()
					return {
						{ field = ScalarType },
					}
				end,
			})

			expect(function()
				return objType:getFields()
			end).to.throw()
		end)

		it("rejects an Object type with incorrectly typed field args", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					badField = {
						type = ScalarType,
						args = {
							{ badArg = ScalarType },
						},
					},
				},
			})

			expect(function()
				return objType:getFields()
			end).to.throw(
				"SomeObject.badField args must be an object with argument names as keys."
			)
		end)

		it("rejects an Object type with incorrectly typed interfaces", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {},
				-- ROBLOX deviation: there is no distinction between empty object and empty array in Lua. We need to pass a non empty object
				interfaces = { key = "value" },
			})

			expect(function()
				return objType:getInterfaces()
			end).to.throw(
				"SomeObject interfaces must be an Array or a function which returns an Array."
			)
		end)

		it(
			"rejects an Object type with interfaces as a function returning an incorrect type",
			function()
				local objType = GraphQLObjectType.new({
					name = "SomeObject",
					fields = {},
					interfaces = function()
						-- ROBLOX deviation: there is no distinction between empty object and empty array in Lua. We need to pass a non empty object
						return { key = "value" }
					end,
				})

				expect(function()
					return objType:getInterfaces()
				end).to.throw(
					"SomeObject interfaces must be an Array or a function which returns an Array."
				)
			end
		)

		it("rejects an empty Object field resolver", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					field = {
						type = ScalarType,
						resolve = {},
					},
				},
			})

			-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
			expect(function()
				return objType:getFields()
			end).to.throw(
				"SomeObject.field field resolver must be a function if provided, but got: []."
			)
		end)

		it("rejects a constant scalar value resolver", function()
			local objType = GraphQLObjectType.new({
				name = "SomeObject",
				fields = {
					field = {
						type = ScalarType,
						resolve = 0,
					},
				},
			})

			expect(function()
				return objType:getFields()
			end).to.throw(
				"SomeObject.field field resolver must be a function if provided, but got: 0."
			)
		end)

		it("rejects an Object type with an incorrect type for isTypeOf", function()
			-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
			expect(function()
				return GraphQLObjectType.new({
					name = "AnotherObject",
					fields = {},
					isTypeOf = {},
				})
			end).to.throw('AnotherObject must provide "isTypeOf" as a function, but got: [].')
		end)
	end)

	describe("Type System: Interfaces", function()
		it("accepts an Interface type defining resolveType", function()
			expect(function()
				return GraphQLInterfaceType.new({
					name = "AnotherInterface",
					fields = {
						f = { type = ScalarType },
					},
				})
			end).never.to.throw()
		end)

		it("accepts an Interface type with an array of interfaces", function()
			local implementing = GraphQLInterfaceType.new({
				name = "AnotherInterface",
				fields = {},
				interfaces = { InterfaceType },
			})

			expect(implementing:getInterfaces()).toEqual({ InterfaceType })
		end)

		it("accepts an Interface type with interfaces as a function returning an array", function()
			local implementing = GraphQLInterfaceType.new({
				name = "AnotherInterface",
				fields = {},
				interfaces = function()
					return { InterfaceType }
				end,
			})

			expect(implementing:getInterfaces()).toEqual({ InterfaceType })
		end)

		it("rejects an Interface type without name", function()
			expect(function()
				return GraphQLInterfaceType.new({})
			end).to.throw("Must provide name.")
		end)

		it("rejects an Interface type with incorrectly typed interfaces", function()
			local objType = GraphQLInterfaceType.new({
				name = "AnotherInterface",
				fields = {},
				-- ROBLOX deviation: there is no distinction between empty object and empty array in Lua. We need to pass a non empty object
				interfaces = { key = "value" },
			})

			expect(function()
				return objType:getInterfaces()
			end).to.throw(
				"AnotherInterface interfaces must be an Array or a function which returns an Array."
			)
		end)

		it(
			"rejects an Interface type with interfaces as a function returning an incorrect type",
			function()
				local objType = GraphQLInterfaceType.new({
					name = "AnotherInterface",
					fields = {},
					interfaces = function()
						-- ROBLOX deviation: there is no distinction between empty object and empty array in Lua. We need to pass a non empty object
						return { key = "value" }
					end,
				})

				expect(function()
					return objType:getInterfaces()
				end).to.throw(
					"AnotherInterface interfaces must be an Array or a function which returns an Array."
				)
			end
		)

		it("rejects an Interface type with an incorrect type for resolveType", function()
			-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
			expect(function()
				return GraphQLInterfaceType.new({
					name = "AnotherInterface",
					fields = {},
					resolveType = {},
				})
			end).to.throw(
				'AnotherInterface must provide "resolveType" as a function, but got: [].'
			)
		end)
	end)

	describe("Type System: Unions", function()
		it("accepts a Union type defining resolveType", function()
			expect(function()
				return GraphQLUnionType.new({
					name = "SomeUnion",
					types = { ObjectType },
				})
			end).never.to.throw()
		end)

		it("accepts a Union type with array types", function()
			local unionType = GraphQLUnionType.new({
				name = "SomeUnion",
				types = { ObjectType },
			})

			expect(unionType:getTypes()).toEqual({ ObjectType })
		end)

		it("accepts a Union type with function returning an array of types", function()
			local unionType = GraphQLUnionType.new({
				name = "SomeUnion",
				types = function()
					return { ObjectType }
				end,
			})

			expect(unionType:getTypes()).toEqual({ ObjectType })
		end)

		it("accepts a Union type without types", function()
			local unionType = GraphQLUnionType.new({
				name = "SomeUnion",
				types = {},
			})

			expect(unionType:getTypes()).toEqual({})
		end)

		it("rejects an Union type without name", function()
			expect(function()
				return GraphQLUnionType.new({})
			end).to.throw("Must provide name.")
		end)

		it("rejects an Union type with an incorrect type for resolveType", function()
			-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
			expect(function()
				return GraphQLUnionType.new({
					name = "SomeUnion",
					types = {},
					resolveType = {},
				})
			end).to.throw('SomeUnion must provide "resolveType" as a function, but got: [].')
		end)

		it("rejects a Union type with incorrectly typed types", function()
			local unionType = GraphQLUnionType.new({
				name = "SomeUnion",
				types = { ObjectType = ObjectType },
			})

			expect(function()
				return unionType:getTypes()
			end).to.throw(
				"Must provide Array of types or a function which returns such an array for Union SomeUnion."
			)
		end)
	end)

	describe("Type System: Enums", function()
		it("defines an enum type with deprecated value", function()
			local EnumTypeWithDeprecatedValue = GraphQLEnumType.new({
				name = "EnumWithDeprecatedValue",
				-- ROBLOX deviation: use Map to guarantee order
				values = Map.new({
					{ "foo", { deprecationReason = "Just because" } },
					{ "bar", { deprecationReason = "" } },
				}),
			})

			local values = EnumTypeWithDeprecatedValue:getValues()
			expect(values[1]).toObjectContain({
				name = "foo",
				deprecationReason = "Just because",
			})
			expect(values[2]).toObjectContain({
				name = "bar",
				deprecationReason = "",
			})
		end)

		it("defines an enum type with a value of `null` and `undefined`", function()
			local EnumTypeWithNullishValue = GraphQLEnumType.new({
				name = "EnumWithNullishValue",
				-- ROBLOX deviation: use Map to guarantee order
				values = Map.new({
					{ "NULL", { value = NULL } },
					{ "NAN", { value = NaN } },
					{ "NO_CUSTOM_VALUE", { value = nil } },
				}),
			})

			expect(EnumTypeWithNullishValue:getValues()).toEqual({
				{
					name = "NULL",
					description = nil,
					value = NULL,
					deprecationReason = nil,
					extensions = nil,
					astNode = nil,
				},
				{
					name = "NAN",
					description = nil,
					value = NaN,
					deprecationReason = nil,
					extensions = nil,
					astNode = nil,
				},
				{
					name = "NO_CUSTOM_VALUE",
					description = nil,
					value = "NO_CUSTOM_VALUE",
					deprecationReason = nil,
					extensions = nil,
					astNode = nil,
				},
			})
		end)

		it("accepts a well defined Enum type with empty value definition", function()
			local enumType = GraphQLEnumType.new({
				name = "SomeEnum",
				values = {
					FOO = {},
					BAR = {},
				},
			})

			expect(enumType:getValue("FOO").value).to.equal("FOO")
			expect(enumType:getValue("BAR").value).to.equal("BAR")
		end)

		it("accepts a well defined Enum type with internal value definition", function()
			local enumType = GraphQLEnumType.new({
				name = "SomeEnum",
				values = {
					FOO = { value = 10 },
					BAR = { value = 20 },
				},
			})

			expect(enumType:getValue("FOO").value).to.equal(10)
			expect(enumType:getValue("BAR").value).to.equal(20)
		end)

		it("rejects an Enum type without name", function()
			expect(function()
				return GraphQLEnumType.new({ values = {} })
			end).to.throw("Must provide name.")
		end)

		it("rejects an Enum type with incorrectly typed values", function()
			expect(function()
				return GraphQLEnumType.new({
					name = "SomeEnum",
					values = {
						{ FOO = 10 },
					},
				})
			end).to.throw("SomeEnum values must be an object with value names as keys.")
		end)

		it("rejects an Enum type with missing value definition", function()
			-- ROBLOX deviation: in Lua `fields = { FOO = nil }` is equivalent to `fields = {}`
			-- so we're setting fields to `{ FOO = "nil" }` as a string is still an invalid value
			expect(function()
				return GraphQLEnumType.new({
					name = "SomeEnum",
					values = { FOO = NULL },
				})
			end).to.throw(
				'SomeEnum.FOO must refer to an object with a "value" key representing an internal value but got: null.'
			)
		end)

		it("rejects an Enum type with incorrectly typed value definition", function()
			expect(function()
				return GraphQLEnumType.new({
					name = "SomeEnum",
					values = { FOO = 10 },
				})
			end).to.throw(
				'SomeEnum.FOO must refer to an object with a "value" key representing an internal value but got: 10.'
			)
		end)
	end)

	describe("Type System: Input Objects", function()
		describe("Input Objects must have fields", function()
			it("accepts an Input Object type with fields", function()
				local inputObjType = GraphQLInputObjectType.new({
					name = "SomeInputObject",
					fields = {
						f = { type = ScalarType },
					},
				})

				expect(coerceToTable(inputObjType:getFields())).toEqual({
					f = {
						name = "f",
						description = nil,
						type = ScalarType,
						defaultValue = nil,
						deprecationReason = nil,
						extensions = nil,
						astNode = nil,
					},
				})
			end)

			it("accepts an Input Object type with a field function", function()
				local inputObjType = GraphQLInputObjectType.new({
					name = "SomeInputObject",
					fields = function()
						return {
							f = { type = ScalarType },
						}
					end,
				})

				expect(coerceToTable(inputObjType:getFields())).toEqual({
					f = {
						name = "f",
						description = nil,
						type = ScalarType,
						defaultValue = nil,
						extensions = nil,
						deprecationReason = nil,
						astNode = nil,
					},
				})
			end)

			it("rejects an Input Object type without name", function()
				expect(function()
					return GraphQLInputObjectType.new({})
				end).to.throw("Must provide name.")
			end)

			it("rejects an Input Object type with incorrect fields", function()
				local inputObjType = GraphQLInputObjectType.new({
					name = "SomeInputObject",
					-- ROBLOX deviation: there is no distinction between empty object and empty array in Lua. We need to pass a non empty array
					fields = { "foo" },
				})

				expect(function()
					return inputObjType:getFields()
				end).to.throw(
					"SomeInputObject fields must be an object with field names as keys or a function which returns such an object."
				)
			end)

			it(
				"rejects an Input Object type with fields function that returns incorrect type",
				function()
					local inputObjType = GraphQLInputObjectType.new({
						name = "SomeInputObject",
						fields = function()
							-- ROBLOX deviation: there is no distinction between empty object and empty array in Lua. We need to pass a non empty array
							return { "foo" }
						end,
					})

					expect(function()
						return inputObjType:getFields()
					end).to.throw(
						"SomeInputObject fields must be an object with field names as keys or a function which returns such an object."
					)
				end
			)
		end)

		describe("Input Object fields must not have resolvers", function()
			it("rejects an Input Object type with resolvers", function()
				local inputObjType = GraphQLInputObjectType.new({
					name = "SomeInputObject",
					fields = {
						f = {
							type = ScalarType,
							resolve = dummyFunc,
						},
					},
				})

				expect(function()
					return inputObjType:getFields()
				end).to.throw(
					"SomeInputObject.f field has a resolve property, but Input Types cannot define resolvers."
				)
			end)

			it("rejects an Input Object type with resolver constant", function()
				local inputObjType = GraphQLInputObjectType.new({
					name = "SomeInputObject",
					fields = {
						f = {
							type = ScalarType,
							resolve = {},
						},
					},
				})

				expect(function()
					return inputObjType:getFields()
				end).to.throw(
					"SomeInputObject.f field has a resolve property, but Input Types cannot define resolvers."
				)
			end)
		end)
	end)

	describe("Type System: List", function()
		local function expectList(expect_, type_)
			return expect_(function()
				return GraphQLList.new(type_)
			end)
		end

		it("accepts an type as item type of list", function()
			expectList(expect, ScalarType).never.to.throw()
			expectList(expect, ObjectType).never.to.throw()
			expectList(expect, UnionType).never.to.throw()
			expectList(expect, InterfaceType).never.to.throw()
			expectList(expect, EnumType).never.to.throw()
			expectList(expect, InputObjectType).never.to.throw()
			expectList(expect, ListOfScalarsType).never.to.throw()
			expectList(expect, NonNullScalarType).never.to.throw()
		end)

		it("rejects a non-type as item type of list", function()
			-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
			expectList(expect, {}).to.throw("Expected [] to be a GraphQL type.")
			-- ROBLOX deviation: no String constructor in Lua
			expectList(expect, NULL).toThrow("Expected null to be a GraphQL type.")
			expectList(expect, nil).to.throw("Expected nil to be a GraphQL type.")
		end)
	end)

	describe("Type System: Non-Null", function()
		local function expectNonNull(expect_, type_)
			return expect_(function()
				return GraphQLNonNull.new(type_)
			end)
		end

		it("accepts an type as nullable type of non-null", function()
			expectNonNull(expect, ScalarType).never.to.throw()
			expectNonNull(expect, ObjectType).never.to.throw()
			expectNonNull(expect, UnionType).never.to.throw()
			expectNonNull(expect, InterfaceType).never.to.throw()
			expectNonNull(expect, EnumType).never.to.throw()
			expectNonNull(expect, InputObjectType).never.to.throw()
			expectNonNull(expect, ListOfScalarsType).never.to.throw()
			expectNonNull(expect, ListOfNonNullScalarsType).never.to.throw()
		end)

		it("rejects a non-type as nullable type of non-null", function()
			expectNonNull(expect, NonNullScalarType).to.throw(
				"Expected Scalar! to be a GraphQL nullable type."
			)
			-- ROBLOX deviation: {} is treated as an Array in Lua so when printed it becomes [] rather than {}
			expectNonNull(expect, {}).to.throw("Expected [] to be a GraphQL nullable type.")
			-- ROBLOX deviation: no String constructor in Lua
			expectNonNull(expect, NULL).to.throw("Expected null to be a GraphQL nullable type.")
			expectNonNull(expect, nil).to.throw("Expected nil to be a GraphQL nullable type.")
		end)
	end)

	describe("Type System: test utility methods", function()
		it("stringifies types", function()
			expect(tostring(ScalarType)).to.equal("Scalar")
			expect(tostring(ObjectType)).to.equal("Object")
			expect(tostring(InterfaceType)).to.equal("Interface")
			expect(tostring(UnionType)).to.equal("Union")
			expect(tostring(EnumType)).to.equal("Enum")
			expect(tostring(InputObjectType)).to.equal("InputObject")
			expect(tostring(NonNullScalarType)).to.equal("Scalar!")
			expect(tostring(ListOfScalarsType)).to.equal("[Scalar]")
			expect(tostring(NonNullListOfScalars)).to.equal("[Scalar]!")
			expect(tostring(ListOfNonNullScalarsType)).to.equal("[Scalar!]")
			expect(tostring(GraphQLList.new(ListOfScalarsType))).to.equal("[[Scalar]]")
		end)

		it("JSON.stringifies types", function()
			-- ROBLOX deviation: no JSON.stringify in Lua
			local JSON = {
				stringify = function(v)
					return '"' .. v:toJSON() .. '"'
				end,
			}

			expect(JSON.stringify(ScalarType)).to.equal('"Scalar"')
			expect(JSON.stringify(ObjectType)).to.equal('"Object"')
			expect(JSON.stringify(InterfaceType)).to.equal('"Interface"')
			expect(JSON.stringify(UnionType)).to.equal('"Union"')
			expect(JSON.stringify(EnumType)).to.equal('"Enum"')
			expect(JSON.stringify(InputObjectType)).to.equal('"InputObject"')
			expect(JSON.stringify(NonNullScalarType)).to.equal('"Scalar!"')
			expect(JSON.stringify(ListOfScalarsType)).to.equal('"[Scalar]"')
			expect(JSON.stringify(NonNullListOfScalars)).to.equal('"[Scalar]!"')
			expect(JSON.stringify(ListOfNonNullScalarsType)).to.equal('"[Scalar!]"')
			expect(JSON.stringify(GraphQLList.new(ListOfScalarsType))).to.equal('"[[Scalar]]"')
		end)

		--[[
			ROBLOX TODO: add Object.toString to luau-polyfill, then we can enable this JS-specific test
			also, serialization to string already handle by global tostring() method
		]]
		itSKIP("Object.toStringifies types", function()
			local function toString(obj)
				return tostring(obj)
			end

			expect(toString(ScalarType)).to.equal("[object GraphQLScalarType]")
			expect(toString(ObjectType)).to.equal("[object GraphQLObjectType]")
			expect(toString(InterfaceType)).to.equal("[object GraphQLInterfaceType]")
			expect(toString(UnionType)).to.equal("[object GraphQLUnionType]")
			expect(toString(EnumType)).to.equal("[object GraphQLEnumType]")
			expect(toString(InputObjectType)).to.equal("[object GraphQLInputObjectType]")
			expect(toString(NonNullScalarType)).to.equal("[object GraphQLNonNull]")
			expect(toString(ListOfScalarsType)).to.equal("[object GraphQLList]")
		end)
	end)
end
