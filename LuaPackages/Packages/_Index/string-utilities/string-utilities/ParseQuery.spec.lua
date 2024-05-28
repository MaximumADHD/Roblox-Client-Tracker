return function()
	local ParseQuery = require(script.Parent.ParseQuery)

	describe("ParseQuery normal usage", function()
		it("should parse a normal query string", function()
			local parsed = ParseQuery("name1=value1&name2=value2")

			expect(parsed.name1[1]).to.equal("value1")
			expect(parsed.name2[1]).to.equal("value2")
		end)

		it("should parse multiple values for the same name", function()
			local parsed = ParseQuery("name1=value1&name1=value2")

			expect(#parsed.name1).to.equal(2)
			expect(parsed.name1[1]).to.equal("value1")
			expect(parsed.name1[2]).to.equal("value2")
		end)

		it("should allow custom keys for multiple values", function()
			local parsed = ParseQuery("name1=value1&name2=value2&name2=value3", function(key)
				return "list_of_" .. key
			end)

			expect(parsed.name1).to.equal("value1")
			expect(parsed.name2).to.equal("value3")

			expect(#parsed.list_of_name2).to.equal(2)
			expect(parsed.list_of_name2[1]).to.equal("value2")
			expect(parsed.list_of_name2[2]).to.equal("value3")
		end)

		it("should url decode names and values", function()
			local parsed = ParseQuery("name1=value+1&%5Fname2=value2")

			expect(parsed.name1[1]).to.equal("value 1")
			expect(parsed._name2[1]).to.equal("value2")
		end)
	end)

	describe("ParseQuery edge cases", function()
		it("should return an empty table on empty or nil input", function()
			local parsed1 = ParseQuery("")
			local parsed2 = ParseQuery(nil)

			expect(#parsed1).to.equal(0)
			expect(#parsed2).to.equal(0)
		end)

		it("should support listKeyMapper returning key or nil", function()
			local parsed = ParseQuery("name1=value1&name2=value2&name2=value3", function()end)

			expect(parsed.name1).to.equal("value1")
			expect(#parsed.name2).to.equal(2)
			expect(parsed.name2[1]).to.equal("value2")
			expect(parsed.name2[2]).to.equal("value3")
		end)

		it("should use empty strings for unavailable values", function()
			local parsed = ParseQuery("name1=&=value2&name3", function()end)

			expect(parsed.name1).to.equal("")
			expect(parsed[""]).to.equal("value2")
			expect(parsed.name3).to.equal("")
		end)

		it("should support `;` as separator", function()
			local parsed = ParseQuery("name1=value1;name2=value2", function()end)

			expect(parsed.name1).to.equal("value1")
			expect(parsed.name2).to.equal("value2")
		end)
	end)
end
