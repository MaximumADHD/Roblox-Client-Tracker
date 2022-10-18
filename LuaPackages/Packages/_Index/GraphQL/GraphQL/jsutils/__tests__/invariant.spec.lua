--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/__tests__/invariant-test.js
return function()
	local jsutils = script.Parent.Parent
	local invariant = require(jsutils.invariant).invariant

	describe("invariant", function()
		it("throws on false conditions", function()
			expect(function()
				return invariant(false, "Oops!")
			end).to.throw("Oops!")
		end)

		it("use default error message", function()
			expect(function()
				return invariant(false)
			end).to.throw("Unexpected invariant triggered.")
		end)
	end)
end
