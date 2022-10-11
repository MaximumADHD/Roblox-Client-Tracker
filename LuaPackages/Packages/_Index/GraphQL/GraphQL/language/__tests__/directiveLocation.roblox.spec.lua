return function()
	local directiveLocation = require(script.Parent.Parent.directiveLocation)

	local DirectiveLocation = directiveLocation.DirectiveLocation

	describe("DirectiveLocation", function()
		it("should parse directiveLocation file", function()
			expect(DirectiveLocation.QUERY).to.equal("QUERY")
		end)
	end)
end
