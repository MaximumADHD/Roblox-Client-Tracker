return function()
	local buildActionName = require(script.Parent.buildActionName)

	it("SHOULD concat networkStatus: to keyPath", function()
		local result = buildActionName({
			keyPath = "Hello",
		})
		expect(result).to.equal("networkStatus:Hello")
	end)

	it("SHOULD concat networkStatus: to keyPath with depth", function()
		local result = buildActionName({
			keyPath = "Hello.World",
		})
		expect(result).to.equal("networkStatus:Hello.World")
	end)
end
