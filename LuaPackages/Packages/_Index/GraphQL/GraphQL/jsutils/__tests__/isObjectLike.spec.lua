--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/__tests__/isObjectLike-test.js
return function()
	local jsutils = script.Parent.Parent

	local identityFunc = require(jsutils.identityFunc).identityFunc
	local isObjectLike = require(jsutils.isObjectLike).isObjectLike

	describe("isObjectLike", function()
		it("should return `true` for objects", function()
			-- deviation: only tables can be considered objects
			expect(isObjectLike({})).to.equal(true)
			-- expect(isObjectLike(Object.create(nil))).to.equal(true)
			-- expect(isObjectLike(/a/)).to.equal(true)
			-- expect(isObjectLike({})).to.equal(true)
		end)

		it("should return `false` for non-objects", function()
			expect(isObjectLike(nil)).to.equal(false)
			expect(isObjectLike(nil)).to.equal(false)
			expect(isObjectLike(true)).to.equal(false)
			expect(isObjectLike("")).to.equal(false)
			expect(isObjectLike(identityFunc)).to.equal(false)
		end)
	end)
end
