--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/__testUtils__/__tests__/resolveOnNextTick-test.js

return function()
	local resolveOnNextTick = require(script.Parent.Parent.resolveOnNextTick)
	local Promise = require(script.Parent.Parent.Parent.Parent.Promise)

	describe("resolveOnNextTick", function()
		it("resolves promise on the next tick", function()
			local output = {}

			local promise1 = resolveOnNextTick():andThen(function()
				table.insert(output, "second")
			end)

			-- ROBLOX deviation: wait two ticks because of race condition
			local promise2 = resolveOnNextTick():andThen(resolveOnNextTick):andThen(function()
				table.insert(output, "third")
			end)

			table.insert(output, "first")

			Promise.all({ promise2, promise1 }):expect()

			expect(output).toEqual({ "first", "second", "third" })
		end)
	end)
end
