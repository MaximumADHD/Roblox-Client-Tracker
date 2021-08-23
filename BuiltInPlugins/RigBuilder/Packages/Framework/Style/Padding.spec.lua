return function()
	local Padding = require(script.Parent.Padding)

	it("should get the padding from a number", function()
		local padding = Padding(10)

		expect(padding.Left).to.equal(10)
		expect(padding.Top).to.equal(10)
		expect(padding.Right).to.equal(10)
		expect(padding.Bottom).to.equal(10)
	end)

	it("should get zero padding from an empty table", function()
		local padding = Padding({})

		expect(padding.Left).to.equal(0)
		expect(padding.Top).to.equal(0)
		expect(padding.Right).to.equal(0)
		expect(padding.Bottom).to.equal(0)
	end)

	it("should get the padding from a table", function()
		local padding = Padding({
			Left = 10,
			Top = 20,
		})

		expect(padding.Left).to.equal(10)
		expect(padding.Top).to.equal(20)
		expect(padding.Right).to.equal(0)
		expect(padding.Bottom).to.equal(0)
	end)

	it("should get horizontal and vertical padding ", function()
		local padding = Padding({
			Left = 10,
			Top = 20,
			Right = 5,
			Bottom = 2,
		})

		expect(padding.Horizontal).to.equal(15)
		expect(padding.Vertical).to.equal(22)
	end)
end