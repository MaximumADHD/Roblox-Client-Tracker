return function()
	it("should require without errors", function()
		local TopBarApp = require(script.Parent)
		expect(TopBarApp).to.be.ok()
	end)
end
