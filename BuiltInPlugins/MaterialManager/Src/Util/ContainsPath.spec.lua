return function()
	local Plugin = script.Parent.Parent.Parent

	local ContainsPath = require(Plugin.Src.Util.ContainsPath)

	it("exact directory match", function()
		local path = { "All", "Long", "Paths", "Are", "Equal"}
		local other = { "All", "Long", "Paths", "Are", "Equal"}
		expect(ContainsPath(path, other)).to.equal(true)
	end)

	it("child directory match", function()
		local path = { "All", "Long", "Paths"}
		local other = { "All", "Long", "Paths", "Are", "Cool"}
		expect(ContainsPath(path, other)).to.equal(true)
	end)

	it("is child directory mismatch", function()
		local path = { "All", "Long", "Paths", "Are", "Cool"}
		local other = { "All", "Long", "Paths"}
		expect(ContainsPath(path, other)).to.equal(false)
	end)

	it("unrelated directory mismatch", function()
		local path = { "All", "Long", "Paths", "Are", "Equal"}
		local other = { "All", "Long", "Paths", "Are", "Long"}
		expect(ContainsPath(path, other)).to.equal(false)
	end)
end
