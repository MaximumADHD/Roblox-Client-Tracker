return function()
	local compose = require(script.Parent.compose)

	local function double(x)
		return x * 2
	end

	local function square(x)
		return x * x
	end

	 local function mult(x, y)
		return x * y
	end

	describe("compose basics", function()
		it("should return stub for empty functions list", function()
			local result = compose()
			expect(result(1)).to.equal(1)
		end)
		it("should return itself for single function", function()
			expect(compose(double)).to.equal(double)
			expect(compose(double)(3)).to.equal(6)
		end)
		it("should combine functions last to first", function()
			expect(compose(square, double)(5)).to.equal(100)
		end)

		it("should combine functions with single and multiple arguments", function()
			expect(compose(double, mult)(5 , 5)).to.equal(50)
		end)

		it("returns the first given argument if given no functions", function()
			expect(compose()(1, 2)).to.equal(1)
			expect(compose()(3)).to.equal(3)
			expect(compose()()).to.equal(nil)
		end)
	end)

end
