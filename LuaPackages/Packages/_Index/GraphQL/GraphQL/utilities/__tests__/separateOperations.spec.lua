--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/separateOperations-test.js

return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local languageWorkspace = srcWorkspace.language
	local parse = require(languageWorkspace.parser).parse
	local mapValue = require(srcWorkspace.jsutils.mapValue).mapValue
	local separateOperations = require(srcWorkspace.utilities.separateOperations).separateOperations
	local print_ = require(srcWorkspace.language.printer).print
	local dedent = require(srcWorkspace.__testUtils__.dedent).dedent

	describe("separateOperations", function()
		it("separates one AST into multiple, maintaining document order", function()
			local ast = parse([[
      {
        ...Y
        ...X
      }

      query One {
        foo
        bar
        ...A
        ...X
      }

      fragment A on T {
        field
        ...B
      }

      fragment X on T {
        fieldX
      }

      query Two {
        ...A
        ...Y
        baz
      }

      fragment Y on T {
        fieldY
      }

      fragment B on T {
        something
      }
	]])

			local separatedASTs = mapValue(separateOperations(ast), print_)
			expect(separatedASTs).toEqual({
				[""] = dedent([[
        {
          ...Y
          ...X
        }

        fragment X on T {
          fieldX
        }

        fragment Y on T {
          fieldY
        }
	  ]]),
				One = dedent([[
        query One {
          foo
          bar
          ...A
          ...X
        }

        fragment A on T {
          field
          ...B
        }

        fragment X on T {
          fieldX
        }

        fragment B on T {
          something
        }
	  ]]),
				Two = dedent([[
        fragment A on T {
          field
          ...B
        }

        query Two {
          ...A
          ...Y
          baz
        }

        fragment Y on T {
          fieldY
        }

        fragment B on T {
          something
        }
      ]]),
			})
		end)

		it("survives circular dependencies", function()
			local ast = parse([[
      query One {
        ...A
      }

      fragment A on T {
        ...B
      }

      fragment B on T {
        ...A
      }

      query Two {
        ...B
      }
	]])

			local separatedASTs = mapValue(separateOperations(ast), print_)
			expect(separatedASTs).toEqual({
				One = dedent([[
        query One {
          ...A
        }

        fragment A on T {
          ...B
        }

        fragment B on T {
          ...A
        }
	  ]]),
				Two = dedent([[
        fragment A on T {
          ...B
        }

        fragment B on T {
          ...A
        }

        query Two {
          ...B
        }
      ]]),
			})
		end)

		it("distinguish query and fragment names", function()
			local ast = parse([[
      {
        ...NameClash
      }

      fragment NameClash on T {
        oneField
      }

      query NameClash {
        ...ShouldBeSkippedInFirstQuery
      }

      fragment ShouldBeSkippedInFirstQuery on T {
        twoField
      }
	]])
			local separatedASTs = mapValue(separateOperations(ast), print_)
			expect(separatedASTs).toEqual({
				[""] = dedent([[
        {
          ...NameClash
        }

        fragment NameClash on T {
          oneField
        }
	  ]]),
				NameClash = dedent([[
        query NameClash {
          ...ShouldBeSkippedInFirstQuery
        }

        fragment ShouldBeSkippedInFirstQuery on T {
          twoField
        }
      ]]),
			})
		end)

		it("handles unknown fragments", function()
			local ast = parse([[
      {
        ...Unknown
        ...Known
      }

      fragment Known on T {
        someField
      }
	]])

			local separatedASTs = mapValue(separateOperations(ast), print_)
			expect(separatedASTs).toEqual({
				[""] = dedent([[
        {
          ...Unknown
          ...Known
        }

        fragment Known on T {
          someField
        }
      ]]),
			})
		end)
	end)
end
