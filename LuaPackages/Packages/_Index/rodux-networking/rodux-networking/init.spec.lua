return function()
	local init = require(script.Parent)

	describe("GIVEN an options configuration", function()
		local instance = init.config({
			keyPath = "hello.world",
		})

		it("SHOULD have all expected fields", function()
			expect(instance.GET).to.be.ok()
			expect(instance.POST).to.be.ok()
			expect(instance.Enum).to.be.ok()
			expect(instance.installReducer).to.be.ok()
		end)
	end)
end
