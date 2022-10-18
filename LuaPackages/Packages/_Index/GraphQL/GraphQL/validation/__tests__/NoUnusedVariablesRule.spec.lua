--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/NoUnusedVariablesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local NoUnusedVariablesRule =
		require(validationWorkspace.rules.NoUnusedVariablesRule).NoUnusedVariablesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, NoUnusedVariablesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: No unused variables", function()
		it("uses all variables", function()
			expectValid(
				expect,
				[[
				query ($a: String, $b: String, $c: String) {
					field(a: $a, b: $b, c: $c)
				}
			]]
			)
		end)

		it("uses all variables deeply", function()
			expectValid(
				expect,
				[[
				query Foo($a: String, $b: String, $c: String) {
					field(a: $a) {
						field(b: $b) {
							field(c: $c)
						}
					}
				}
			]]
			)
		end)

		it("uses all variables deeply in inline fragments", function()
			expectValid(
				expect,
				[[
				query Foo($a: String, $b: String, $c: String) {
					... on Type {
						field(a: $a) {
							field(b: $b) {
								... on Type {
									field(c: $c)
								}
							}
						}
					}
				}
			]]
			)
		end)

		it("uses all variables in fragments", function()
			expectValid(
				expect,
				[[
				query Foo($a: String, $b: String, $c: String) {
					...FragA
				}
				fragment FragA on Type {
					field(a: $a) {
						...FragB
					}
				}
				fragment FragB on Type {
					field(b: $b) {
						...FragC
					}
				}
				fragment FragC on Type {
					field(c: $c)
				}
			]]
			)
		end)

		it("variable used by fragment in multiple operations", function()
			expectValid(
				expect,
				[[
				query Foo($a: String) {
					...FragA
				}
				query Bar($b: String) {
					...FragB
				}
				fragment FragA on Type {
					field(a: $a)
				}
				fragment FragB on Type {
					field(b: $b)
				}
			]]
			)
		end)

		it("variable used by recursive fragment", function()
			expectValid(
				expect,
				[[
				query Foo($a: String) {
					...FragA
				}
				fragment FragA on Type {
					field(a: $a) {
						...FragA
					}
				}
			]]
			)
		end)

		it("variable not used", function()
			expectErrors(
				expect,
				[[
      query ($a: String, $b: String, $c: String) {
        field(a: $a, b: $b)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$c" is never used.',
					locations = { { line = 2, column = 38 } },
				},
			})
		end)

		it("multiple variables not used", function()
			expectErrors(
				expect,
				[[
      query Foo($a: String, $b: String, $c: String) {
        field(b: $b)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$a" is never used in operation "Foo".',
					locations = { { line = 2, column = 17 } },
				},
				{
					message = 'Variable "$c" is never used in operation "Foo".',
					locations = { { line = 2, column = 41 } },
				},
			})
		end)

		it("variable not used in fragments", function()
			expectErrors(
				expect,
				[[
      query Foo($a: String, $b: String, $c: String) {
        ...FragA
      }
      fragment FragA on Type {
        field(a: $a) {
          ...FragB
        }
      }
      fragment FragB on Type {
        field(b: $b) {
          ...FragC
        }
      }
      fragment FragC on Type {
        field
      }
			]]
			).toEqual({
				{
					message = 'Variable "$c" is never used in operation "Foo".',
					locations = { { line = 2, column = 41 } },
				},
			})
		end)

		it("multiple variables not used in fragments", function()
			expectErrors(
				expect,
				[[
      query Foo($a: String, $b: String, $c: String) {
        ...FragA
      }
      fragment FragA on Type {
        field {
          ...FragB
        }
      }
      fragment FragB on Type {
        field(b: $b) {
          ...FragC
        }
      }
      fragment FragC on Type {
        field
      }
			]]
			).toEqual({
				{
					message = 'Variable "$a" is never used in operation "Foo".',
					locations = { { line = 2, column = 17 } },
				},
				{
					message = 'Variable "$c" is never used in operation "Foo".',
					locations = { { line = 2, column = 41 } },
				},
			})
		end)

		it("variable not used by unreferenced fragment", function()
			expectErrors(
				expect,
				[[
      query Foo($b: String) {
        ...FragA
      }
      fragment FragA on Type {
        field(a: $a)
      }
      fragment FragB on Type {
        field(b: $b)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$b" is never used in operation "Foo".',
					locations = { { line = 2, column = 17 } },
				},
			})
		end)

		it("variable not used by fragment used by other operation", function()
			expectErrors(
				expect,
				[[
      query Foo($b: String) {
        ...FragA
      }
      query Bar($a: String) {
        ...FragB
      }
      fragment FragA on Type {
        field(a: $a)
      }
      fragment FragB on Type {
        field(b: $b)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$b" is never used in operation "Foo".',
					locations = { { line = 2, column = 17 } },
				},
				{
					message = 'Variable "$a" is never used in operation "Bar".',
					locations = { { line = 5, column = 17 } },
				},
			})
		end)
	end)
end
