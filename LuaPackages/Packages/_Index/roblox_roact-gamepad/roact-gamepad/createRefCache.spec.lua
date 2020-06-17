return function()
	local createRefCache = require(script.Parent.createRefCache)

	it("should always return valid ref objects", function()
		local refCache = createRefCache()

		local keys = { "test", "whatever", "some key" }
		for _, key in ipairs(keys) do
			local ref = refCache[key]
			expect(ref).never.to.equal(nil)
			expect(typeof(ref.getValue)).to.equal("function")
		end
	end)

	it("should return the same object for the same key", function()
		local refCache = createRefCache()
		local firstRef = refCache.firstRef
		local secondRef = refCache.secondRef

		expect(firstRef).to.equal(refCache.firstRef)
		expect(secondRef).to.equal(refCache.secondRef)
	end)
end