--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/concatAST-test.js

return function()
	local languageWorkspace = script.Parent.Parent.Parent.language

	local dedent = require(script.Parent.Parent.Parent.__testUtils__.dedent).dedent

	local parse = require(languageWorkspace.parser).parse
	local print_ = require(languageWorkspace.printer).print
	local Source = require(languageWorkspace.source).Source

	local concatAST = require(script.Parent.Parent.concatAST).concatAST

	describe("concat", function()
		it("concatenates two ASTs together", function()
			local sourceA = Source.new([[
      { a, b, ...Frag }
    ]])

			local sourceB = Source.new([[
      fragment Frag on T {
        c
      }
	]])

			local astA = parse(sourceA)
			local astB = parse(sourceB)
			local astC = concatAST({ astA, astB })

			expect(print_(astC)).toEqual(dedent([[
      {
        a
        b
        ...Frag
      }

      fragment Frag on T {
        c
      }
    ]]))
		end)
	end)
end
