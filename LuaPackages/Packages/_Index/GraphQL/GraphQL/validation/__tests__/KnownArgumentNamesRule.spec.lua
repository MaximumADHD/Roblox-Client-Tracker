--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/KnownArgumentNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local KnownArgumentNamesRuleExports = require(validationWorkspace.rules.KnownArgumentNamesRule)
	local KnownArgumentNamesRule = KnownArgumentNamesRuleExports.KnownArgumentNamesRule
	local KnownArgumentNamesOnDirectivesRule =
		KnownArgumentNamesRuleExports.KnownArgumentNamesOnDirectivesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectErrors(expect_, queryStr)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, KnownArgumentNamesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr)
		expectErrors(expect_, queryStr).toEqual({})
	end

	local function expectSDLErrors(expect_, sdlStr, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(
			expect_,
			schema,
			KnownArgumentNamesOnDirectivesRule,
			"\n" .. sdlStr
		)
	end

	local function expectValidSDL(expect_, sdlStr)
		expectSDLErrors(expect_, sdlStr).toEqual({})
	end

	describe("Validate: Known argument names", function()
		it("single arg is known", function()
			expectValid(
				expect,
				[[
				fragment argOnRequiredArg on Dog {
					doesKnowCommand(dogCommand: SIT)
				}
			]]
			)
		end)

		it("multiple args are known", function()
			expectValid(
				expect,
				[[
				fragment multipleArgs on ComplicatedArgs {
					multipleReqs(req1: 1, req2: 2)
				}
			]]
			)
		end)

		it("ignores args of unknown fields", function()
			expectValid(
				expect,
				[[
				fragment argOnUnknownField on Dog {
					unknownField(unknownArg: SIT)
				}
			]]
			)
		end)

		it("multiple args in reverse order are known", function()
			expectValid(
				expect,
				[[
				fragment multipleArgsReverseOrder on ComplicatedArgs {
					multipleReqs(req2: 2, req1: 1)
				}
			]]
			)
		end)

		it("no args on optional arg", function()
			expectValid(
				expect,
				[[
				fragment noArgOnOptionalArg on Dog {
					isHouseTrained
				}
			]]
			)
		end)

		it("args are known deeply", function()
			expectValid(
				expect,
				[[
				{
					dog {
						doesKnowCommand(dogCommand: SIT)
					}
					human {
						pet {
							... on Dog {
								doesKnowCommand(dogCommand: SIT)
							}
						}
					}
				}
			]]
			)
		end)

		it("directive args are known", function()
			expectValid(
				expect,
				[[
				{
					dog @skip(if: true)
				}
			]]
			)
		end)

		it("field args are invalid", function()
			expectErrors(
				expect,
				[[
      {
        dog @skip(unless: true)
      }
			]]
			).toEqual({
				{
					message = 'Unknown argument "unless" on directive "@skip".',
					locations = { { line = 3, column = 19 } },
				},
			})
		end)

		it("directive without args is valid", function()
			expectValid(
				expect,
				[[
				{
					dog @onField
				}
			]]
			)
		end)

		it("arg passed to directive without arg is reported", function()
			expectErrors(
				expect,
				[[
      {
        dog @onField(if: true)
      }
			]]
			).toEqual({
				{
					message = 'Unknown argument "if" on directive "@onField".',
					locations = { { line = 3, column = 22 } },
				},
			})
		end)

		it("misspelled directive args are reported", function()
			expectErrors(
				expect,
				[[
      {
        dog @skip(iff: true)
      }
			]]
			).toEqual({
				{
					message = 'Unknown argument "iff" on directive "@skip". Did you mean "if"?',
					locations = { { line = 3, column = 19 } },
				},
			})
		end)

		it("invalid arg name", function()
			expectErrors(
				expect,
				[[
      fragment invalidArgName on Dog {
        doesKnowCommand(unknown: true)
      }
			]]
			).toEqual({
				{
					message = 'Unknown argument "unknown" on field "Dog.doesKnowCommand".',
					locations = { { line = 3, column = 25 } },
				},
			})
		end)

		it("misspelled arg name is reported", function()
			expectErrors(
				expect,
				[[
      fragment invalidArgName on Dog {
        doesKnowCommand(DogCommand: true)
      }
			]]
			).toEqual({
				{
					message = 'Unknown argument "DogCommand" on field "Dog.doesKnowCommand". Did you mean "dogCommand"?',
					locations = { { line = 3, column = 25 } },
				},
			})
		end)

		it("unknown args amongst known args", function()
			expectErrors(
				expect,
				[[
      fragment oneGoodArgOneInvalidArg on Dog {
        doesKnowCommand(whoKnows: 1, dogCommand: SIT, unknown: true)
      }
			]]
			).toEqual({
				{
					message = 'Unknown argument "whoKnows" on field "Dog.doesKnowCommand".',
					locations = { { line = 3, column = 25 } },
				},
				{
					message = 'Unknown argument "unknown" on field "Dog.doesKnowCommand".',
					locations = { { line = 3, column = 55 } },
				},
			})
		end)

		it("unknown args deeply", function()
			expectErrors(
				expect,
				[[
      {
        dog {
          doesKnowCommand(unknown: true)
        }
        human {
          pet {
            ... on Dog {
              doesKnowCommand(unknown: true)
            }
          }
        }
      }
			]]
			).toEqual({
				{
					message = 'Unknown argument "unknown" on field "Dog.doesKnowCommand".',
					locations = { { line = 4, column = 27 } },
				},
				{
					message = 'Unknown argument "unknown" on field "Dog.doesKnowCommand".',
					locations = { { line = 9, column = 31 } },
				},
			})
		end)

		describe("within SDL", function()
			it("known arg on directive defined inside SDL", function()
				expectValidSDL(
					expect,
					[[
					type Query {
						foo: String @test(arg: "")
					}

					directive @test(arg: String) on FIELD_DEFINITION
				]]
				)
			end)

			it("unknown arg on directive defined inside SDL", function()
				expectSDLErrors(
					expect,
					[[
        type Query {
          foo: String @test(unknown: "")
        }

        directive @test(arg: String) on FIELD_DEFINITION
				]]
				).toEqual({
					{
						message = 'Unknown argument "unknown" on directive "@test".',
						locations = { { line = 3, column = 29 } },
					},
				})
			end)

			it("misspelled arg name is reported on directive defined inside SDL", function()
				expectSDLErrors(
					expect,
					[[
        type Query {
          foo: String @test(agr: "")
        }

        directive @test(arg: String) on FIELD_DEFINITION
				]]
				).toEqual({
					{
						message = 'Unknown argument "agr" on directive "@test". Did you mean "arg"?',
						locations = { { line = 3, column = 29 } },
					},
				})
			end)

			it("unknown arg on standard directive", function()
				expectSDLErrors(
					expect,
					[[
        type Query {
          foo: String @deprecated(unknown: "")
        }
				]]
				).toEqual({
					{
						message = 'Unknown argument "unknown" on directive "@deprecated".',
						locations = { { line = 3, column = 35 } },
					},
				})
			end)

			it("unknown arg on overridden standard directive", function()
				expectSDLErrors(
					expect,
					[[
        type Query {
          foo: String @deprecated(reason: "")
        }
        directive @deprecated(arg: String) on FIELD
				]]
				).toEqual({
					{
						message = 'Unknown argument "reason" on directive "@deprecated".',
						locations = { { line = 3, column = 35 } },
					},
				})
			end)

			it("unknown arg on directive defined in schema extension", function()
				local schema = buildSchema([[
					type Query {
						foo: String
					}
				]])

				expectSDLErrors(
					expect,
					[[
          directive @test(arg: String) on OBJECT

          extend type Query  @test(unknown: "")
				]],
					schema
				).toEqual({
					{
						message = 'Unknown argument "unknown" on directive "@test".',
						locations = { { line = 4, column = 36 } },
					},
				})
			end)

			it("unknown arg on directive used in schema extension", function()
				local schema = buildSchema([[
					directive @test(arg: String) on OBJECT

					type Query {
						foo: String
					}
				]])

				expectSDLErrors(
					expect,
					[[
          extend type Query @test(unknown: "")
				]],
					schema
				).toEqual({
					{
						message = 'Unknown argument "unknown" on directive "@test".',
						locations = { { line = 2, column = 35 } },
					},
				})
			end)
		end)
	end)
end
