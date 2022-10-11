return function()
	local toArrayContains = require(script.Parent.Parent.toArrayContains)

	describe("toArrayContains", function()
		it("should fail with a message printing full table values", function()
			local tbl = { { name = "a" } }
			local item = { name = "d" }
			local result = toArrayContains(tbl, item)

			expect(result.pass).to.equal(false)
		end)

		it("should pass if given value in array", function()
			local tbl = { { name = "a" }, { name = "b" }, { name = "c" } }
			local item = { name = "b" }
			local result = toArrayContains(tbl, item)

			expect(result.pass).to.equal(true)
		end)

		it("should pass when using loose equal checking", function()
			local tbl = { { name = "a" }, { name = "b", extraProp = "d" }, { name = "c" } }
			local item = { name = "b" }
			local result = toArrayContains(tbl, item, true)

			expect(result.pass).to.equal(true)
		end)
	end)
end
