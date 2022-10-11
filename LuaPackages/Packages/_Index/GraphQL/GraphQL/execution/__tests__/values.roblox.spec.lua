-- ROBLOX deviation: no upstream tests

return function()
	local valuesImport = require(script.Parent.Parent.values)
	local getVariableValues = valuesImport.getVariableValues
	local getArgumentValues = valuesImport.getArgumentValues
	local getDirectiveValues = valuesImport.getDirectiveValues
	describe("values", function()
		it("imports functions", function()
			expect(getVariableValues).to.be.a("function")
			expect(getArgumentValues).to.be.a("function")
			expect(getDirectiveValues).to.be.a("function")
		end)
	end)
end
