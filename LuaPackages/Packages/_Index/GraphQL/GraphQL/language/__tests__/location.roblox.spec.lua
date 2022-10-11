--!nocheck
-- ROBLOX deviation: no upstream tests

return function()
	local getLocation = require(script.Parent.Parent.location).getLocation
	local Source = require(script.Parent.Parent.source).Source

	describe("Location", function()
		it("returns line and column", function()
			local body = "function ()\n" .. "    print('hi')\n" .. "end"
			local source = Source.new(body)
			expect(getLocation(source, 4)).toEqual({ line = 1, column = 4 })
		end)
	end)
end
