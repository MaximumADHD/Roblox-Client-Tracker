local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

return function()
	local memoize = require(script.Parent.memoize)

	describe("memoize", function()
		it("should handle arity 0", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			expect(identity()).toEqual(nil)
			expect(identity(nil)).toEqual(nil)
			expect(identity(nil, nil)).toEqual(nil)
			expect(callCount).toEqual(1)
		end)

		it("should handle arity 1", function()
			local callCount = 0
			local identity = memoize(function(a)
				callCount = callCount + 1
				return a
			end)

			expect(identity(5)).toEqual(5)
			expect(identity(5)).toEqual(5)
			expect(callCount).toEqual(1)

			expect(identity(6)).toEqual(6)
			expect(callCount).toEqual(2)

			expect(identity(5)).toEqual(5)
			expect(callCount).toEqual(3)
		end)

		it("should handle arity 2", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(5, 6)
			expect(a).toEqual(5)
			expect(b).toEqual(6)

			a, b = identity(5, 6)
			expect(a).toEqual(5)
			expect(b).toEqual(6)

			expect(callCount).toEqual(1)

			a, b = identity(6, 5)
			expect(a).toEqual(6)
			expect(b).toEqual(5)

			expect(callCount).toEqual(2)

			a, b = identity(5, 6)
			expect(a).toEqual(5)
			expect(b).toEqual(6)

			expect(callCount).toEqual(3)
		end)

		it("should handle mixed arity", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(5, 6)
			expect(a).toEqual(5)
			expect(b).toEqual(6)

			a, b = identity(5, 6)
			expect(a).toEqual(5)
			expect(b).toEqual(6)

			expect(callCount).toEqual(1)

			a, b = identity(5)
			expect(a).toEqual(5)
			expect(b).toEqual(nil)

			a, b = identity(5)
			expect(a).toEqual(5)
			expect(b).toEqual(nil)

			expect(callCount).toEqual(2)

			a, b = identity()
			expect(a).toEqual(nil)
			expect(b).toEqual(nil)

			a, b = identity()
			expect(a).toEqual(nil)
			expect(b).toEqual(nil)

			expect(callCount).toEqual(3)
		end)

		it("should handle trailing nils", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(5, nil)
			expect(a).toEqual(5)
			expect(b).toEqual(nil)

			a, b = identity(5)
			expect(a).toEqual(5)
			expect(b).toEqual(nil)

			expect(callCount).toEqual(1)

			a, b = identity(7)
			expect(a).toEqual(7)
			expect(b).toEqual(nil)

			expect(callCount).toEqual(2)

			a, b = identity(5)
			expect(a).toEqual(5)
			expect(b).toEqual(nil)

			expect(callCount).toEqual(3)
		end)

		it("should handle leading nils", function()
			local callCount = 0
			local identity = memoize(function(a, b)
				callCount = callCount + 1
				return a, b
			end)

			local a, b

			a, b = identity(nil, 7)
			expect(a).toEqual(nil)
			expect(b).toEqual(7)

			a, b = identity(nil, 7)
			expect(a).toEqual(nil)
			expect(b).toEqual(7)

			expect(callCount).toEqual(1)

			a, b = identity(7)
			expect(a).toEqual(7)
			expect(b).toEqual(nil)

			expect(callCount).toEqual(2)

			a, b = identity(nil, 7)
			expect(a).toEqual(nil)
			expect(b).toEqual(7)

			expect(callCount).toEqual(3)
		end)

		it("should handle interspersed nils", function()
			local callCount = 0
			local identity = memoize(function(a, b, c, d)
				callCount = callCount + 1
				return a, b, c, d
			end)

			local a, b, c, d

			a, b, c, d = identity(7, nil, 7, nil)
			expect(a).toEqual(7)
			expect(b).toEqual(nil)
			expect(c).toEqual(7)
			expect(d).toEqual(nil)

			-- Trailing nils can affect how interspersed nils are handled
			a, b, c, d = identity(7, nil, 7)
			expect(a).toEqual(7)
			expect(b).toEqual(nil)
			expect(c).toEqual(7)
			expect(d).toEqual(nil)

			expect(callCount).toEqual(1)

			a, b, c, d = identity(7, nil, nil, nil)
			expect(a).toEqual(7)
			expect(b).toEqual(nil)
			expect(c).toEqual(nil)
			expect(d).toEqual(nil)

			expect(callCount).toEqual(2)

			a, b, c, d = identity(7, nil, 7, nil)
			expect(a).toEqual(7)
			expect(b).toEqual(nil)
			expect(c).toEqual(7)
			expect(d).toEqual(nil)

			expect(callCount).toEqual(3)
		end)
	end)
end
