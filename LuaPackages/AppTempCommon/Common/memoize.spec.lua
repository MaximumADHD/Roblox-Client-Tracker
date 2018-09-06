return function()
	local memoize = require(script.Parent.memoize)

	describe("memoize", function()
		it("should handle arity 0", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			expect(identity()).to.equal(nil)
			expect(identity(nil)).to.equal(nil)
			expect(identity(nil, nil)).to.equal(nil)
			expect(callCount).to.equal(1)
		end)

		it("should handle arity 1", function()
			local callCount = 0
			local identity = memoize(function(a)
				callCount = callCount + 1
				return a
			end)

			expect(identity(5)).to.equal(5)
			expect(identity(5)).to.equal(5)
			expect(callCount).to.equal(1)

			expect(identity(6)).to.equal(6)
			expect(callCount).to.equal(2)

			expect(identity(5)).to.equal(5)
			expect(callCount).to.equal(3)
		end)

		it("should handle arity 2", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(5, 6)
			expect(a).to.equal(5)
			expect(b).to.equal(6)

			a, b = identity(5, 6)
			expect(a).to.equal(5)
			expect(b).to.equal(6)

			expect(callCount).to.equal(1)

			a, b = identity(6, 5)
			expect(a).to.equal(6)
			expect(b).to.equal(5)

			expect(callCount).to.equal(2)

			a, b = identity(5, 6)
			expect(a).to.equal(5)
			expect(b).to.equal(6)

			expect(callCount).to.equal(3)
		end)

		it("should handle mixed arity", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(5, 6)
			expect(a).to.equal(5)
			expect(b).to.equal(6)

			a, b = identity(5, 6)
			expect(a).to.equal(5)
			expect(b).to.equal(6)

			expect(callCount).to.equal(1)

			a, b = identity(5)
			expect(a).to.equal(5)
			expect(b).to.equal(nil)

			a, b = identity(5)
			expect(a).to.equal(5)
			expect(b).to.equal(nil)

			expect(callCount).to.equal(2)

			a, b = identity()
			expect(a).to.equal(nil)
			expect(b).to.equal(nil)

			a, b = identity()
			expect(a).to.equal(nil)
			expect(b).to.equal(nil)

			expect(callCount).to.equal(3)
		end)

		it("should handle trailing nils", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(5, nil)
			expect(a).to.equal(5)
			expect(b).to.equal(nil)

			a, b = identity(5)
			expect(a).to.equal(5)
			expect(b).to.equal(nil)

			expect(callCount).to.equal(1)

			a, b = identity(7)
			expect(a).to.equal(7)
			expect(b).to.equal(nil)

			expect(callCount).to.equal(2)

			a, b = identity(5)
			expect(a).to.equal(5)
			expect(b).to.equal(nil)

			expect(callCount).to.equal(3)
		end)

		it("should handle leading nils", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(nil, 7)
			expect(a).to.equal(nil)
			expect(b).to.equal(7)

			a, b = identity(nil, 7)
			expect(a).to.equal(nil)
			expect(b).to.equal(7)

			expect(callCount).to.equal(1)

			a, b = identity(7)
			expect(a).to.equal(7)
			expect(b).to.equal(nil)

			expect(callCount).to.equal(2)

			a, b = identity(nil, 7)
			expect(a).to.equal(nil)
			expect(b).to.equal(7)

			expect(callCount).to.equal(3)
		end)

		it("should handle interspersed nils", function()
			local callCount = 0
			local identity = memoize(function(a, b, c, d)
				callCount = callCount + 1
				return a, b, c, d
			end)

			local a, b, c, d

			a, b, c, d = identity(7, nil, 7, nil)
			expect(a).to.equal(7)
			expect(b).to.equal(nil)
			expect(c).to.equal(7)
			expect(d).to.equal(nil)

			-- Trailing nils can affect how interspersed nils are handled
			a, b, c, d = identity(7, nil, 7)
			expect(a).to.equal(7)
			expect(b).to.equal(nil)
			expect(c).to.equal(7)
			expect(d).to.equal(nil)

			expect(callCount).to.equal(1)

			a, b, c, d = identity(7, nil, nil, nil)
			expect(a).to.equal(7)
			expect(b).to.equal(nil)
			expect(c).to.equal(nil)
			expect(d).to.equal(nil)

			expect(callCount).to.equal(2)

			a, b, c, d = identity(7, nil, 7, nil)
			expect(a).to.equal(7)
			expect(b).to.equal(nil)
			expect(c).to.equal(7)
			expect(d).to.equal(nil)

			expect(callCount).to.equal(3)
		end)
	end)
end