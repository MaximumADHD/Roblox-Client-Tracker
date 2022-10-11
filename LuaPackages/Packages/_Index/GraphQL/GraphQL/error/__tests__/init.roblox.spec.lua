-- ROBLOX deviation: no upstream tests

return function()
	describe("Error - init", function()
		it("should contain GraphQLError table", function()
			local GraphQLError = require(script.Parent.Parent).GraphQLError
			expect(GraphQLError).to.be.a("table")
		end)

		it("should contain printError function", function()
			local printError = require(script.Parent.Parent).printError
			expect(printError).to.be.a("function")
		end)

		it("should contain syntaxError function", function()
			local syntaxError = require(script.Parent.Parent).syntaxError
			expect(syntaxError).to.be.a("function")
		end)

		it("should contain locatedError function", function()
			local locatedError = require(script.Parent.Parent).locatedError
			expect(locatedError).to.be.a("function")
		end)

		it("should contain formatError function", function()
			local formatError = require(script.Parent.Parent).formatError
			expect(formatError).to.be.a("function")
		end)
	end)
end
