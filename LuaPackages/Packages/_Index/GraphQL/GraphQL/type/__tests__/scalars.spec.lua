--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/type/__tests__/scalars-test.js

local rootWorkspace = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local NaN = LuauPolyfill.Number.NaN

local Infinity = math.huge
local parser = require(script.Parent.Parent.Parent.language.parser)
local parseValueToAST = parser.parseValue
local scalars = require(script.Parent.Parent.scalars)
local GraphQLID = scalars.GraphQLID
local GraphQLInt = scalars.GraphQLInt
local GraphQLFloat = scalars.GraphQLFloat
local GraphQLString = scalars.GraphQLString
local GraphQLBoolean = scalars.GraphQLBoolean

return function()
	describe("Type System: Specified scalar types", function()
		describe("GraphQLInt", function()
			it("parseValue", function()
				local function parseValue(value)
					return GraphQLInt:parseValue(value)
				end

				expect(parseValue(1)).to.equal(1)
				expect(parseValue(0)).to.equal(0)
				expect(parseValue(-1)).to.equal(-1)
				expect(function()
					return parseValue(9876504321)
				end).toThrow("Int cannot represent non 32-bit signed integer value: 9876504321")
				expect(function()
					return parseValue(-9876504321)
				end).toThrow(
					"Int cannot represent non 32-bit signed integer value: -9876504321"
				)
				expect(function()
					return parseValue(0.1)
				end).toThrow("Int cannot represent non-integer value: 0.1")
				expect(function()
					return parseValue(NaN)
				end).toThrow("Int cannot represent non-integer value: NaN")
				expect(function()
					return parseValue(Infinity)
				end).toThrow("Int cannot represent non-integer value: Infinity")
				-- ROBLOX deviation: no undefined in Lua
				-- expect(function()
				--     return parseValue(nil)
				-- end).toThrow('Int cannot represent non-integer value: undefined')
				expect(function()
					return parseValue(nil)
				end).toThrow("Int cannot represent non-integer value: nil")
				expect(function()
					return parseValue("")
				end).toThrow('Int cannot represent non-integer value: ""')
				expect(function()
					return parseValue("123")
				end).toThrow('Int cannot represent non-integer value: "123"')
				expect(function()
					return parseValue(false)
				end).toThrow("Int cannot represent non-integer value: false")
				expect(function()
					return parseValue(true)
				end).toThrow("Int cannot represent non-integer value: true")
				expect(function()
					return parseValue({ 1 })
				end).toThrow("Int cannot represent non-integer value: [1]")
				expect(function()
					return parseValue({ value = 1 })
				end).toThrow("Int cannot represent non-integer value: { value: 1 }")
			end)

			it("parseLiteral", function()
				local function parseLiteral(str)
					return GraphQLInt:parseLiteral(parseValueToAST(str))
				end

				expect(parseLiteral("1")).to.equal(1)
				expect(parseLiteral("0")).to.equal(0)
				expect(parseLiteral("-1")).to.equal(-1)
				expect(function()
					return parseLiteral("9876504321")
				end).toThrow("Int cannot represent non 32-bit signed integer value: 9876504321")
				expect(function()
					return parseLiteral("-9876504321")
				end).toThrow(
					"Int cannot represent non 32-bit signed integer value: -9876504321"
				)
				expect(function()
					return parseLiteral("1.0")
				end).toThrow("Int cannot represent non-integer value: 1.0")
				expect(function()
					return parseLiteral("null")
				end).toThrow("Int cannot represent non-integer value: null")
				expect(function()
					return parseLiteral('""')
				end).toThrow('Int cannot represent non-integer value: ""')
				expect(function()
					return parseLiteral('"123"')
				end).toThrow('Int cannot represent non-integer value: "123"')
				expect(function()
					return parseLiteral("false")
				end).toThrow("Int cannot represent non-integer value: false")
				expect(function()
					return parseLiteral("[1]")
				end).toThrow("Int cannot represent non-integer value: [1]")
				expect(function()
					return parseLiteral("{ value: 1 }")
				end).toThrow("Int cannot represent non-integer value: {value: 1}")
				expect(function()
					return parseLiteral("ENUM_VALUE")
				end).toThrow("Int cannot represent non-integer value: ENUM_VALUE")
				expect(function()
					return parseLiteral("$var")
				end).toThrow("Int cannot represent non-integer value: $var")
			end)

			it("serialize", function()
				local function serialize(value)
					return GraphQLInt:serialize(value)
				end

				expect(serialize(1)).to.equal(1)
				expect(serialize("123")).to.equal(123)
				expect(serialize(0)).to.equal(0)
				expect(serialize(-1)).to.equal(-1)
				expect(serialize(1e5)).to.equal(100000)
				expect(serialize(false)).to.equal(0)
				expect(serialize(true)).to.equal(1)

				local customValueOfObj = {
					value = 5,
					-- ROBLOX deviation: pass self in explicitly
					valueOf = function(self)
						return self.value
					end,
				}

				expect(serialize(customValueOfObj)).to.equal(5)
				-- The GraphQL specification does not allow serializing non-integer values
				-- as Int to avoid accidental data loss.
				expect(function()
					return serialize(0.1)
				end).toThrow("Int cannot represent non-integer value: 0.1")
				expect(function()
					return serialize(1.1)
				end).toThrow("Int cannot represent non-integer value: 1.1")
				expect(function()
					return serialize(-1.1)
				end).toThrow("Int cannot represent non-integer value: -1.1")
				expect(function()
					return serialize("-1.1")
				end).toThrow('Int cannot represent non-integer value: "-1.1"')

				-- Maybe a safe JavaScript int, but bigger than 2^32, so not
				-- representable as a GraphQL Int
				expect(function()
					return serialize(9876504321)
				end).toThrow("Int cannot represent non 32-bit signed integer value: 9876504321")
				expect(function()
					return serialize(-9876504321)
				end).toThrow(
					"Int cannot represent non 32-bit signed integer value: -9876504321"
				)

				-- Too big to represent as an Int in JavaScript or GraphQL
				expect(function()
					return serialize(1e100)
				end).toThrow(
					--ROBLOX deviation: tostring formats number different than JS
					"Int cannot represent non 32-bit signed integer value: " .. tostring(1e+100)
				)
				expect(function()
					return serialize(-1e100)
				end).toThrow(
					--ROBLOX deviation: tostring formats number different than JS
					"Int cannot represent non 32-bit signed integer value: " .. tostring(-1e+100)
				)
				expect(function()
					return serialize("one")
				end).toThrow('Int cannot represent non-integer value: "one"')

				-- Doesn't represent number
				expect(function()
					return serialize("")
				end).toThrow('Int cannot represent non-integer value: ""')
				expect(function()
					return serialize(NaN)
				end).toThrow("Int cannot represent non-integer value: NaN")
				expect(function()
					return serialize(Infinity)
				end).toThrow("Int cannot represent non-integer value: Infinity")
				expect(function()
					return serialize({ 5 })
				end).toThrow("Int cannot represent non-integer value: [5]")
			end)
		end)

		describe("GraphQLFloat", function()
			it("parseValue", function()
				local function parseValue(value)
					return GraphQLFloat:parseValue(value)
				end

				expect(parseValue(1)).to.equal(1)
				expect(parseValue(0)).to.equal(0)
				expect(parseValue(-1)).to.equal(-1)
				expect(parseValue(0.1)).to.equal(0.1)
				expect(parseValue(math.pi)).to.equal(math.pi)
				expect(function()
					return parseValue(NaN)
				end).toThrow("Float cannot represent non numeric value: NaN")
				expect(function()
					return parseValue(Infinity)
				end).toThrow("Float cannot represent non numeric value: Infinity")
				-- ROBLOX deviation: no undefined in Lua
				-- expect(function()
				--     return parseValue(nil)
				-- end).toThrow('Float cannot represent non numeric value: undefined')
				expect(function()
					return parseValue(nil)
				end).toThrow("Float cannot represent non numeric value: nil")
				expect(function()
					return parseValue("")
				end).toThrow('Float cannot represent non numeric value: ""')
				expect(function()
					return parseValue("123")
				end).toThrow('Float cannot represent non numeric value: "123"')
				expect(function()
					return parseValue("123.5")
				end).toThrow('Float cannot represent non numeric value: "123.5"')
				expect(function()
					return parseValue(false)
				end).toThrow("Float cannot represent non numeric value: false")
				expect(function()
					return parseValue(true)
				end).toThrow("Float cannot represent non numeric value: true")
				expect(function()
					return parseValue({ 0.1 })
				end).toThrow("Float cannot represent non numeric value: [0.1]")
				expect(function()
					return parseValue({ value = 0.1 })
				end).toThrow("Float cannot represent non numeric value: { value: 0.1 }")
			end)

			it("parseLiteral", function()
				local function parseLiteral(str)
					return GraphQLFloat:parseLiteral(parseValueToAST(str))
				end

				expect(parseLiteral("1")).to.equal(1)
				expect(parseLiteral("0")).to.equal(0)
				expect(parseLiteral("-1")).to.equal(-1)
				expect(parseLiteral("0.1")).to.equal(0.1)
				expect(parseLiteral(tostring(math.pi))).to.be.near(math.pi)
				expect(function()
					return parseLiteral("null")
				end).toThrow("Float cannot represent non numeric value: null")
				expect(function()
					return parseLiteral('""')
				end).toThrow('Float cannot represent non numeric value: ""')
				expect(function()
					return parseLiteral('"123"')
				end).toThrow('Float cannot represent non numeric value: "123"')
				expect(function()
					return parseLiteral('"123.5"')
				end).toThrow('Float cannot represent non numeric value: "123.5"')
				expect(function()
					return parseLiteral("false")
				end).toThrow("Float cannot represent non numeric value: false")
				expect(function()
					return parseLiteral("[0.1]")
				end).toThrow("Float cannot represent non numeric value: [0.1]")
				expect(function()
					return parseLiteral("{ value: 0.1 }")
				end).toThrow("Float cannot represent non numeric value: {value: 0.1}")
				expect(function()
					return parseLiteral("ENUM_VALUE")
				end).toThrow("Float cannot represent non numeric value: ENUM_VALUE")
				expect(function()
					return parseLiteral("$var")
				end).toThrow("Float cannot represent non numeric value: $var")
			end)

			it("serialize", function()
				local function serialize(value)
					return GraphQLFloat:serialize(value)
				end

				expect(serialize(1)).to.equal(1)
				expect(serialize(0)).to.equal(0)
				expect(serialize("123.5")).to.equal(123.5)
				expect(serialize(-1)).to.equal(-1)
				expect(serialize(0.1)).to.equal(0.1)
				expect(serialize(1.1)).to.equal(1.1)
				expect(serialize(-1.1)).to.equal(-1.1)
				expect(serialize("-1.1")).to.equal(-1.1)
				expect(serialize(false)).to.equal(0)
				expect(serialize(true)).to.equal(1)

				local customValueOfObj = {
					value = 5.5,
					-- ROBLOX deviation: pass self in expicitly
					valueOf = function(self)
						return self.value
					end,
				}

				expect(serialize(customValueOfObj)).to.equal(5.5)
				expect(function()
					return serialize(NaN)
				end).toThrow("Float cannot represent non numeric value: NaN")
				expect(function()
					return serialize(Infinity)
				end).toThrow("Float cannot represent non numeric value: Infinity")
				expect(function()
					return serialize("one")
				end).toThrow('Float cannot represent non numeric value: "one"')
				expect(function()
					return serialize("")
				end).toThrow('Float cannot represent non numeric value: ""')
				expect(function()
					return serialize({ 5 })
				end).toThrow("Float cannot represent non numeric value: [5]")
			end)
		end)

		describe("GraphQLString", function()
			it("parseValue", function()
				local function parseValue(value)
					return GraphQLString:parseValue(value)
				end

				expect(parseValue("foo")).to.equal("foo")
				-- ROBLOX deviation: no undefined in Lua
				-- expect(function()
				--     return parseValue(nil)
				-- end).toThrow('String cannot represent a non string value: undefined')
				expect(function()
					return parseValue(nil)
				end).toThrow("String cannot represent a non string value: nil")
				expect(function()
					return parseValue(1)
				end).toThrow("String cannot represent a non string value: 1")
				expect(function()
					return parseValue(NaN)
				end).toThrow("String cannot represent a non string value: NaN")
				expect(function()
					return parseValue(false)
				end).toThrow("String cannot represent a non string value: false")
				expect(function()
					return parseValue({
						"foo",
					})
				end).toThrow('String cannot represent a non string value: ["foo"]')
				expect(function()
					return parseValue({
						value = "foo",
					})
				end).toThrow('String cannot represent a non string value: { value: "foo" }')
			end)

			it("parseLiteral", function()
				local function parseLiteral(str)
					return GraphQLString:parseLiteral(parseValueToAST(str))
				end

				expect(parseLiteral('"foo"')).to.equal("foo")
				expect(parseLiteral('"""bar"""')).to.equal("bar")
				expect(function()
					return parseLiteral("null")
				end).toThrow("String cannot represent a non string value: null")
				expect(function()
					return parseLiteral("1")
				end).toThrow("String cannot represent a non string value: 1")
				expect(function()
					return parseLiteral("0.1")
				end).toThrow("String cannot represent a non string value: 0.1")
				expect(function()
					return parseLiteral("false")
				end).toThrow("String cannot represent a non string value: false")
				expect(function()
					return parseLiteral('["foo"]')
				end).toThrow('String cannot represent a non string value: ["foo"]')
				expect(function()
					return parseLiteral('{ value: "foo" }')
				end).toThrow('String cannot represent a non string value: {value: "foo"}')
				expect(function()
					return parseLiteral("ENUM_VALUE")
				end).toThrow("String cannot represent a non string value: ENUM_VALUE")
				expect(function()
					return parseLiteral("$var")
				end).toThrow("String cannot represent a non string value: $var")
			end)

			it("serialize", function()
				local function serialize(value)
					return GraphQLString:serialize(value)
				end

				expect(serialize("string")).to.equal("string")
				expect(serialize(1)).to.equal("1")
				expect(serialize(-1.1)).to.equal("-1.1")
				expect(serialize(true)).to.equal("true")
				expect(serialize(false)).to.equal("false")

				local valueOf = function()
					return "valueOf string"
				end
				local toJSON = function()
					return "toJSON string"
				end
				local valueOfAndToJSONValue = {
					valueOf = valueOf,
					toJSON = toJSON,
				}

				expect(serialize(valueOfAndToJSONValue)).to.equal("valueOf string")

				local onlyToJSONValue = { toJSON = toJSON }

				expect(serialize(onlyToJSONValue)).to.equal("toJSON string")
				expect(function()
					return serialize(NaN)
				end).toThrow("String cannot represent value: NaN")
				expect(function()
					return serialize({ 1 })
				end).toThrow("String cannot represent value: [1]")

				-- ROBLOX deviation: object needs to be non-empty to distinguish from array
				local badObjValue = { key = "value" }

				expect(function()
					return serialize(badObjValue)
				end).toThrow('String cannot represent value: { key: "value" }')

				local badValueOfObjValue = {
					valueOf = "valueOf string",
				}

				expect(function()
					return serialize(badValueOfObjValue)
				end).toThrow('String cannot represent value: { valueOf: "valueOf string" }')
			end)
		end)

		describe("GraphQLBoolean", function()
			it("parseValue", function()
				local function parseValue(value)
					return GraphQLBoolean:parseValue(value)
				end

				expect(parseValue(true)).to.equal(true)
				expect(parseValue(false)).to.equal(false)
				-- ROBLOX deviation: no undefined in Lua
				-- expect(function()
				--     return parseValue(nil)
				-- end).toThrow('Boolean cannot represent a non boolean value: undefined')
				expect(function()
					return parseValue(nil)
				end).toThrow("Boolean cannot represent a non boolean value: nil")
				expect(function()
					return parseValue(0)
				end).toThrow("Boolean cannot represent a non boolean value: 0")
				expect(function()
					return parseValue(1)
				end).toThrow("Boolean cannot represent a non boolean value: 1")
				expect(function()
					return parseValue(NaN)
				end).toThrow("Boolean cannot represent a non boolean value: NaN")
				expect(function()
					return parseValue("")
				end).toThrow('Boolean cannot represent a non boolean value: ""')
				expect(function()
					return parseValue("false")
				end).toThrow('Boolean cannot represent a non boolean value: "false"')
				expect(function()
					return parseValue({ false })
				end).toThrow("Boolean cannot represent a non boolean value: [false]")
				expect(function()
					return parseValue({ value = false })
				end).toThrow("Boolean cannot represent a non boolean value: { value: false }")
			end)

			it("parseLiteral", function()
				local function parseLiteral(str)
					return GraphQLBoolean:parseLiteral(parseValueToAST(str))
				end

				expect(parseLiteral("true")).to.equal(true)
				expect(parseLiteral("false")).to.equal(false)
				expect(function()
					return parseLiteral("null")
				end).toThrow("Boolean cannot represent a non boolean value: null")
				expect(function()
					return parseLiteral("0")
				end).toThrow("Boolean cannot represent a non boolean value: 0")
				expect(function()
					return parseLiteral("1")
				end).toThrow("Boolean cannot represent a non boolean value: 1")
				expect(function()
					return parseLiteral("0.1")
				end).toThrow("Boolean cannot represent a non boolean value: 0.1")
				expect(function()
					return parseLiteral('""')
				end).toThrow('Boolean cannot represent a non boolean value: ""')
				expect(function()
					return parseLiteral('"false"')
				end).toThrow('Boolean cannot represent a non boolean value: "false"')
				expect(function()
					return parseLiteral("[false]")
				end).toThrow("Boolean cannot represent a non boolean value: [false]")
				expect(function()
					return parseLiteral("{ value: false }")
				end).toThrow("Boolean cannot represent a non boolean value: {value: false}")
				expect(function()
					return parseLiteral("ENUM_VALUE")
				end).toThrow("Boolean cannot represent a non boolean value: ENUM_VALUE")
				expect(function()
					return parseLiteral("$var")
				end).toThrow("Boolean cannot represent a non boolean value: $var")
			end)

			it("serialize", function()
				local function serialize(value)
					return GraphQLBoolean:serialize(value)
				end

				expect(serialize(1)).to.equal(true)
				expect(serialize(0)).to.equal(false)
				expect(serialize(true)).to.equal(true)
				expect(serialize(false)).to.equal(false)
				expect(serialize({
					value = true,
					-- ROBLOX deviation: pass self in explicitly
					valueOf = function(self)
						return self.value
					end,
				})).to.equal(true)
				expect(function()
					return serialize(NaN)
				end).toThrow("Boolean cannot represent a non boolean value: NaN")
				expect(function()
					return serialize("")
				end).toThrow('Boolean cannot represent a non boolean value: ""')
				expect(function()
					return serialize("true")
				end).toThrow('Boolean cannot represent a non boolean value: "true"')
				expect(function()
					return serialize({ false })
				end).toThrow("Boolean cannot represent a non boolean value: [false]")
				-- ROBLOX deviation: this is meant to test an array, but we need a single element to distinguish it from a table
				expect(function()
					return serialize({ 31337 })
				end).toThrow("Boolean cannot represent a non boolean value: [31337]")
			end)
		end)

		describe("GraphQLID", function()
			it("parseValue", function()
				local function parseValue(value)
					return GraphQLID:parseValue(value)
				end

				expect(parseValue("")).to.equal("")
				expect(parseValue("1")).to.equal("1")
				expect(parseValue("foo")).to.equal("foo")
				expect(parseValue(1)).to.equal("1")
				expect(parseValue(0)).to.equal("0")
				expect(parseValue(-1)).to.equal("-1")

				-- Maximum and minimum safe numbers in JS
				expect(parseValue(9007199254740991)).to.equal("9007199254740991")
				expect(parseValue(-9007199254740991)).to.equal("-9007199254740991")
				-- ROBLOX deviation: no undefined in Lua
				-- expect(function()
				--     return parseValue(nil)
				-- end).toThrow('ID cannot represent value: undefined')
				expect(function()
					return parseValue(nil)
				end).toThrow("ID cannot represent value: nil")
				expect(function()
					return parseValue(0.1)
				end).toThrow("ID cannot represent value: 0.1")
				expect(function()
					return parseValue(NaN)
				end).toThrow("ID cannot represent value: NaN")
				expect(function()
					return parseValue(Infinity)
				end).toThrow("ID cannot represent value: Inf")
				expect(function()
					return parseValue(false)
				end).toThrow("ID cannot represent value: false")
				expect(function()
					return GraphQLID:parseValue({
						"1",
					})
				end).toThrow('ID cannot represent value: ["1"]')
				expect(function()
					return GraphQLID:parseValue({
						value = "1",
					})
				end).toThrow('ID cannot represent value: { value: "1" }')
			end)

			it("parseLiteral", function()
				local function parseLiteral(str)
					return GraphQLID:parseLiteral(parseValueToAST(str))
				end

				expect(parseLiteral('""')).to.equal("")
				expect(parseLiteral('"1"')).to.equal("1")
				expect(parseLiteral('"foo"')).to.equal("foo")
				expect(parseLiteral('"""foo"""')).to.equal("foo")
				expect(parseLiteral("1")).to.equal("1")
				expect(parseLiteral("0")).to.equal("0")
				expect(parseLiteral("-1")).to.equal("-1")

				-- Support arbitrary long numbers even if they can't be represented in JS
				expect(parseLiteral("90071992547409910")).to.equal("90071992547409910")
				expect(parseLiteral("-90071992547409910")).to.equal("-90071992547409910")
				expect(function()
					return parseLiteral("null")
				end).toThrow("ID cannot represent a non-string and non-integer value: null")
				expect(function()
					return parseLiteral("0.1")
				end).toThrow("ID cannot represent a non-string and non-integer value: 0.1")
				expect(function()
					return parseLiteral("false")
				end).toThrow("ID cannot represent a non-string and non-integer value: false")
				expect(function()
					return parseLiteral('["1"]')
				end).toThrow('ID cannot represent a non-string and non-integer value: ["1"]')
				expect(function()
					return parseLiteral('{ value: "1" }')
				end).toThrow(
					'ID cannot represent a non-string and non-integer value: {value: "1"}'
				)
				expect(function()
					return parseLiteral("ENUM_VALUE")
				end).toThrow(
					"ID cannot represent a non-string and non-integer value: ENUM_VALUE"
				)
				expect(function()
					return parseLiteral("$var")
				end).toThrow("ID cannot represent a non-string and non-integer value: $var")
			end)

			it("serialize", function()
				local function serialize(value)
					return GraphQLID:serialize(value)
				end

				expect(serialize("string")).to.equal("string")
				expect(serialize("false")).to.equal("false")
				expect(serialize("")).to.equal("")
				expect(serialize(123)).to.equal("123")
				expect(serialize(0)).to.equal("0")
				expect(serialize(-1)).to.equal("-1")

				local valueOf = function()
					return "valueOf ID"
				end
				local toJSON = function()
					return "toJSON ID"
				end
				local valueOfAndToJSONValue = {
					valueOf = valueOf,
					toJSON = toJSON,
				}

				expect(serialize(valueOfAndToJSONValue)).to.equal("valueOf ID")

				local onlyToJSONValue = { toJSON = toJSON }

				expect(serialize(onlyToJSONValue)).to.equal("toJSON ID")

				local badObjValue = {
					_id = false,
					-- ROBLOX deviation: pass self in explicitly
					valueOf = function(self)
						return self._id
					end,
				}

				expect(function()
					return serialize(badObjValue)
					-- ROBLOX deviation: key ordering different than JS, Lua doesn't retain function names
				end).toThrow("ID cannot represent value: { valueOf: [function], _id: false }")
				expect(function()
					return serialize(true)
				end).toThrow("ID cannot represent value: true")
				expect(function()
					return serialize(3.14)
				end).toThrow("ID cannot represent value: 3.14")
				-- expect(function()
				--     return serialize({})
				-- end).toThrow('ID cannot represent value: {}')
				expect(function()
					return serialize({
						"abc",
					})
				end).toThrow('ID cannot represent value: ["abc"]')
			end)
		end)
	end)
end
