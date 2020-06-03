return function()
	local makeActionCreator = require(script.Parent.makeActionCreator)

	describe("GIVEN a script", function()
		local myScript = Instance.new("ModuleScript")
		local result = makeActionCreator(myScript)

		it("SHOULD return an object with a success field and failed field", function()
			expect(result.Succeeded).to.be.ok()
			expect(result.Failed).to.be.ok()
		end)
	end)
end
