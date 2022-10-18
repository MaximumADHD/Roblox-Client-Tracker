--!nocheck
--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/__tests__/source-test.js

return function()
	local Source = require(script.Parent.Parent.source).Source
	describe("Source", function()
		it("can be Object.toStringified", function()
			local source = Source.new("")

			expect(tostring(source)).toEqual("{table Source}")
		end)

		it("rejects invalid locationOffset", function()
			local function createSource(locationOffset)
				return Source.new("", "", locationOffset)
			end

			expect(function()
				createSource({ line = 0, column = 1 })
			end).to.throw("line in locationOffset is 1-indexed and must be positive.")

			expect(function()
				createSource({ line = -1, column = 1 })
			end).to.throw("line in locationOffset is 1-indexed and must be positive.")

			expect(function()
				createSource({ line = 1, column = 0 })
			end).to.throw("column in locationOffset is 1-indexed and must be positive.")

			expect(function()
				createSource({ line = 1, column = -1 })
			end).to.throw("column in locationOffset is 1-indexed and must be positive.")
		end)
	end)
end
