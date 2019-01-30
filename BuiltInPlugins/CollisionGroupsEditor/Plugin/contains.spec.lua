local contains = require(script.Parent.contains)

return function()
	it("should know that an object is contained in a regular list", function()
		local findMe = {"TESTING123"}
		local list = {1, 2, findMe, 3, "memes"}

		expect(contains(list, findMe)).to.equal(true)
	end)

	it("shouldn't find something that doesn't exist", function()
		local list = {1, 2, 3, 4}
		expect(contains(list, 5)).to.equal(false)
	end)

	it("should find stuff in dictionaries, too", function()
		local findMe = {"TESTING123"}
		local dictionary = {
			Key1 = findMe,
			Key9001 = 3,
			AnotherKeyHere = 5,
			Foo = "bar",
			Baz = "quux",
		}

		expect(contains(dictionary, findMe)).to.equal(true)
	end)
end