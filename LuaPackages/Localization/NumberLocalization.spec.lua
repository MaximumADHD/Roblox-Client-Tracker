return function()
	local CorePackages = game:GetService("CorePackages")
    local Logging = require(CorePackages.Logging)
    local NumberLocalization = require(CorePackages.Localization.NumberLocalization)

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

	describe("NumberLocalization.localize", function()
		it("should default to en-us when locale is not recognized", function()
			local logs = Logging.capture(function()
				checkValid_en_zh("bad_locale")
			end)
			expect(string.match(logs.warnings[1], "^Warning: Locale not found:") ~= nil).to.equal(true)
		end)

		it("should default to en-us when locale is nil", function()
			local logs = Logging.capture(function()
				checkValid_en_zh(nil)
			end)
			expect(string.match(logs.warnings[1], "^Warning: Locale not found:") ~= nil).to.equal(true)
		end)

		it("should default to en-us when locale is empty", function()
			local logs = Logging.capture(function()
				checkValid_en_zh("")
			end)
			expect(string.match(logs.warnings[1], "^Warning: Locale not found:") ~= nil).to.equal(true)
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
end
