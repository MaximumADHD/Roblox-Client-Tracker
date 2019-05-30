return function()
	local LocalizationContext = require(script.Parent.LocalizationContext)

	it("should pull from the correct language if available", function()
		local context = LocalizationContext.new({
			["es-mx"] = {
				["SomeKey"] = "Foo",
			},
			["es"] = {
				["SomeKey"] = "Bar",
			},
			["en-us"] = {
				["SomeKey"] = "Baz",
			},
		})

		expect(context:getString("es-mx", "SomeKey")).to.equal("Foo")
		expect(context:getString("es", "SomeKey")).to.equal("Bar")
		expect(context:getString("en", "SomeKey")).to.equal("Baz")
	end)

	it("should fall through to a language's base language", function()
		local context = LocalizationContext.new({
			["es-mx"] = {},
			["es"] = {
				["SomeKey"] = "Bar",
			},
			["en"] = {
				["SomeKey"] = "Baz",
			},
		})

		expect(context:getString("es-mx", "SomeKey")).to.equal("Bar")
		expect(context:getString("es", "SomeKey")).to.equal("Bar")
		expect(context:getString("en", "SomeKey")).to.equal("Baz")
	end)

	it("should fall through to English if keys are missing in each table", function()
		local context = LocalizationContext.new({
			["es-mx"] = {},
			["es"] = {},
			["en-us"] = {
				["SomeKey"] = "Baz",
			},
		})

		expect(context:getString("es-mx", "SomeKey")).to.equal("Baz")
		expect(context:getString("es", "SomeKey")).to.equal("Baz")
		expect(context:getString("en_us", "SomeKey")).to.equal("Baz")
	end)

	it("should replace formatting identifiers of the form {name}", function()
		local context = LocalizationContext.new({
			["en-us"] = {
				["SomeKey"] = "{greeting}, {target}!",
			},
		})

		local value = context:getString("en-us", "SomeKey", {
			greeting = "Hello",
			target = "world",
		})

		expect(value).to.equal("Hello, world!")
	end)
end