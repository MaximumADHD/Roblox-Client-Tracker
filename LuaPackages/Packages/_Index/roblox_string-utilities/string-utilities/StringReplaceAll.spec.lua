return function()
	local StringReplaceAll = require(script.Parent.StringReplaceAll)

	it("should return empty string if str is not a string", function()
		local result = StringReplaceAll(1, { "a" })
		expect(result).to.equal("")

		result = StringReplaceAll({ 1, 2, 3 }, { "a" })
		expect(result).to.equal("")

		result = StringReplaceAll(nil, { "a" })
		expect(result).to.equal("")
	end)

	it("should return original string if replacements is not a table", function()
		local result = StringReplaceAll("abc", "a")
		expect(result).to.equal("abc")

		result = StringReplaceAll("abc", 1)
		expect(result).to.equal("abc")

		result = StringReplaceAll("abc", nil)
		expect(result).to.equal("abc")
	end)

	it("should replace a PII string if provided", function()
		local result = StringReplaceAll("abc", { a = "" })
		expect(result).to.equal("bc")

		result = StringReplaceAll("abc", { b = "" })
		expect(result).to.equal("ac")

		result = StringReplaceAll("abc-123-a2c", { ["2"] = "" })
		expect(result).to.equal("abc-13-ac")

		result = StringReplaceAll("abc-123-a2c", { a = "A" })
		expect(result).to.equal("Abc-123-A2c")

		-- special character
		result = StringReplaceAll("hello, said Noob_123", { ["Noob_123"] = "Username" })
		expect(result).to.equal("hello, said Username")
	end)

	it("should replace all PII strings provided", function()
		local result = StringReplaceAll("abc", { a = "A", c = "d"})
		expect(result).to.equal("Abd")

		result = StringReplaceAll("abc", { a = "A", bc = "" })
		expect(result).to.equal("A")

		result = StringReplaceAll("abc-123-a23", { abc = "user", ["123"] = "id" })
		expect(result).to.equal("user-id-a23")
	end)

	it("should return original string if replacements is an empty table or no matches are found", function()
		local result = StringReplaceAll("abc", {})
		expect(result).to.equal("abc")

		result = StringReplaceAll("abc", { d = "e" })
		expect(result).to.equal("abc")

		result = StringReplaceAll("abc", { d = "e", e = "f" })
		expect(result).to.equal("abc")
	end)

	it("should ignore PIIs if they are not strings", function()
		local result = StringReplaceAll("abc", { a = 1 })
		expect(result).to.equal("abc")

		result = StringReplaceAll("abc", { a = 1, bc = "" })
		expect(result).to.equal("a")
	end)

	it("should match the example given in the doc string", function()
		local result = StringReplaceAll("key1 key2 key3", {["%w+1"] = "value1", ["%w+2"] = "value2"})
		expect(result).to.equal("value1 value2 key3")
	end)
end
