return function()
	local KeyGenerator = require(script.Parent.Parent.KeyGenerator)

	it("should generate a new string key when called", function()
		KeyGenerator.normalizeKeys()

		expect(KeyGenerator.generateKey()).to.equal("id-test-1")
		expect(KeyGenerator.generateKey()).to.equal("id-test-2")
	end)

	it("should generate unique string keys without being normalized", function()
		expect(KeyGenerator.generateKey()).to.never.equal(KeyGenerator.generateKey())
	end)
end
