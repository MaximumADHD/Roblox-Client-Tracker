--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/getOperationAST-test.js

return function()
	local utilities = script.Parent.Parent
	local language = utilities.Parent.language
	local parse = require(language.parser).parse
	local getOperationAST = require(utilities.getOperationAST).getOperationAST

	describe("getOperationAST", function()
		it("Gets an operation from a simple document", function()
			local doc = parse("{ field }")
			expect(getOperationAST(doc)).toEqual(doc.definitions[1])
		end)

		it("Gets an operation from a document with named op (mutation)", function()
			local doc = parse("mutation Test { field }")
			expect(getOperationAST(doc)).toEqual(doc.definitions[1])
		end)

		it("Gets an operation from a document with named op (subscription)", function()
			local doc = parse("subscription Test { field }")
			expect(getOperationAST(doc)).toEqual(doc.definitions[1])
		end)

		it("Does not get missing operation", function()
			local doc = parse("type Foo { field: String }")
			expect(getOperationAST(doc)).toEqual(nil)
		end)

		it("Does not get ambiguous unnamed operation", function()
			local doc = parse([[
      { field }
      mutation Test { field }
      subscription TestSub { field }
    ]])
			expect(getOperationAST(doc)).toEqual(nil)
		end)

		it("Does not get ambiguous named operation", function()
			local doc = parse([[
      query TestQ { field }
      mutation TestM { field }
      subscription TestS { field }
    ]])
			expect(getOperationAST(doc)).toEqual(nil)
		end)

		it("Does not get misnamed operation", function()
			local doc = parse([[
      { field }

      query TestQ { field }
      mutation TestM { field }
      subscription TestS { field }
    ]])
			expect(getOperationAST(doc, "Unknown")).toEqual(nil)
		end)

		it("Gets named operation", function()
			local doc = parse([[
      query TestQ { field }
      mutation TestM { field }
      subscription TestS { field }
    ]])
			expect(getOperationAST(doc, "TestQ")).toEqual(doc.definitions[1])
			expect(getOperationAST(doc, "TestM")).toEqual(doc.definitions[2])
			expect(getOperationAST(doc, "TestS")).toEqual(doc.definitions[3])
		end)
	end)
end
