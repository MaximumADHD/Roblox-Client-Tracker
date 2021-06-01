return function()
	local formatAlias = require(script.Parent.formatAlias)

	it("SHOULD return proper alias formatted", function()
		expect(formatAlias("joe")).to.equal("(joe)")
		expect(formatAlias("%s")).to.equal("(%s)")
		expect(formatAlias("(((*hi*)))")).to.equal("((((*hi*))))")
		expect(formatAlias("()")).to.equal("(())")
		expect(formatAlias("0")).to.equal("(0)")
	end)

end