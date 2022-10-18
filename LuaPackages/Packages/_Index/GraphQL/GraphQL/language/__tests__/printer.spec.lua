--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/__tests__/printer-test.js

local languageWorkspace = script.Parent.Parent
local srcWorkspace = languageWorkspace.Parent
local Packages = srcWorkspace.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation: use jestExpect here so that we get reasonably text diffing on failures
local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local astModule = require(languageWorkspace.ast)
type FieldNode = astModule.FieldNode

return function()
	local dedent = require(srcWorkspace.__testUtils__.dedent).dedent
	local kitchenSinkQuery =
		require(script.Parent.Parent.Parent.__testUtils__.kitchenSinkQuery).kitchenSinkQuery

	local parse = require(script.Parent.Parent.parser).parse
	local print_ = require(script.Parent.Parent.printer).print

	--ROBLOX TODO: make proper JSON.stringify export in polyfill
	local inspect = LuauPolyfill.util.inspect
	describe("Printer: Query document", function()
		it("does not alter ast", function()
			-- ROBLOX deviation: no JSON.stringify in Lua. Using inspect instead
			local ast = parse(kitchenSinkQuery)
			local astBefore = inspect(ast)
			print_(ast)
			jestExpect(inspect(ast)).toEqual(astBefore)
		end)

		it("prints minimal ast", function()
			-- ROBLOX FIXME Luau: shouldn't need this explicit annotation, gets this error: could not be converted into 'ArgumentNode | BooleanValueNode ... | FieldDefinitionNode | FieldNode
			local ast = { kind = "Field", name = { kind = "Name", value = "foo" } } :: FieldNode
			jestExpect(print_(ast)).toEqual("foo")
		end)

		it("produces helpful error messages", function()
			local badAST = { random = "Data" }

			-- $FlowExpectedError[incompatible-call]
			-- ROBLOX deviation: strong typing prevents this from analyzing (yay!), so cast away safety
			jestExpect(function()
				print_(badAST :: any)
			end).toThrow('Invalid AST Node: { random: "Data" }.')
		end)

		it("correctly prints non-query operations without name", function()
			local queryASTShorthanded = parse("query { id, name }")
			jestExpect(print_(queryASTShorthanded)).toEqual(dedent([[
              {
                id
                name
              }
			]]))

			local mutationAST = parse("mutation { id, name }")
			jestExpect(print_(mutationAST)).toEqual(dedent([[
				mutation {
				  id
				  name
				}
			]]))

			local queryASTWithArtifacts = parse(
				"query ($foo: TestType) @testDirective { id, name }"
			)
			jestExpect(print_(queryASTWithArtifacts)).toEqual(dedent([[
				query ($foo: TestType) @testDirective {
				  id
				  name
				}
			]]))

			local mutationASTWithArtifacts = parse(
				"mutation ($foo: TestType) @testDirective { id, name }"
			)
			jestExpect(print_(mutationASTWithArtifacts)).toEqual(dedent([[
				mutation ($foo: TestType) @testDirective {
				  id
				  name
				}
			]]))
		end)

		it("prints query with variable directives", function()
			local queryASTWithVariableDirective = parse(
				"query ($foo: TestType = {a: 123} @testDirective(if: true) @test) { id }"
			)
			jestExpect(print_(queryASTWithVariableDirective)).toEqual(dedent([[
				query ($foo: TestType = {a: 123} @testDirective(if: true) @test) {
				  id
				}
			]]))
		end)

		it("keeps arguments on one line if line is short (<= 80 chars)", function()
			local printed = print_(parse("{trip(wheelchair:false arriveBy:false){dateTime}}"))

			jestExpect(printed).toEqual(dedent([[
				{
				  trip(wheelchair: false, arriveBy: false) {
				    dateTime
				  }
				}
			]]))
		end)

		it("puts arguments on multiple lines if line is long (> 80 chars)", function()
			local printed = print_(
				parse(
					"{trip(wheelchair:false arriveBy:false includePlannedCancellations:true transitDistanceReluctance:2000){dateTime}}"
				)
			)

			jestExpect(printed).toEqual(dedent([[
				{
				  trip(
				    wheelchair: false
				    arriveBy: false
				    includePlannedCancellations: true
				    transitDistanceReluctance: 2000
				  ) {
				    dateTime
				  }
				}
			]]))
		end)

		it("Experimental: prints fragment with variable directives", function()
			local queryASTWithVariableDirective = parse(
				"fragment Foo($foo: TestType @test) on TestType @testDirective { id }",
				{
					experimentalFragmentVariables = true,
				}
			)
			jestExpect(print_(queryASTWithVariableDirective)).toEqual(dedent([[
				fragment Foo($foo: TestType @test) on TestType @testDirective {
				  id
				}
			]]))
		end)

		it("Experimental: correctly prints fragment defined variables", function()
			local fragmentWithVariable = parse(
				[[
				fragment Foo($a: ComplexType, $b: Boolean = false) on TestType {
				  id
				}
			]],
				{ experimentalFragmentVariables = true }
			)
			jestExpect(print_(fragmentWithVariable)).toEqual(dedent([[
				fragment Foo($a: ComplexType, $b: Boolean = false) on TestType {
				  id
				}
			]]))
		end)

		it("prints kitchen sink", function()
			local printed = print_(parse(kitchenSinkQuery))

			jestExpect(printed).toEqual(
				-- $FlowFixMe[incompatible-call]
				dedent([[
					query queryName($foo: ComplexType, $site: Site = MOBILE) @onQuery {
					  whoever123is: node(id: [123, 456]) {
					    id
					    ... on User @onInlineFragment {
					      field2 {
					        id
					        alias: field1(first: 10, after: $foo) @include(if: $foo) {
					          id
					          ...frag @onFragmentSpread
					        }
					      }
					    }
					    ... @skip(unless: $foo) {
					      id
					    }
					    ... {
					      id
					    }
					  }
					}

					mutation likeStory @onMutation {
					  like(story: 123) @onField {
					    story {
					      id @onField
					    }
					  }
					}

					subscription StoryLikeSubscription($input: StoryLikeSubscribeInput) @onSubscription {
					  storyLikeSubscribe(input: $input) {
					    story {
					      likers {
					        count
					      }
					      likeSentence {
					        text
					      }
					    }
					  }
					}

					fragment frag on Friend @onFragmentDefinition {
					  foo(
					    size: $size
					    bar: $b
					    obj: {key: "value", block: """
					      block string uses \"""
					    """}
					  )
					}

					{
					  unnamed(truthy: true, falsy: false, nullish: null)
					  query
					}

					{
					  __typename
					}
				]])
			)
		end)
	end)
end
