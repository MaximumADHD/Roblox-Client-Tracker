return function()
	it("should require without errors", function()
		local FTUXMenu = require(script.Parent)
		expect(FTUXMenu).to.be.ok()
	end)
end
