return function()
	it("should require without errors", function()
		local ContactList = require(script.Parent)
		expect(ContactList).to.be.ok()
	end)
end
