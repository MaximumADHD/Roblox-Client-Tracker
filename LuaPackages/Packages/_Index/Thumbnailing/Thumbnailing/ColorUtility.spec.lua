return function()
	local ColorUtility = require(script.Parent.ColorUtility)

	describe("Color3FromString", function()
		it("SHOULD return a function", function()
			expect(ColorUtility.Color3FromString).to.be.a("function")
		end)

		it("SHOULD generate a color from a string", function()
			local input = "20/30/40"
			local output = ColorUtility.Color3FromString(input)

			expect(output.R).to.be.near(20 / 255.0, 0.00001)
			expect(output.G).to.be.near(30 / 255.0, 0.00001)
			expect(output.B).to.be.near(40 / 255.0, 0.00001)
		end)
	end)
end
