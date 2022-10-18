--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/KnownFragmentNamesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local KnownFragmentNamesRule =
		require(validationWorkspace.rules.KnownFragmentNamesRule).KnownFragmentNamesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, KnownFragmentNamesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: Known fragment names", function()
		it("known fragment names are valid", function()
			expectValid(
				expect,
				[[
				{
					human(id: 4) {
						...HumanFields1
						... on Human {
							...HumanFields2
						}
						... {
							name
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

		it("unknown fragment names are invalid", function()
			expectErrors(
				expect,
				[[
      {
        human(id: 4) {
          ...UnknownFragment1
          ... on Human {
            ...UnknownFragment2
          }
        }
      }
      fragment HumanFields on Human {
        name
        ...UnknownFragment3
      }
			]]
			).toEqual({
				{
					message = 'Unknown fragment "UnknownFragment1".',
					locations = { { line = 4, column = 14 } },
				},
				{
					message = 'Unknown fragment "UnknownFragment2".',
					locations = { { line = 6, column = 16 } },
				},
				{
					message = 'Unknown fragment "UnknownFragment3".',
					locations = { { line = 12, column = 12 } },
				},
			})
		end)
	end)
end
