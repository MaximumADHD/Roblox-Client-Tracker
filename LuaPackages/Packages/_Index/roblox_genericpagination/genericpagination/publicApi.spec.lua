return function()
	it("SHOULD return a valid, constructable object", function()
		local api = require(script.Parent)
		expect(api).to.be.ok()
		expect(api.new).to.be.ok()
	end)
end
