return function()
	local StringsLocale = require(script.Parent.StringsLocale)

	describe("Strings.Content", function()
		it("should not contain any duplicate keys", function()
			for i, entry1 in ipairs(StringsLocale.Content) do
				for j, entry2 in ipairs(StringsLocale.Content) do
					if i ~= j then
						expect(entry1.key ~= entry2.key).to.equal(true)
					end
				end
			end
		end)
		it("should contain an entry for every entry in StringsLocale.Keys", function()
			for _, key in pairs(StringsLocale.Keys) do

				local keyFound = nil
				for _, entry in ipairs(StringsLocale.Content) do
					if entry.key == key then
						keyFound = true
						break
					end
				end

				expect(keyFound).to.be.ok()
			end
		end)
		it("should have its keys contained in StringsLocale.Keys", function()
			for _, entry in ipairs(StringsLocale.Content) do
				expect(StringsLocale.Keys[entry.key]).to.be.ok()
			end
		end)
	end)

end