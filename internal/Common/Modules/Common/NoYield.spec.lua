return function()
	local NoYield = require(script.Parent.NoYield)

	it("should call functions normally", function()
		local callCount = 0

		local function test(a, b)
			expect(a).to.equal(5)
			expect(b).to.equal(6)

			callCount = callCount + 1

			return 11, "hello"
		end

		local a, b = NoYield(test, 5, 6)

		expect(a).to.equal(11)
		expect(b).to.equal("hello")
	end)

	it("should throw on yield", function()
		local preCount = 0
		local postCount = 0

		local function test()
			preCount = preCount + 1
			wait()
			postCount = postCount + 1
		end

		expect(function()
			NoYield(test)
		end).to.throw()

		expect(preCount).to.equal(1)
		expect(postCount).to.equal(0)
	end)
end