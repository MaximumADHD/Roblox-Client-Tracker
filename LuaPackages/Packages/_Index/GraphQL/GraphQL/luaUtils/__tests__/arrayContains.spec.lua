return function()
	local arrayContains = require(script.Parent.Parent.arrayContains)

	describe("arrayContains", function()
		it("table contains simple string", function()
			local tbl = { "a", "b", "c" }
			local actual = arrayContains(tbl, "b")
			expect(actual).to.equal(true)
		end)

		it("table contains obj with same value", function()
			local tbl = { { name = "a" }, { name = "b" }, { name = "c" } }
			local actual = arrayContains(tbl, { name = "b" })
			expect(actual).to.equal(true)
		end)
	end)
end
