return function()
	local KeyGenerator = require(script.Parent.Parent.KeyGenerator)

	it("should generate a new string key when called", function()
		KeyGenerator._TESTING_ONLY_normalize_keys()

		expect(KeyGenerator.generateKey()).to.equal("id-0")
		expect(KeyGenerator.generateKey()).to.equal("id-1")
	end)

	it("should generate unique string keys without being normalized", function()
		expect(KeyGenerator.generateKey()).to.never.equal(KeyGenerator.generateKey())
	end)
end
