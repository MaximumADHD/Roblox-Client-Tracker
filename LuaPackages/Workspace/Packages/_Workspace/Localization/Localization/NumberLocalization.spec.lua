return function()
	local NumberLocalization = require(script.Parent.NumberLocalization)
	local Logger = require(script.Parent.Logger)

	local RoundingBehaviour = require(script.Parent.RoundingBehaviour)

	local function checkLocale(locale, responseMapping)
		for input, output in pairs(responseMapping) do
			expect(NumberLocalization.localize(input, locale)).to.equal(output)
		end
	end

	local function checkValid_en_zh(locale)
		checkLocale(locale, {
			[0] = "0",
			[1] = "1",
			[25] = "25",
			[364] = "364",
			[4120] = "4,120",
			[57860] = "57,860",
			[624390] = "624,390",
			[7857000] = "7,857,000",
			[-12345678] = "-12,345,678",
			[23987.45678] = "23,987.45678",
			[-12.3456] = "-12.3456",
			[-23987.45678] = "-23,987.45678",
		})
	end

	local function newSink(level)
		return {
			maxLevel = level,
			seen = {},
			log = function(self, message, context)
				table.insert(self.seen, { message = message, context = context })
			end,
		}
	end

	describe("NumberLocalization.localize", function()
		it("should default to en-us when locale is not recognized", function()
			local sink = newSink(Logger.Levels.Warning)
			Logger:addSink(sink)

			checkValid_en_zh("bad_locale")

			expect(#sink.seen).to.equal(11)
			expect(string.match(sink.seen[1].message, "^Warning: Locale not found:") ~= nil).to.equal(true)
		end)

		it("should default to en-us when locale is nil", function()
			local sink = newSink(Logger.Levels.Info)
			Logger:addSink(sink)

			checkValid_en_zh(nil)

			expect(#sink.seen).to.equal(11)
			expect(string.match(sink.seen[1].message, "^Warning: Locale not found:") ~= nil).to.equal(true)
		end)

		it("should default to en-us when locale is empty", function()
			local sink = newSink(Logger.Levels.Info)
			Logger:addSink(sink)

			checkValid_en_zh("")

			expect(#sink.seen).to.equal(11)
			expect(string.match(sink.seen[1].message, "^Warning: Locale not found:") ~= nil).to.equal(true)
		end)

		it("should localize correctly. (en-us)", function()
			checkValid_en_zh("en-us")
		end)

		it("should localize correctly. (en-gb)", function()
			checkValid_en_zh("en-gb")
		end)

		it("should localize correctly. (zh-cn)", function()
			checkValid_en_zh("zh-cn")
		end)

		it("should localize correctly. (zh-tw)", function()
			checkValid_en_zh("zh-tw")
		end)
	end)

	describe("NumberLocalization.abbreviate", function()
		it("should round towards zero when using RoundingBehaviour.Truncate", function()
			local roundToZeroMap = {
				[0] = "0",
				[1] = "1",
				[25] = "25",
				[364] = "364",
				[4120] = "4.1K",
				[57860] = "57.8K",
				[624390] = "624K",
				[999999] = "999K",
				[7857000] = "7.8M",
				[8e7] = "80M",
				[9e8] = "900M",
				[1e9] = "1B",
				[1e12] = "1,000B",
				[-0] = "0",
				[-1] = "-1",
				[-25] = "-25",
				[-364] = "-364",
				[-4120] = "-4.1K",
				[-57860] = "-57.8K",
				[-624390] = "-624K",
				[-999999] = "-999K",
				[-7857000] = "-7.8M",
				[-8e7] = "-80M",
				[-9e8] = "-900M",
				[-1e9] = "-1B",
				[-1e12] = "-1,000B",
				[1.1] = "1.1",
				[1499.99] = "1.4K",
				[-1.1] = "-1.1",
				[-1499.99] = "-1.4K",
			}

			for input, output in pairs(roundToZeroMap) do
				expect(NumberLocalization.abbreviate(input, "en-us", RoundingBehaviour.Truncate)).to.equal(output)
			end
		end)
	end)
end
