--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/ProvidedRequiredArgumentsRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local root = validationWorkspace.Parent
	local buildASTSchema = require(root.utilities.buildASTSchema)
	local buildSchema = buildASTSchema.buildSchema
	local ProvidedRequiredArgumentsRuleExports = require(
		validationWorkspace.rules.ProvidedRequiredArgumentsRule
	)
	local ProvidedRequiredArgumentsRule =
		ProvidedRequiredArgumentsRuleExports.ProvidedRequiredArgumentsRule
	local ProvidedRequiredArgumentsOnDirectivesRule =
		ProvidedRequiredArgumentsRuleExports.ProvidedRequiredArgumentsOnDirectivesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors
	local expectSDLValidationErrors = harness.expectSDLValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, ProvidedRequiredArgumentsRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	local function expectSDLErrors(expect_, sdlStr: string, schema)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectSDLValidationErrors(
			expect_,
			schema,
			ProvidedRequiredArgumentsOnDirectivesRule,
			"\n" .. sdlStr
		)
	end

	local function expectValidSDL(expect_, sdlStr: string)
		expectSDLErrors(expect_, sdlStr).toEqual({})
	end

	describe("Validate: Provided required arguments", function()
		it("ignores unknown arguments", function()
			expectValid(
				expect,
				[[
				{
					dog {
						isHouseTrained(unknownArgument: true)
					}
				}
			]]
			)
		end)

		describe("Valid non-nullable value", function()
			it("Arg on optional arg", function()
				expectValid(
					expect,
					[[
					{
						dog {
							isHouseTrained(atOtherHomes: true)
						}
					}
				]]
				)
			end)

			it("No Arg on optional arg", function()
				expectValid(
					expect,
					[[
					{
						dog {
							isHouseTrained
						}
					}
				]]
				)
			end)

			it("No arg on non-null field with default", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							nonNullFieldWithDefault
						}
					}
				]]
				)
			end)

			it("Multiple args", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleReqs(req1: 1, req2: 2)
						}
					}
				]]
				)
			end)

			it("Multiple args reverse order", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleReqs(req2: 2, req1: 1)
						}
					}
				]]
				)
			end)

			it("No args on multiple optional", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOpts
						}
					}
				]]
				)
			end)

			it("One arg on multiple optional", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOpts(opt1: 1)
						}
					}
				]]
				)
			end)

			it("Second arg on multiple optional", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOpts(opt2: 1)
						}
					}
				]]
				)
			end)

			it("Multiple required args on mixedList", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOptAndReq(req1: 3, req2: 4)
						}
					}
				]]
				)
			end)

			it("Multiple required and one optional arg on mixedList", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOptAndReq(req1: 3, req2: 4, opt1: 5)
						}
					}
				]]
				)
			end)

			it("All required and optional args on mixedList", function()
				expectValid(
					expect,
					[[
					{
						complicatedArgs {
							multipleOptAndReq(req1: 3, req2: 4, opt1: 5, opt2: 6)
						}
					}
				]]
				)
			end)
		end)

		describe("Invalid non-nullable value", function()
			it("Missing one non-nullable argument", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            multipleReqs(req2: 2)
          }
        }
				]]
				).toEqual({
					{
						message = 'Field "multipleReqs" argument "req1" of type "Int!" is required, but it was not provided.',
						locations = { { line = 4, column = 13 } },
					},
				})
			end)

			it("Missing multiple non-nullable arguments", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            multipleReqs
          }
        }
				]]
				).toEqual({
					{
						message = 'Field "multipleReqs" argument "req1" of type "Int!" is required, but it was not provided.',
						locations = { { line = 4, column = 13 } },
					},
					{
						message = 'Field "multipleReqs" argument "req2" of type "Int!" is required, but it was not provided.',
						locations = { { line = 4, column = 13 } },
					},
				})
			end)

			it("Incorrect value and missing argument", function()
				expectErrors(
					expect,
					[[
        {
          complicatedArgs {
            multipleReqs(req1: "one")
          }
        }
				]]
				).toEqual({
					{
						message = 'Field "multipleReqs" argument "req2" of type "Int!" is required, but it was not provided.',
						locations = { { line = 4, column = 13 } },
					},
				})
			end)
		end)

		describe("Directive arguments", function()
			it("ignores unknown directives", function()
				expectValid(
					expect,
					[[
					{
						dog @unknown
					}
				]]
				)
			end)

			it("with directives of valid types", function()
				expectValid(
					expect,
					[[
					{
						dog @include(if: true) {
							name
						}
						human @skip(if: false) {
							name
						}
					}
				]]
				)
			end)

			it("with directive with missing types", function()
				expectErrors(
					expect,
					[[
        {
          dog @include {
            name @skip
          }
        }
				]]
				).toEqual({
					{
						message = 'Directive "@include" argument "if" of type "Boolean!" is required, but it was not provided.',
						locations = { { line = 3, column = 15 } },
					},
					{
						message = 'Directive "@skip" argument "if" of type "Boolean!" is required, but it was not provided.',
						locations = { { line = 4, column = 18 } },
					},
				})
			end)
		end)

		describe("within SDL", function()
			it("Missing optional args on directive defined inside SDL", function()
				expectValidSDL(
					expect,
					[[
					type Query {
						foo: String @test
					}

					directive @test(arg1: String, arg2: String! = "") on FIELD_DEFINITION
				]]
				)
			end)

			it("Missing arg on directive defined inside SDL", function()
				expectSDLErrors(
					expect,
					[[
        type Query {
          foo: String @test
        }

        directive @test(arg: String!) on FIELD_DEFINITION
				]]
				).toEqual({
					{
						message = 'Directive "@test" argument "arg" of type "String!" is required, but it was not provided.',
						locations = { { line = 3, column = 23 } },
					},
				})
			end)

			it("Missing arg on standard directive", function()
				expectSDLErrors(
					expect,
					[[
        type Query {
          foo: String @include
        }
				]]
				).toEqual({
					{
						message = 'Directive "@include" argument "if" of type "Boolean!" is required, but it was not provided.',
						locations = { { line = 3, column = 23 } },
					},
				})
			end)

			it("Missing arg on overridden standard directive", function()
				expectSDLErrors(
					expect,
					[[
        type Query {
          foo: String @deprecated
        }
        directive @deprecated(reason: String!) on FIELD
				]]
				).toEqual({
					{

						message = 'Directive "@deprecated" argument "reason" of type "String!" is required, but it was not provided.',
						locations = { { line = 3, column = 23 } },
					},
				})
			end)

			it("Missing arg on directive defined in schema extension", function()
				local schema = buildSchema([[
					type Query {
						foo: String
					}
				]])

				expectSDLErrors(
					expect,
					[[
          directive @test(arg: String!) on OBJECT

          extend type Query  @test
				]],
					schema
				).toEqual({
					{

						message = 'Directive "@test" argument "arg" of type "String!" is required, but it was not provided.',
						locations = { { line = 4, column = 30 } },
					},
				})
			end)

			it("Missing arg on directive used in schema extension", function()
				local schema = buildSchema([[
					directive @test(arg: String!) on OBJECT

					type Query {
						foo: String
					}
				]])

				expectSDLErrors(
					expect,
					[[
          extend type Query @test
				]],
					schema
				).toEqual({
					{

						message = 'Directive "@test" argument "arg" of type "String!" is required, but it was not provided.',
						locations = { { line = 2, column = 29 } },
					},
				})
			end)
		end)
	end)
end
