--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1611bbb08a88f734e9490b14cfe6afea11a838e0/src/__tests__/starWarsIntrospection-test.js
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local NULL = require(script.Parent.Parent.luaUtils.null)
local objMap = require(script.Parent.Parent.jsutils.ObjMap)
type ObjMap<T> = objMap.ObjMap<T>
local graphql = require(script.Parent.Parent.graphql)
local graphqlSync = graphql.graphqlSync
local starWarsSchema = require(script.Parent.starWarsSchema)
local StarWarsSchema = starWarsSchema.StarWarsSchema

return function()
	-- ROBLOX deviation: must pass in expect in testEZ
	local function queryStarWars(expect_, source: string)
		local result = graphqlSync({
			schema = StarWarsSchema,
			source = source,
		})

		expect_(Object.keys(result)).toObjectContain({
			"data",
		})

		-- ROBLOX FIXME: technically narrowed above, but we need this to pass analysis due to the deviations in the asserts below
		return result.data :: ObjMap<any>
	end

	describe("Star Wars Introspection Tests", function()
		describe("Basic Introspection", function()
			it("Allows querying the schema for types", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__schema {
				types {
				name
				}
			}
			}
		]]
				)
				-- Include all types used by StarWars schema, introspection types and
				-- standard directives. For example, `Boolean` is used in `@skip`,
				-- `@include` and also inside introspection types.
				expect(data).toObjectContain({
					__schema = {
						types = {
							{ name = "Human" },
							{ name = "Character" },
							{ name = "String" },
							{ name = "Episode" },
							{ name = "Droid" },
							{ name = "Query" },
							{ name = "Boolean" },
							{ name = "__Schema" },
							{ name = "__Type" },
							{ name = "__TypeKind" },
							{ name = "__Field" },
							{ name = "__InputValue" },
							{ name = "__EnumValue" },
							{ name = "__Directive" },
							{ name = "__DirectiveLocation" },
						},
					},
				})
			end)
			it("Allows querying the schema for query type", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__schema {
				queryType {
				name
				}
			}
			}
		]]
				)

				expect(data).toObjectContain({
					__schema = {
						queryType = {
							name = "Query",
						},
					},
				})
			end)
			it("Allows querying the schema for a specific type", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__type(name: "Droid") {
				name
			}
			}
		]]
				)

				expect(data).toObjectContain({
					__type = {
						name = "Droid",
					},
				})
			end)
			it("Allows querying the schema for an object kind", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__type(name: "Droid") {
				name
				kind
			}
			}
		]]
				)

				expect(data).toObjectContain({
					__type = {
						name = "Droid",
						kind = "OBJECT",
					},
				})
			end)
			it("Allows querying the schema for an interface kind", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__type(name: "Character") {
				name
				kind
			}
			}
		]]
				)

				expect(data).toObjectContain({
					__type = {
						name = "Character",
						kind = "INTERFACE",
					},
				})
			end)
			it("Allows querying the schema for object fields", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__type(name: "Droid") {
				name
				fields {
				name
				type {
					name
					kind
				}
				}
			}
			}
		]]
				)

				-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array, so denormalize
				expect(data).toObjectContain({
					__type = {
						name = "Droid",
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "id",
					type = {
						name = NULL,
						kind = "NON_NULL",
					},
				})

				expect(data.__type.fields).toArrayContains({
					name = "name",
					type = {
						name = "String",
						kind = "SCALAR",
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "friends",
					type = {
						name = NULL,
						kind = "LIST",
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "appearsIn",
					type = {
						name = NULL,
						kind = "LIST",
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "secretBackstory",
					type = {
						name = "String",
						kind = "SCALAR",
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "primaryFunction",
					type = {
						name = "String",
						kind = "SCALAR",
					},
				})
			end)
			it("Allows querying the schema for nested object fields", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__type(name: "Droid") {
				name
				fields {
				name
				type {
					name
					kind
					ofType {
					name
					kind
					}
				}
				}
			}
			}
		]]
				)
				-- ROBLOX deviation: TestEZ can't seem to do a partial object match within an array, so denormalize
				expect(data).toObjectContain({
					__type = {
						name = "Droid",
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "id",
					type = {
						name = NULL,
						kind = "NON_NULL",
						ofType = {
							name = "String",
							kind = "SCALAR",
						},
					},
				})

				expect(data.__type.fields).toArrayContains({
					name = "name",
					type = {
						name = "String",
						kind = "SCALAR",
						ofType = NULL,
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "friends",
					type = {
						name = NULL,
						kind = "LIST",
						ofType = {
							name = "Character",
							kind = "INTERFACE",
						},
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "appearsIn",
					type = {
						name = NULL,
						kind = "LIST",
						ofType = {
							name = "Episode",
							kind = "ENUM",
						},
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "secretBackstory",
					type = {
						name = "String",
						kind = "SCALAR",
						ofType = NULL,
					},
				})
				expect(data.__type.fields).toArrayContains({
					name = "primaryFunction",
					type = {
						name = "String",
						kind = "SCALAR",
						ofType = NULL,
					},
				})
			end)
			it("Allows querying the schema for field args", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__schema {
				queryType {
				fields {
					name
					args {
					name
					description
					type {
						name
						kind
						ofType {
						name
						kind
						}
					}
					defaultValue
					}
				}
				}
			}
			}
		]]
				)

				expect(data).toObjectContain({
					__schema = {
						queryType = {
							fields = {
								{
									name = "hero",
									args = {
										{
											defaultValue = nil,
											description = "If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.",
											name = "episode",
											type = {
												kind = "ENUM",
												name = "Episode",
												ofType = nil,
											},
										},
									},
								},
								{
									name = "human",
									args = {
										{
											name = "id",
											description = "id of the human",
											type = {
												kind = "NON_NULL",
												name = nil,
												ofType = {
													kind = "SCALAR",
													name = "String",
												},
											},
											defaultValue = nil,
										},
									},
								},
								{
									name = "droid",
									args = {
										{
											name = "id",
											description = "id of the droid",
											type = {
												kind = "NON_NULL",
												name = nil,
												ofType = {
													kind = "SCALAR",
													name = "String",
												},
											},
											defaultValue = nil,
										},
									},
								},
							} :: Array<any>,
						},
					},
				})
			end)
			it("Allows querying the schema for documentation", function()
				local expect: any = expect
				local data = queryStarWars(
					expect,
					[[
			{
			__type(name: "Droid") {
				name
				description
			}
			}
		]]
				)

				expect(data).toObjectContain({
					__type = {
						name = "Droid",
						description = "A mechanical creature in the Star Wars universe.",
					},
				})
			end)
		end)
	end)
end
