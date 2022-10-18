--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/__testUtils__/__tests__/inspectStr-test.js

return function()
	local inspectStr = require(script.Parent.Parent.inspectStr).inspectStr

	describe("inspectStr", function()
		-- ROBLOX deviation: Lua has only nil value instead of null & undefined
		it("handles nil values", function()
			expect(inspectStr(nil)).to.equal("nil")
		end)

		it("correctly print various strings", function()
			expect(inspectStr("")).to.equal("``")
			expect(inspectStr("a")).to.equal("`a`")
			expect(inspectStr('"')).to.equal('`"`')
			expect(inspectStr("'")).to.equal("`'`")
			expect(inspectStr('\\"')).to.equal('`\\"`')
		end)
	end)
end
