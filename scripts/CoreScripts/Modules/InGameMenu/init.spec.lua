return function()
	it("should require without errors", function()
		local InGameMenu = require(script.Parent)
		expect(InGameMenu).to.be.ok()
	end)
end
