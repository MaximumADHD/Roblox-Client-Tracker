--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1611bbb08a88f734e9490b14cfe6afea11a838e0/src/__tests__/starWarsQuery-test.js
local NULL = require(script.Parent.Parent.luaUtils.null)
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

local graphql = require(script.Parent.Parent.graphql).graphql
local starWarsSchema = require(script.Parent.starWarsSchema)
local schema = starWarsSchema.StarWarsSchema

return function()
	describe("Star Wars Query Tests", function()
		describe("Basic Queries", function()
			it("Correctly identifies R2-D2 as the hero of the Star Wars Saga", function()
				local expect: any = expect
				local source = [[
			query HeroNameQuery {
			hero {
				name
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						hero = {
							name = "R2-D2",
						},
					},
				})
			end)
			it("Allows us to query for the ID and friends of R2-D2", function()
				local expect: any = expect
				local source = [[
			query HeroNameAndFriendsQuery {
			hero {
				id
				name
				friends {
				name
				}
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						hero = {
							id = "2001",
							name = "R2-D2",
							friends = {
								{
									name = "Luke Skywalker",
								},
								{
									name = "Han Solo",
								},
								{
									name = "Leia Organa",
								},
							},
						},
					},
				})
			end)
		end)
		describe("Nested Queries", function()
			it("Allows us to query for the friends of friends of R2-D2", function()
				local expect: any = expect
				local source = [[
		query NestedQuery {
			hero {
				name
				friends {
				name
				appearsIn
				friends {
					name
				}
				}
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						hero = {
							name = "R2-D2",
							friends = {
								{
									name = "Luke Skywalker",
									appearsIn = {
										"NEW_HOPE",
										"EMPIRE",
										"JEDI",
									},
									friends = {
										{
											name = "Han Solo",
										},
										{
											name = "Leia Organa",
										},
										{
											name = "C-3PO",
										},
										{
											name = "R2-D2",
										},
									},
								},
								{
									name = "Han Solo",
									appearsIn = {
										"NEW_HOPE",
										"EMPIRE",
										"JEDI",
									},
									friends = {
										{
											name = "Luke Skywalker",
										},
										{
											name = "Leia Organa",
										},
										{
											name = "R2-D2",
										},
									},
								},
								{
									name = "Leia Organa",
									appearsIn = {
										"NEW_HOPE",
										"EMPIRE",
										"JEDI",
									},
									friends = {
										{
											name = "Luke Skywalker",
										},
										{
											name = "Han Solo",
										},
										{
											name = "C-3PO",
										},
										{
											name = "R2-D2",
										},
									},
								},
							},
						},
					},
				})
			end)
		end)
		describe("Using IDs and query parameters to refetch objects", function()
			it("Allows us to query characters directly, using their IDs", function()
				local expect: any = expect
				local source = [[
			query FetchLukeAndC3POQuery {
			human(id: "1000") {
				name
			}
			droid(id: "2000") {
				name
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						human = {
							name = "Luke Skywalker",
						},
						droid = {
							name = "C-3PO",
						},
					},
				})
			end)
			it(
				"Allows us to create a generic query, then use it to fetch Luke Skywalker using his ID",
				function()
					local expect: any = expect
					local source = [[
			query FetchSomeIDQuery($someId: String!) {
			human(id: $someId) {
				name
			}
			}
		]]
					local variableValues = {
						someId = "1000",
					}

					local result = graphql({
						schema = schema,
						source = source,
						variableValues = variableValues,
					}):expect()
					expect(result).toObjectContain({
						data = {
							human = {
								name = "Luke Skywalker",
							},
						},
					})
				end
			)
			it(
				"Allows us to create a generic query, then use it to fetch Han Solo using his ID",
				function()
					local expect: any = expect
					local source = [[
			query FetchSomeIDQuery($someId: String!) {
			human(id: $someId) {
				name
			}
			}
		]]
					local variableValues = {
						someId = "1002",
					}

					local result = graphql({
						schema = schema,
						source = source,
						variableValues = variableValues,
					}):expect()
					expect(result).toObjectContain({
						data = {
							human = {
								name = "Han Solo",
							},
						},
					})
				end
			)
			it(
				"Allows us to create a generic query, then pass an invalid ID to get null back",
				function()
					local expect: any = expect
					local source = [[
			query humanQuery($id: String!) {
			human(id: $id) {
				name
			}
			}
		]]
					local variableValues = {
						id = "not a valid id",
					}

					local result = graphql({
						schema = schema,
						source = source,
						variableValues = variableValues,
					}):expect()
					expect(result).toObjectContain({
						data = { human = nil },
					})
				end
			)
		end)
		describe("Using aliases to change the key in the response", function()
			it("Allows us to query for Luke, changing his key with an alias", function()
				local expect: any = expect
				local source = [[
			query FetchLukeAliased {
			luke: human(id: "1000") {
				name
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						luke = {
							name = "Luke Skywalker",
						},
					},
				})
			end)
			it(
				"Allows us to query for both Luke and Leia, using two root fields and an alias",
				function()
					local expect: any = expect
					local source = [[
			query FetchLukeAndLeiaAliased {
			luke: human(id: "1000") {
				name
			}
			leia: human(id: "1003") {
				name
			}
			}
		]]

					local result = graphql({
						schema = schema,
						source = source,
					}):expect()
					expect(result).toObjectContain({
						data = {
							luke = {
								name = "Luke Skywalker",
							},
							leia = {
								name = "Leia Organa",
							},
						},
					})
				end
			)
		end)
		describe("Uses fragments to express more complex queries", function()
			it("Allows us to query using duplicated content", function()
				local expect: any = expect
				local source = [[
			query DuplicateFields {
			luke: human(id: "1000") {
				name
				homePlanet
			}
			leia: human(id: "1003") {
				name
				homePlanet
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						luke = {
							name = "Luke Skywalker",
							homePlanet = "Tatooine",
						},
						leia = {
							name = "Leia Organa",
							homePlanet = "Alderaan",
						},
					},
				})
			end)
			it("Allows us to use a fragment to avoid duplicating content", function()
				local expect: any = expect
				local source = [[
			query UseFragment {
			luke: human(id: "1000") {
				...HumanFragment
			}
			leia: human(id: "1003") {
				...HumanFragment
			}
			}

			fragment HumanFragment on Human {
			name
			homePlanet
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						luke = {
							name = "Luke Skywalker",
							homePlanet = "Tatooine",
						},
						leia = {
							name = "Leia Organa",
							homePlanet = "Alderaan",
						},
					},
				})
			end)
		end)
		describe("Using __typename to find the type of an object", function()
			it("Allows us to verify that R2-D2 is a droid", function()
				local expect: any = expect
				local source = [[
			query CheckTypeOfR2 {
			hero {
				__typename
				name
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						hero = {
							__typename = "Droid",
							name = "R2-D2",
						},
					},
				})
			end)
			it("Allows us to verify that Luke is a human", function()
				local expect: any = expect
				local source = [[
			query CheckTypeOfLuke {
			hero(episode: EMPIRE) {
				__typename
				name
			}
			}
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						hero = {
							__typename = "Human",
							name = "Luke Skywalker",
						},
					},
				})
			end)
		end)
		describe("Reporting errors raised in resolvers", function()
			it("Correctly reports error on accessing secretBackstory", function()
				local expect: any = expect
				local source = [[

        query HeroNameQuery {
          hero {
            name
            secretBackstory
          }
        }
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						hero = {
							name = "R2-D2",
							secretBackstory = NULL,
						},
					},
					errors = {
						{
							message = "secretBackstory is secret.",
							locations = {
								{
									line = 5,
									column = 13,
								},
							},
							path = {
								"hero",
								"secretBackstory",
							},
						},
					},
				})
			end)
			it("Correctly reports error on accessing secretBackstory in a list", function()
				local expect: any = expect
				local source = [[

        query HeroNameQuery {
          hero {
            name
            friends {
              name
              secretBackstory
            }
          }
        }
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						hero = {
							name = "R2-D2",
							friends = {
								{
									name = "Luke Skywalker",
									secretBackstory = nil,
								},
								{
									name = "Han Solo",
									secretBackstory = nil,
								},
								{
									name = "Leia Organa",
									secretBackstory = nil,
								},
							},
						},
					},
					errors = {
						{
							message = "secretBackstory is secret.",
							locations = {
								{
									line = 7,
									column = 15,
								},
							},
							path = {
								"hero",
								"friends",
								-- ROBLOX deviation: this starts at 0 upstream, some kind of index?
								1,
								"secretBackstory",
							} :: Array<any>,
						},
						{
							message = "secretBackstory is secret.",
							locations = {
								{
									line = 7,
									column = 15,
								},
							},
							path = {
								"hero",
								"friends",
								-- ROBLOX deviation: this starts at 0 upstream, some kind of index?
								2,
								"secretBackstory",
							} :: Array<any>,
						},
						{
							message = "secretBackstory is secret.",
							locations = {
								{
									line = 7,
									column = 15,
								},
							},
							path = {
								"hero",
								"friends",
								-- ROBLOX deviation: this starts at 0 upstream, some kind of index?
								3,
								"secretBackstory",
							} :: Array<any>,
						},
					},
				})
			end)
			it("Correctly reports error on accessing through an alias", function()
				local expect: any = expect
				local source = [[

        query HeroNameQuery {
          mainHero: hero {
            name
            story: secretBackstory
          }
        }
		]]

				local result = graphql({
					schema = schema,
					source = source,
				}):expect()
				expect(result).toObjectContain({
					data = {
						mainHero = {
							name = "R2-D2",
							story = NULL,
						},
					},
					errors = {
						{
							message = "secretBackstory is secret.",
							locations = {
								{
									line = 5,
									column = 13,
								},
							},
							path = {
								"mainHero",
								"story",
							},
						},
					},
				})
			end)
		end)
	end)
end
