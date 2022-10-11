-- ROBLOX deviation: no upstream tests

return function()
	describe("Execute - init", function()
		it("should contain execute function", function()
			local execute = require(script.Parent.Parent).execute
			expect(execute).to.be.a("function")
		end)

		it("should contain executeSync function", function()
			local executeSync = require(script.Parent.Parent).executeSync
			expect(executeSync).to.be.a("function")
		end)

		it("should contain defaultFieldResolver function", function()
			local defaultFieldResolver = require(script.Parent.Parent).defaultFieldResolver
			expect(defaultFieldResolver).to.be.a("function")
		end)

		it("should contain defaultTypeResolver function", function()
			local defaultTypeResolver = require(script.Parent.Parent).defaultTypeResolver
			expect(defaultTypeResolver).to.be.a("function")
		end)

		it("should contain getDirectiveValues function", function()
			local getDirectiveValues = require(script.Parent.Parent).getDirectiveValues
			expect(getDirectiveValues).to.be.a("function")
		end)
	end)
end
