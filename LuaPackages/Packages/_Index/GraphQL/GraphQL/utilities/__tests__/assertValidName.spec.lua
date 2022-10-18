--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/__tests__/assertValidName-test.js

local assertValidName = require(script.Parent.Parent.assertValidName).assertValidName

return function()
	describe("assertValidName()", function()
		it("passthrough valid name", function()
			expect(assertValidName("_ValidName123")).to.equal("_ValidName123")
		end)

		it("throws for use of leading double underscores", function()
			-- ROBLOX Deviation: TestEz does not support .throw(<some-regex>), so the message check is done with pcall
			local _ok, thrownError = pcall(function()
				return assertValidName("__bad")
			end)
			expect(_ok).to.equal(false)
			local containsRequiredText = string.find(
				thrownError.message,
				'"__bad" must not begin with "__", which is reserved by GraphQL introspection.'
			)
			expect(containsRequiredText).to.be.ok()
		end)

		it("throws for non-strings", function()
			-- $FlowExpectedError[incompatible-call]
			expect(function()
				return assertValidName({})
			end).to.throw("Expected name to be a string.")
		end)

		it("throws for names with invalid characters", function()
			-- ROBLOX Deviation: TestEz does not support .throw(<some-regex>), so the message check is done with pcall
			local _ok, thrownError = pcall(function()
				return assertValidName(">--()-->")
			end)
			expect(_ok).to.equal(false)
			local containsRequiredText = string.find(thrownError.message, "Names must match")
			expect(containsRequiredText).to.be.ok()
		end)
	end)
end
