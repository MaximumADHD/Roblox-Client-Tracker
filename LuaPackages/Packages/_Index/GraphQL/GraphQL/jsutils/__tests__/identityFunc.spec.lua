--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/__tests__/identityFunc-test.js
return function()
	local jsutils = script.Parent.Parent
	local identityFunc = require(jsutils.identityFunc).identityFunc

	describe("identityFunc", function()
		it("returns the first argument it receives", function()
			-- ROBLOX deviation START: empty param violates type spec, no difference in null vs undefined in Lua
			expect((identityFunc :: any)()).to.equal(nil)
			expect(identityFunc(nil)).to.equal(nil)
			-- ROBLOX deviation END

			local obj = {}
			expect(identityFunc(obj)).to.equal(obj)
		end)
	end)
end
