return function()
	local luaUtils = script.Parent.Parent
	local isNillish = require(luaUtils.isNillish).isNillish
	local isNotNillish = require(luaUtils.isNillish).isNotNillish
	local NULL = require(luaUtils.null)

	describe("isNillish", function()
		it("returns true when nil", function()
			expect(isNillish(nil)).to.equal(true)
		end)

		it("returns true when NULL", function()
			expect(isNillish(NULL)).to.equal(true)
		end)

		it("returns false when empty table", function()
			expect(isNillish({})).to.equal(false)
		end)

		it("returns false when scalar value", function()
			expect(isNillish("foo")).to.equal(false)
		end)

		it("returns false when false", function()
			expect(isNillish(false)).to.equal(false)
		end)
	end)

	describe("isNotNillish", function()
		it("returns false when nil", function()
			expect(isNotNillish(nil)).to.equal(false)
		end)

		it("returns false when NULL", function()
			expect(isNotNillish(NULL)).to.equal(false)
		end)

		it("returns true when empty table", function()
			expect(isNotNillish({})).to.equal(true)
		end)

		it("returns true when scalar value", function()
			expect(isNotNillish("foo")).to.equal(true)
		end)

		it("returns true when true", function()
			expect(isNotNillish(true)).to.equal(true)
		end)

		it("returns true when false", function()
			expect(isNotNillish(false)).to.equal(true)
		end)
	end)
end
