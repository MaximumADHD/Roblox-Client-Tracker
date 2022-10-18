--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/__tests__/NoUndefinedVariablesRule-test.js

return function()
	local validationWorkspace = script.Parent.Parent
	local NoUndefinedVariablesRule =
		require(validationWorkspace.rules.NoUndefinedVariablesRule).NoUndefinedVariablesRule
	local harness = require(script.Parent.harness)
	local expectValidationErrors = harness.expectValidationErrors

	local function expectErrors(expect_, queryStr: string)
		-- ROBLOX deviation: we append a new line at the begining of the
		-- query string because of how Lua multiline strings works (it does
		-- take the new line if it's the first character of the string)
		return expectValidationErrors(expect_, NoUndefinedVariablesRule, "\n" .. queryStr)
	end

	local function expectValid(expect_, queryStr: string)
		expectErrors(expect_, queryStr).toEqual({})
	end

	describe("Validate: No undefined variables", function()
		it("all variables defined", function()
			expectValid(
				expect,
				[[
				query Foo($a: String, $b: String, $c: String) {
					field(a: $a, b: $b, c: $c)
				}
			]]
			)
		end)

		it("all variables deeply defined", function()
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

		it("all variables deeply in inline fragments defined", function()
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

		it("all variables in fragments deeply defined", function()
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

		it("variable within single fragment defined in multiple operations", function()
			expectValid(
				expect,
				[[
				query Foo($a: String) {
					...FragA
				}
				query Bar($a: String) {
					...FragA
				}
				fragment FragA on Type {
					field(a: $a)
				}
			]]
			)
		end)

		it("variable within fragments defined in operations", function()
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

		it("variable within recursive fragment defined", function()
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

		it("variable not defined", function()
			expectErrors(
				expect,
				[[
      query Foo($a: String, $b: String, $c: String) {
        field(a: $a, b: $b, c: $c, d: $d)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$d" is not defined by operation "Foo".',
					locations = {
						{ line = 3, column = 39 },
						{ line = 2, column = 7 },
					},
				},
			})
		end)

		it("variable not defined by un-named query", function()
			expectErrors(
				expect,
				[[
      {
        field(a: $a)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$a" is not defined.',
					locations = {
						{ line = 3, column = 18 },
						{ line = 2, column = 7 },
					},
				},
			})
		end)

		it("multiple variables not defined", function()
			expectErrors(
				expect,
				[[
      query Foo($b: String) {
        field(a: $a, b: $b, c: $c)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$a" is not defined by operation "Foo".',
					locations = {
						{ line = 3, column = 18 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$c" is not defined by operation "Foo".',
					locations = {
						{ line = 3, column = 32 },
						{ line = 2, column = 7 },
					},
				},
			})
		end)

		it("variable in fragment not defined by un-named query", function()
			expectErrors(
				expect,
				[[
      {
        ...FragA
      }
      fragment FragA on Type {
        field(a: $a)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$a" is not defined.',
					locations = {
						{ line = 6, column = 18 },
						{ line = 2, column = 7 },
					},
				},
			})
		end)

		it("variable in fragment not defined by operation", function()
			expectErrors(
				expect,
				[[
      query Foo($a: String, $b: String) {
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
			).toEqual({
				{
					message = 'Variable "$c" is not defined by operation "Foo".',
					locations = {
						{ line = 16, column = 18 },
						{ line = 2, column = 7 },
					},
				},
			})
		end)

		it("multiple variables in fragments not defined", function()
			expectErrors(
				expect,
				[[
      query Foo($b: String) {
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
			).toEqual({
				{
					message = 'Variable "$a" is not defined by operation "Foo".',
					locations = {
						{ line = 6, column = 18 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$c" is not defined by operation "Foo".',
					locations = {
						{ line = 16, column = 18 },
						{ line = 2, column = 7 },
					},
				},
			})
		end)

		it("single variable in fragment not defined by multiple operations", function()
			expectErrors(
				expect,
				[[
      query Foo($a: String) {
        ...FragAB
      }
      query Bar($a: String) {
        ...FragAB
      }
      fragment FragAB on Type {
        field(a: $a, b: $b)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$b" is not defined by operation "Foo".',
					locations = {
						{ line = 9, column = 25 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$b" is not defined by operation "Bar".',
					locations = {
						{ line = 9, column = 25 },
						{ line = 5, column = 7 },
					},
				},
			})
		end)

		it("variables in fragment not defined by multiple operations", function()
			expectErrors(
				expect,
				[[
      query Foo($b: String) {
        ...FragAB
      }
      query Bar($a: String) {
        ...FragAB
      }
      fragment FragAB on Type {
        field(a: $a, b: $b)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$a" is not defined by operation "Foo".',
					locations = {
						{ line = 9, column = 18 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$b" is not defined by operation "Bar".',
					locations = {
						{ line = 9, column = 25 },
						{ line = 5, column = 7 },
					},
				},
			})
		end)

		it("variable in fragment used by other operation", function()
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
					message = 'Variable "$a" is not defined by operation "Foo".',
					locations = {
						{ line = 9, column = 18 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$b" is not defined by operation "Bar".',
					locations = {
						{ line = 12, column = 18 },
						{ line = 5, column = 7 },
					},
				},
			})
		end)

		it("multiple undefined variables produce multiple errors", function()
			expectErrors(
				expect,
				[[
      query Foo($b: String) {
        ...FragAB
      }
      query Bar($a: String) {
        ...FragAB
      }
      fragment FragAB on Type {
        field1(a: $a, b: $b)
        ...FragC
        field3(a: $a, b: $b)
      }
      fragment FragC on Type {
        field2(c: $c)
      }
			]]
			).toEqual({
				{
					message = 'Variable "$a" is not defined by operation "Foo".',
					locations = {
						{ line = 9, column = 19 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$a" is not defined by operation "Foo".',
					locations = {
						{ line = 11, column = 19 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$c" is not defined by operation "Foo".',
					locations = {
						{ line = 14, column = 19 },
						{ line = 2, column = 7 },
					},
				},
				{
					message = 'Variable "$b" is not defined by operation "Bar".',
					locations = {
						{ line = 9, column = 26 },
						{ line = 5, column = 7 },
					},
				},
				{
					message = 'Variable "$b" is not defined by operation "Bar".',
					locations = {
						{ line = 11, column = 26 },
						{ line = 5, column = 7 },
					},
				},
				{
					message = 'Variable "$c" is not defined by operation "Bar".',
					locations = {
						{ line = 14, column = 19 },
						{ line = 5, column = 7 },
					},
				},
			})
		end)
	end)
end
