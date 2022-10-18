--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/VariablesInAllowedPositionRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local VariablesInAllowedPositionRule = require(
		validationWorkspace.rules.VariablesInAllowedPositionRule
	).VariablesInAllowedPositionRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, VariablesInAllowedPositionRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Variables are in allowed positions", function()
		it("Boolean => Boolean", function()
			expectValid(
				expect,
				[[
				query Query($booleanArg: Boolean)
				{
					complicatedArgs {
						booleanArgField(booleanArg: $booleanArg)
					}
				}
			]]
			)
		end)

		it("Boolean => Boolean within fragment", function()
			expectValid(
				expect,
				[[
				fragment booleanArgFrag on ComplicatedArgs {
					booleanArgField(booleanArg: $booleanArg)
				}
				query Query($booleanArg: Boolean)
				{
					complicatedArgs {
						...booleanArgFrag
					}
				}
			]]
			)
			expectValid(
				expect,
				[[
				query Query($booleanArg: Boolean)
				{
					complicatedArgs {
						...booleanArgFrag
					}
				}
				fragment booleanArgFrag on ComplicatedArgs {
					booleanArgField(booleanArg: $booleanArg)
				}
			]]
			)
		end)

		it("Boolean! => Boolean", function()
			expectValid(
				expect,
				[[
				query Query($nonNullBooleanArg: Boolean!)
				{
					complicatedArgs {
						booleanArgField(booleanArg: $nonNullBooleanArg)
					}
				}
			]]
			)
		end)

		it("Boolean! => Boolean within fragment", function()
			expectValid(
				expect,
				[[
				fragment booleanArgFrag on ComplicatedArgs {
					booleanArgField(booleanArg: $nonNullBooleanArg)
				}

				query Query($nonNullBooleanArg: Boolean!)
				{
					complicatedArgs {
						...booleanArgFrag
					}
				}
			]]
			)
		end)

		it("[String] => [String]", function()
			expectValid(
				expect,
				[[
				query Query($stringListVar: [String])
				{
					complicatedArgs {
						stringListArgField(stringListArg: $stringListVar)
					}
				}
			]]
			)
		end)

		it("[String!] => [String]", function()
			expectValid(
				expect,
				[[
				query Query($stringListVar: [String!])
				{
					complicatedArgs {
						stringListArgField(stringListArg: $stringListVar)
					}
				}
			]]
			)
		end)

		it("String => [String] in item position", function()
			expectValid(
				expect,
				[[
				query Query($stringVar: String)
				{
					complicatedArgs {
						stringListArgField(stringListArg: [$stringVar])
					}
				}
			]]
			)
		end)

		it("String! => [String] in item position", function()
			expectValid(
				expect,
				[[
				query Query($stringVar: String!)
				{
					complicatedArgs {
						stringListArgField(stringListArg: [$stringVar])
					}
				}
			]]
			)
		end)

		it("ComplexInput => ComplexInput", function()
			expectValid(
				expect,
				[[
				query Query($complexVar: ComplexInput)
				{
					complicatedArgs {
						complexArgField(complexArg: $complexVar)
					}
				}
			]]
			)
		end)

		it("ComplexInput => ComplexInput in field position", function()
			expectValid(
				expect,
				[[
				query Query($boolVar: Boolean = false)
				{
					complicatedArgs {
						complexArgField(complexArg: {requiredArg: $boolVar})
					}
				}
			]]
			)
		end)

		it("Boolean! => Boolean! in directive", function()
			expectValid(
				expect,
				[[
				query Query($boolVar: Boolean!)
				{
					dog @include(if: $boolVar)
				}
			]]
			)
		end)

		it("Int => Int!", function()
			expectErrors(
				expect,
				[[
      query Query($intArg: Int) {
        complicatedArgs {
          nonNullIntArgField(nonNullIntArg: $intArg)
        }
      }
			]]
			).toEqual({
				{
					message = 'Variable "$intArg" of type "Int" used in position expecting type "Int!".',
					locations = {
						{ line = 2, column = 19 },
						{ line = 4, column = 45 },
					},
				},
			})
		end)

		it("Int => Int! within fragment", function()
			expectErrors(
				expect,
				[[
      fragment nonNullIntArgFieldFrag on ComplicatedArgs {
        nonNullIntArgField(nonNullIntArg: $intArg)
      }

      query Query($intArg: Int) {
        complicatedArgs {
          ...nonNullIntArgFieldFrag
        }
      }
			]]
			).toEqual({
				{
					message = 'Variable "$intArg" of type "Int" used in position expecting type "Int!".',
					locations = {
						{ line = 6, column = 19 },
						{ line = 3, column = 43 },
					},
				},
			})
		end)

		it("Int => Int! within nested fragment", function()
			expectErrors(
				expect,
				[[
      fragment outerFrag on ComplicatedArgs {
        ...nonNullIntArgFieldFrag
      }

      fragment nonNullIntArgFieldFrag on ComplicatedArgs {
        nonNullIntArgField(nonNullIntArg: $intArg)
      }

      query Query($intArg: Int) {
        complicatedArgs {
          ...outerFrag
        }
      }
			]]
			).toEqual({
				{
					message = 'Variable "$intArg" of type "Int" used in position expecting type "Int!".',
					locations = {
						{ line = 10, column = 19 },
						{ line = 7, column = 43 },
					},
				},
			})
		end)

		it("String over Boolean", function()
			expectErrors(
				expect,
				[[
      query Query($stringVar: String) {
        complicatedArgs {
          booleanArgField(booleanArg: $stringVar)
        }
      }
			]]
			).toEqual({
				{
					message = 'Variable "$stringVar" of type "String" used in position expecting type "Boolean".',
					locations = {
						{ line = 2, column = 19 },
						{ line = 4, column = 39 },
					},
				},
			})
		end)

		it("String => [String]", function()
			expectErrors(
				expect,
				[[
      query Query($stringVar: String) {
        complicatedArgs {
          stringListArgField(stringListArg: $stringVar)
        }
      }
			]]
			).toEqual({
				{
					message = 'Variable "$stringVar" of type "String" used in position expecting type "[String]".',
					locations = {
						{ line = 2, column = 19 },
						{ line = 4, column = 45 },
					},
				},
			})
		end)

		it("Boolean => Boolean! in directive", function()
			expectErrors(
				expect,
				[[
      query Query($boolVar: Boolean) {
        dog @include(if: $boolVar)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$boolVar" of type "Boolean" used in position expecting type "Boolean!".',
					locations = {
						{ line = 2, column = 19 },
						{ line = 3, column = 26 },
					},
				},
			})
		end)

		it("String => Boolean! in directive", function()
			expectErrors(
				expect,
				[[
      query Query($stringVar: String) {
        dog @include(if: $stringVar)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$stringVar" of type "String" used in position expecting type "Boolean!".',
					locations = {
						{ line = 2, column = 19 },
						{ line = 3, column = 26 },
					},
				},
			})
		end)

		it("[String] => [String!]", function()
			expectErrors(
				expect,
				[[
      query Query($stringListVar: [String])
      {
        complicatedArgs {
          stringListNonNullArgField(stringListNonNullArg: $stringListVar)
        }
      }
			]]
			).toEqual({
				{
					message = 'Variable "$stringListVar" of type "[String]" used in position expecting type "[String!]".',
					locations = {
						{ line = 2, column = 19 },
						{ line = 5, column = 59 },
					},
				},
			})
		end)

		describe("Allows optional (nullable) variables with default values", function()
			it("Int => Int! fails when variable provides null default value", function()
				expectErrors(
					expect,
					[[
        query Query($intVar: Int = null) {
          complicatedArgs {
            nonNullIntArgField(nonNullIntArg: $intVar)
          }
        }
				]]
				).toEqual({
					{
						message = 'Variable "$intVar" of type "Int" used in position expecting type "Int!".',
						locations = {
							{ line = 2, column = 21 },
							{
								line = 4,
								column = 47,
							},
						},
					},
				})
			end)

			it("Int => Int! when variable provides non-null default value", function()
				expectValid(
					expect,
					[[
					query Query($intVar: Int = 1) {
						complicatedArgs {
							nonNullIntArgField(nonNullIntArg: $intVar)
						}
					}]]
				)
			end)

			it("Int => Int! when optional argument provides default value", function()
				expectValid(
					expect,
					[[
					query Query($intVar: Int) {
						complicatedArgs {
							nonNullFieldWithDefault(nonNullIntArg: $intVar)
						}
					}]]
				)
			end)

			it("Boolean => Boolean! in directive with default value with option", function()
				expectValid(
					expect,
					[[
					query Query($boolVar: Boolean = false) {
						dog @include(if: $boolVar)
					}]]
				)
			end)
		end)
	end)
end
