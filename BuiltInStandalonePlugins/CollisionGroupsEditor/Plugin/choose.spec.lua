local choose = require(script.Parent.choose)

return function()
	local a = "VALUE_A"
	local b = "VALUE_B"

	it("should return the first value if it's true", function()
		local testTrue = choose(a, b, true)
		expect(testTrue).to.equal(a)
	end)

	it("should return the second value if it's false", function()
		local testFalse = choose(a, b, false)
		expect(testFalse).to.equal(b)
	end)

	it("should treat truthful values accordingly", function()
		local ret = choose(a, b, 42)
		expect(ret).to.equal(a)

		ret = choose(a, b, "Not nil")
		expect(ret).to.equal(a)

		ret = choose(a, b, nil)
		expect(ret).to.equal(b)

		ret = choose(a, b, (function() end)())
		expect(ret).to.equal(b)

		--idk why you would do this though
		ret = choose(a, b)
		expect(ret).to.equal(b)
	end)
end