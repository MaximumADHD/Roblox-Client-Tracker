--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/NoUndefinedVariablesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local NoUnusedFragmentsRule =
		require(validationWorkspace.rules.NoUnusedFragmentsRule).NoUnusedFragmentsRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, NoUnusedFragmentsRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: No unused fragments", function()
		it("all fragment names are used", function()
			expectValid(
				expect,
				[[
				{
					human(id: 4) {
						...HumanFields1
						... on Human {
							...HumanFields2
						}
					}
				}
				fragment HumanFields1 on Human {
					name
					...HumanFields3
				}
				fragment HumanFields2 on Human {
					name
				}
				fragment HumanFields3 on Human {
					name
				}
			]]
			)
		end)

		it("all fragment names are used by multiple operations", function()
			expectValid(
				expect,
				[[
				query Foo {
					human(id: 4) {
						...HumanFields1
					}
				}
				query Bar {
					human(id: 4) {
						...HumanFields2
					}
				}
				fragment HumanFields1 on Human {
					name
					...HumanFields3
				}
				fragment HumanFields2 on Human {
					name
				}
				fragment HumanFields3 on Human {
					name
				}
			]]
			)
		end)

		it("contains unknown fragments", function()
			expectErrors(
				expect,
				[[
      query Foo {
        human(id: 4) {
          ...HumanFields1
        }
      }
      query Bar {
        human(id: 4) {
          ...HumanFields2
        }
      }
      fragment HumanFields1 on Human {
        name
        ...HumanFields3
      }
      fragment HumanFields2 on Human {
        name
      }
      fragment HumanFields3 on Human {
        name
      }
      fragment Unused1 on Human {
        name
      }
      fragment Unused2 on Human {
        name
      }
			]]
			).toEqual({
				{
					message = 'Fragment "Unused1" is never used.',
					locations = { { line = 22, column = 7 } },
				},
				{
					message = 'Fragment "Unused2" is never used.',
					locations = { { line = 25, column = 7 } },
				},
			})
		end)

		it("contains unknown fragments with ref cycle", function()
			expectErrors(
				expect,
				[[
      query Foo {
        human(id: 4) {
          ...HumanFields1
        }
      }
      query Bar {
        human(id: 4) {
          ...HumanFields2
        }
      }
      fragment HumanFields1 on Human {
        name
        ...HumanFields3
      }
      fragment HumanFields2 on Human {
        name
      }
      fragment HumanFields3 on Human {
        name
      }
      fragment Unused1 on Human {
        name
        ...Unused2
      }
      fragment Unused2 on Human {
        name
        ...Unused1
      }
			]]
			).toEqual({
				{
					message = 'Fragment "Unused1" is never used.',
					locations = { { line = 22, column = 7 } },
				},
				{
					message = 'Fragment "Unused2" is never used.',
					locations = { { line = 26, column = 7 } },
				},
			})
		end)

		it("contains unknown and undef fragments", function()
			expectErrors(
				expect,
				[[
      query Foo {
        human(id: 4) {
          ...bar
        }
      }
      fragment foo on Human {
        name
      }
			]]
			).toEqual({
				{
					message = 'Fragment "foo" is never used.',
					locations = { { line = 7, column = 7 } },
				},
			})
		end)
	end)
end
