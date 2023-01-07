-- ROBLOX upstream: https://github.com/taion/graphql-type-json/blob/v0.3.2-32-g10418fa/test/index.test.js
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local graphqlModule = require(Packages.GraphQL)
local GraphQLInt = graphqlModule.GraphQLInt
local GraphQLObjectType = graphqlModule.GraphQLObjectType
local GraphQLSchema = graphqlModule.GraphQLSchema
local graphql = graphqlModule.graphql -- eslint-disable-next-line import/no-named-as-default
local NULL = graphqlModule.NULL
type GraphQLError = graphqlModule.GraphQLError
local expect = require(Packages.Dev.JestGlobals).expect
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local srcModule = require(script.Parent.GraphQLJSONType)
local GraphQLJSON = srcModule.default
local GraphQLJSONObject = srcModule.GraphQLJSONObject
local FIXTURE = {
	string = "string",
	int = 3,
	float = 3.14,
	["true"] = true,
	["false"] = false,
	null = nil,
	object = {
		string = "string",
		int = 3,
		float = 3.14,
		["true"] = true,
		["false"] = false,
		null = nil,
	},
	array = { "string" :: any, 3 :: any, 3.14 :: any, true :: any, false :: any, nil :: any },
}
local function createSchema(type_)
	return GraphQLSchema.new({
		query = GraphQLObjectType.new({
			name = "Query",
			fields = {
				value = {
					type = type_,
					args = { arg = { type = type_ } },
					resolve = function(obj, ref0)
						local arg = ref0.arg
						return arg
					end,
				},
				rootValue = {
					type = type_,
					resolve = function(obj)
						return obj
					end,
				},
			},
		}),
		types = { GraphQLInt },
	})
