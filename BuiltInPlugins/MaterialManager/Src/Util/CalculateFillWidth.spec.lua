local Plugin = script.Parent.Parent.Parent

local CalculateFillWidth = require(Plugin.Src.Util.CalculateFillWidth)

return function()
	it("Calculate width scale only", function()
		local widths = {
			UDim.new(0.3, 0)
		}
		expect(CalculateFillWidth(widths)).to.equal(UDim.new(0.7, 0))
	end)

	it("Calculate width offset only", function()
		local widths = {
			UDim.new(0,300)
		}
		expect(CalculateFillWidth(widths)).to.equal(UDim.new(1, -300))
	end)

	it("Calculate width scale and offset", function()
		local widths = {
			UDim.new(0.7,300)
		}
		expect(CalculateFillWidth(widths)).to.equal(UDim.new(0.3, -300))
	end)

	it("Calculate width with padding", function()
		local widths = {
			UDim.new(0.7,300)
		}
		expect(CalculateFillWidth(widths, 20)).to.equal(UDim.new(0.3, -340))
	end)

	it("Calculate width with spacing", function()
		local widths = {
			UDim.new(0.7,300)
		}
		expect(CalculateFillWidth(widths, nil, 20)).to.equal(UDim.new(0.3, -300))
	end)

	it("Calculate width with spacing and padding", function()
		local widths = {
			UDim.new(0.7,300)
		}
		expect(CalculateFillWidth(widths, 20, 20)).to.equal(UDim.new(0.3, -340))
	end)

	it("Calculate multiple widths", function()
		local widths = {
			UDim.new(0, 200),
			UDim.new(0, 300),
			UDim.new(0.3, 0),
		}
		expect(CalculateFillWidth(widths)).to.equal(UDim.new(0.7, -500))
	end)

	it("Calculate multiple widths with spacing and padding", function()
		local widths = {
			UDim.new(0, 200),
			UDim.new(0, 300),
			UDim.new(0.3, 0),
		}
		expect(CalculateFillWidth(widths, 20, 20)).to.equal(UDim.new(0.7, -580))
	end)
end

