return function()
	local srcWorkspace = script.Parent.Parent.Parent
	local Promise = require(srcWorkspace.Parent.Promise)

	local coerceToPromise = require(script.Parent.Parent.coerceToPromise).coerceToPromise

	describe("coerceToPromise", function()
		it("returns promise when passed promise", function()
			local input = Promise.resolve("bar")
			expect(coerceToPromise(input):expect()).to.equal("bar")
		end)

		it("wraps value in promise", function()
			local input = "bar"
			expect(coerceToPromise(input):expect()).to.equal("bar")
		end)
	end)
end
