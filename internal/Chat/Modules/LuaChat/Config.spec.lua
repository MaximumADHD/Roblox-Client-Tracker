return function()
	local Config = require(script.Parent.Config)

	describe("Debug", function()
		it("should be disabled", function()
			expect(Config.Debug).to.equal(false)
		end)
	end)

	describe("HttpDelay", function()
		it("should be nil", function()
			expect(Config.HttpDelay).to.equal(false)
		end)
	end)
end