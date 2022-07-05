local Plugin = script.Parent.Parent.Parent

local DamerauLevenshteinDistance = require(Plugin.Src.Util.DamerauLevenshteinDistance)

return function()
	it("no difference between lowercase and uppercase letters", function()
		local name = "Brick"
		local search = "brIck"
		expect(DamerauLevenshteinDistance(name, search)).to.equal(0)
	end)

	it("deletion check", function()
		local name = "Brick"
		local search = "Brck"
		expect(DamerauLevenshteinDistance(name, search)).to.equal(1)
	end)

	it("insertion check", function()
		local name = "Brick"
		local search = "BriAck"
		expect(DamerauLevenshteinDistance(name, search)).to.equal(1)
	end)

	it("substitution check", function()
		local name = "Brick"
		local search = "Brack"
		expect(DamerauLevenshteinDistance(name, search)).to.equal(1)
	end)

    it("transposition check", function()
		local name = "Brick"
		local search = "Brcik"
		expect(DamerauLevenshteinDistance(name, search)).to.equal(1)
	end)
end
