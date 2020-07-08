return function()
	local Plugin = script.Parent.Parent.Parent

	local Operation = require(Plugin.Src.Operations.MemStorageEventRequest)

	local TEST_KEY = "TEST_KEY"
	local TEST_VALUE = "TEST_VALUE"

	it("should be able to create a new key with a value", function ()
		local container = Instance.new("Folder")
		expect(Operation.SetValue(TEST_KEY, TEST_VALUE)).to.equal(true)
		Operation.SetValue(TEST_KEY, nil)
	end)

	it("should be able to read an initialized key", function ()

		expect(Operation.SetValue(TEST_KEY, TEST_VALUE)).to.equal(true)
		expect(Operation.GetValue(TEST_KEY)).to.equal(TEST_VALUE)

		Operation.SetValue(TEST_KEY, nil)
	end)

	it("should overwrite an initialized value", function ()
		expect(Operation.SetValue(TEST_KEY, TEST_VALUE)).to.equal(true)
		expect(Operation.GetValue(TEST_KEY)).to.equal(TEST_VALUE)
		
		local NEW_VALUE = "ASDFGHJKL"
		expect(Operation.SetValue(TEST_KEY, NEW_VALUE)).to.equal(true)

		local value = Operation.GetValue(TEST_KEY)
		expect(value).to.never.equal(TEST_VALUE)
		expect(value).to.equal(NEW_VALUE)

		Operation.SetValue(TEST_KEY, nil)
	end)
end