end
return function()
	describe("GraphQLJSON", function()
		local schema
		beforeEach(function()
			schema = createSchema(GraphQLJSON)
		end)
		describe("serialize", function()
			it("should support serialization", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query {
							rootValue
						}
					]],
						rootValue = FIXTURE,
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data.rootValue).toEqual(FIXTURE)
						expect(errors).toBeUndefined()
					end)
					:expect()
			end)
		end)
		describe("parseValue", function()
			it("should support parsing values", function()
				return graphql({
						schema = schema,
						--[[ GraphQL ]]
						source = [[

						query($arg: JSON!) {
							value(arg: $arg)
						}
					]],
						variableValues = { arg = FIXTURE },
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data.value).toEqual(FIXTURE)
						expect(errors).toBeUndefined()
					end)
					:expect()
			end)
		end)
		describe("parseLiteral", function()
			it("should support parsing literals", function()
				return graphql({
						schema = schema,
						--[[ GraphQL ]]
						source = [[

						query($intValue: Int = 3) {
							value(
								arg: {
									string: "string"
									int: $intValue
									float: 3.14
									true: true
									false: false
									null: null
									object: {
										string: "string"
										int: $intValue
										float: 3.14
										true: true
										false: false
										null: null
									}
									array: ["string", $intValue, 3.14, true, false, null]
								}
							)
						}
					]],
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data.value).toEqual(FIXTURE)
						expect(errors).toBeUndefined()
					end)
					:expect()
			end)
			it("should handle null literal", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						{
							value(arg: null)
						}
					]],
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data).toEqual({ value = NULL })
						expect(errors).toBeUndefined()
					end)
					:expect()
			end)
			it("should handle list literal", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						{
							value(arg: [])
						}
					]],
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data).toEqual({ value = {} })
						expect(errors).toBeUndefined()
					end)
					:expect()
			end)
			it("should reject invalid literal", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						{
							value(arg: INVALID)
						}
					]],
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors :: Array<GraphQLError>
						expect(data).never.toBeDefined()
						expect(#errors).toEqual(1)
						expect(errors[1].message).toEqual(
							'Expected value of type "JSON", found INVALID; JSON cannot represent value: INVALID'
						)
					end)
					:expect()
			end)
		end)
	end)
	describe("GraphQLJSONObject", function()
		local schema
		beforeEach(function()
			schema = createSchema(GraphQLJSONObject)
		end)
		describe("serialize", function()
			it("should support serialization", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query {
							rootValue
						}
					]],
						rootValue = FIXTURE,
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data.rootValue).toEqual(FIXTURE)
						expect(errors).never.toBeDefined()
					end)
					:expect()
			end)
			it("should reject string value", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query {
							rootValue
						}
					]],
						rootValue = "foo",
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors :: Array<GraphQLError>
						expect(data.rootValue).toEqual(NULL)
						expect(#errors).toEqual(1)
						expect(errors[1].message).toEqual("JSONObject cannot represent non-object value: foo")
					end)
					:expect()
			end)
			it("should reject array value", function()
				local rootValue = {}
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query {
							rootValue
						}
					]],
						rootValue = rootValue,
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors :: Array<GraphQLError>
						expect(data.rootValue).toEqual(NULL)
						expect(#errors).toEqual(1)
						expect(errors[1].message).toEqual(
							("JSONObject cannot represent non-object value: %s"):format(tostring(rootValue))
						)
					end)
					:expect()
			end)
		end)
		describe("parseValue", function()
			it("should support parsing values", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query($arg: JSONObject!) {
							value(arg: $arg)
						}
					]],
						variableValues = { arg = FIXTURE },
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data.value).toEqual(FIXTURE)
						expect(errors).never.toBeDefined()
					end)
					:expect()
			end)
			it("should reject string value", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query($arg: JSONObject!) {
							value(arg: $arg)
						}
					]],
						variableValues = { arg = "foo" },
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors :: Array<GraphQLError>
						expect(data).never.toBeDefined()
						expect(#errors).toEqual(1)
						expect(errors[1].message).toEqual(
							'Variable "$arg" got invalid value "foo"; Expected type "JSONObject". JSONObject cannot represent non-object value: foo'
						)
					end)
					:expect()
			end)
			it("should reject array value", function()
				local arg = {}
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query($arg: JSONObject!) {
							value(arg: $arg)
						}
					]],
						variableValues = { arg = arg },
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors :: Array<GraphQLError>
						expect(data).never.toBeDefined()
						expect(#errors).toEqual(1)
						expect(errors[1].message).toEqual(
							('Variable "$arg" got invalid value []; Expected type "JSONObject". JSONObject cannot represent non-object value: %s'):format(
								tostring(arg)
							)
						)
					end)
					:expect()
			end)
		end)
		describe("parseLiteral", function()
			it("should support parsing literals", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						query($intValue: Int = 3) {
							value(
								arg: {
									string: "string"
									int: $intValue
									float: 3.14
									true: true
									false: false
									null: null
									object: {
										string: "string"
										int: $intValue
										float: 3.14
										true: true
										false: false
										null: null
									}
									array: ["string", $intValue, 3.14, true, false, null]
								}
							)
						}
					]],
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors
						expect(data.value).toEqual(FIXTURE)
						expect(errors).never.toBeDefined()
					end)
					:expect()
			end)
			it("should reject string literal", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						{
							value(arg: "foo")
						}
					]],
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors :: Array<GraphQLError>
						expect(data).never.toBeDefined()
						expect(#errors).toEqual(1)
						expect(errors[1].message).toEqual(
							'Expected value of type "JSONObject", found "foo"; JSONObject cannot represent non-object value: "foo"'
						)
					end)
					:expect()
			end)
			it("should reject array literal", function()
				return graphql({
						schema = schema, --[[ GraphQL ]]
						source = [[

						{
							value(arg: [])
						}
					]],
					})
					:andThen(function(ref0)
						local data, errors = ref0.data, ref0.errors :: Array<GraphQLError>
						expect(data).never.toBeDefined()
						expect(#errors).toEqual(1)
						expect(errors[1].message).toEqual(
							'Expected value of type "JSONObject", found []; JSONObject cannot represent non-object value: []'
						)
					end)
					:expect()
			end)
		end)
	end)
end
