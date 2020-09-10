local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local setEquals = Framework.TestHelpers.setEquals

local SetHelper = require(script.Parent.SetHelper)

return function()
	describe("arrayToSet", function()
		local ats = SetHelper.arrayToSet

		it("should work", function()
			expect(setEquals(ats({"foo", "bar", "baz"}),
				{foo = true, bar = true, baz = true})).to.equal(true)
		end)
	end)

	describe("diff", function()
		local diff = SetHelper.diff

		it("should work", function()
			expect(setEquals(diff({foo = true, bar = true}, {bar = true, baz = true}),
				{foo = true})).to.equal(true)
		end)
	end)

	describe("splitArrayIntoValidSets", function()
		local saivs = SetHelper.splitArrayIntoValidSets

		it("should work", function()
			local values = {"foo", "bar", "baz"}

			local filter = function(thing)
				return thing:sub(1, 1) == "b"
			end

			local valid, invalid = saivs(values, filter)

			expect(setEquals(valid, {bar = true, baz = true})).to.equal(true)
			expect(setEquals(invalid, {foo = true})).to.equal(true)
		end)
	end)

	describe("isAnyInstanceAncestorInSet", function()
		local iaiais = SetHelper.isAnyInstanceAncestorInSet

		it("should work", function()
			local m = Instance.new("Model")
			local m2 = Instance.new("Model", m)
			local m3 = Instance.new("Model", m2)
			local p = Instance.new("Part", m3)

			local otherModel = Instance.new("Model")

			expect(iaiais(p, {[p] = true})).to.equal(true)
			expect(iaiais(p, {[m] = true})).to.equal(true)
			expect(iaiais(p, {[otherModel] = true})).to.equal(false)
		end)
	end)
end
