return function()
	local EdgeInsets = require(script.Parent.Parent.EdgeInsets)

	it("should create EdgeInsets with provided UDims", function()
		local top = UDim.new(0, 0)
		local right = UDim.new(1, 0)
		local bottom = UDim.new(0, 1)
		local left = UDim.new(1, 1)

		local result = EdgeInsets.new(top, right, bottom, left)
		expect(result.top).to.equal(top)
		expect(result.right).to.equal(right)
		expect(result.bottom).to.equal(bottom)
		expect(result.left).to.equal(left)
	end)

	it("should create EdgeInsets with default UDims", function()
		local result = EdgeInsets.new()
		expect(typeof(result.top)).to.equal("UDim")
		expect(result.top.Scale).to.equal(0)
		expect(result.top.Offset).to.equal(0)

		expect(typeof(result.right)).to.equal("UDim")
		expect(result.right.Scale).to.equal(0)
		expect(result.right.Offset).to.equal(0)

		expect(typeof(result.bottom)).to.equal("UDim")
		expect(result.bottom.Scale).to.equal(0)
		expect(result.bottom.Offset).to.equal(0)

		expect(typeof(result.left)).to.equal("UDim")
		expect(result.left.Scale).to.equal(0)
		expect(result.left.Offset).to.equal(0)
	end)

	it("should create EdgeInsets with provided offset", function()
		local result = EdgeInsets.fromOffsets(0, 1, 2, 3)

		expect(typeof(result.top)).to.equal("UDim")
		expect(result.top.Scale).to.equal(0)
		expect(result.top.Offset).to.equal(0)

		expect(typeof(result.right)).to.equal("UDim")
		expect(result.right.Scale).to.equal(0)
		expect(result.right.Offset).to.equal(1)

		expect(typeof(result.bottom)).to.equal("UDim")
		expect(result.bottom.Scale).to.equal(0)
		expect(result.bottom.Offset).to.equal(2)

		expect(typeof(result.left)).to.equal("UDim")
		expect(result.left.Scale).to.equal(0)
		expect(result.left.Offset).to.equal(3)
	end)

	it("should create EdgeInsets with defaults for missing values", function()
		local result = EdgeInsets.fromOffsets()

		expect(typeof(result.top)).to.equal("UDim")
		expect(result.top.Scale).to.equal(0)
		expect(result.top.Offset).to.equal(0)

		expect(typeof(result.right)).to.equal("UDim")
		expect(result.right.Scale).to.equal(0)
		expect(result.right.Offset).to.equal(0)

		expect(typeof(result.bottom)).to.equal("UDim")
		expect(result.bottom.Scale).to.equal(0)
		expect(result.bottom.Offset).to.equal(0)

		expect(typeof(result.left)).to.equal("UDim")
		expect(result.left.Scale).to.equal(0)
		expect(result.left.Offset).to.equal(0)
	end)
end
