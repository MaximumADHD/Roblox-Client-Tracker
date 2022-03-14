return function()
	local LuaDateTime = require(script.Parent.DateTime)
	local TimeZone = require(script.Parent.TimeZone)
	local localeIds = {
		"en-us",
		"en-gb",
		"en-au",
		"en-ca",
		"en-nz",
		"de-de",
		"es-es",
		"es-mx",
		"fr-fr",
		"fr-ca",
		"it-it",
		"pt-pt",
		"pt-br",
		"ru-ru",
		"ja-jp",
		"ko-kr",
		"zh-cn",
		"zh-hk",
		"zh-tw",
		"zh-hans",
		"zh-hant",
		"zh-cjv",
	}

	describe("Constructors", function()
		it("should construct with 'new'", function()
			expect(LuaDateTime.new()).to.be.ok()
			expect(LuaDateTime.new(2017)).to.be.ok()
			expect(LuaDateTime.new(2017, 5)).to.be.ok()
			expect(LuaDateTime.new(2017, 5, 3)).to.be.ok()
			expect(LuaDateTime.new(2017, 5, 3, 12)).to.be.ok()
			expect(LuaDateTime.new(2017, 5, 3, 12, 34)).to.be.ok()
			expect(LuaDateTime.new(2017, 5, 3, 12, 34, 51)).to.be.ok()

			expect(LuaDateTime.new(2017, 5, 3, 12, 34, 51, 999)).to.be.ok()
		end)

		it("should construct with 'now'", function()
			expect(LuaDateTime.now()).to.be.ok()
		end)

		it("should construct from a Unix timestamp", function()
			expect(LuaDateTime.fromUnixTimestamp(0)).to.be.ok()
			expect(LuaDateTime.fromUnixTimestamp(os.time())).to.be.ok()
		end)

		it("should construct from an ISO 8601 date", function()
			-- Basic date
			do
				local date = LuaDateTime.fromIsoDate("1988-03-17")
				expect(date).to.be.ok()
				expect(date.dateTime:ToUniversalTime().Year).to.equal(1988)
				expect(date.dateTime:ToUniversalTime().Month).to.equal(3)
				expect(date.dateTime:ToUniversalTime().Day).to.equal(17)
				expect(date.dateTime:ToUniversalTime().Hour).to.equal(0)
				expect(date.dateTime:ToUniversalTime().Minute).to.equal(0)
				expect(date.dateTime:ToUniversalTime().Second).to.equal(0)
				expect(date.dateTime:ToUniversalTime().Millisecond).to.equal(0)
			end

			-- Date and time
			do
				local date = LuaDateTime.fromIsoDate("2017-04-10T20:40:16.999Z")
				expect(date).to.be.ok()
				expect(date:GetUnixTimestamp()).to.equal(1491856816.999)
				expect(date.dateTime:ToUniversalTime().Year).to.equal(2017)
				expect(date.dateTime:ToUniversalTime().Month).to.equal(4)
				expect(date.dateTime:ToUniversalTime().Day).to.equal(10)
				expect(date.dateTime:ToUniversalTime().Hour).to.equal(20)
				expect(date.dateTime:ToUniversalTime().Minute).to.equal(40)
				expect(date.dateTime:ToUniversalTime().Second).to.equal(16)
				expect(date.dateTime:ToUniversalTime().Millisecond).to.equal(999)
			end

			-- Date and time with no time zone
			do
				local date = LuaDateTime.fromIsoDate("2017-04-10T20:40:16.1")
				expect(date).to.be.ok()
				expect(date:GetUnixTimestamp()).to.equal(1491856816.1)
				expect(date.dateTime:ToUniversalTime().Year).to.equal(2017)
				expect(date.dateTime:ToUniversalTime().Month).to.equal(4)
				expect(date.dateTime:ToUniversalTime().Day).to.equal(10)
				expect(date.dateTime:ToUniversalTime().Hour).to.equal(20)
				expect(date.dateTime:ToUniversalTime().Minute).to.equal(40)
				expect(date.dateTime:ToUniversalTime().Second).to.equal(16)
				expect(date.dateTime:ToUniversalTime().Millisecond).to.equal(100)
			end

			-- Date, time, and time zone offset
			do
				local date = LuaDateTime.fromIsoDate("2017-04-10T20:40:16+01:00")
				expect(date).to.be.ok()
				expect(date:GetUnixTimestamp()).to.equal(1491856816 - 3600)
				expect(date.dateTime:ToUniversalTime().Year).to.equal(2017)
				expect(date.dateTime:ToUniversalTime().Month).to.equal(4)
				expect(date.dateTime:ToUniversalTime().Day).to.equal(10)
				expect(date.dateTime:ToUniversalTime().Hour).to.equal(19)
				expect(date.dateTime:ToUniversalTime().Minute).to.equal(40)
				expect(date.dateTime:ToUniversalTime().Second).to.equal(16)
				expect(date.dateTime:ToUniversalTime().Millisecond).to.equal(0)
			end

			-- Date, time, and negative time zone offset
			do
				local date = LuaDateTime.fromIsoDate("2017-04-10T20:40:16-01:00")
				expect(date).to.be.ok()
				expect(date:GetUnixTimestamp()).to.equal(1491856816 + 3600)
				expect(date.dateTime:ToUniversalTime().Year).to.equal(2017)
				expect(date.dateTime:ToUniversalTime().Month).to.equal(4)
				expect(date.dateTime:ToUniversalTime().Day).to.equal(10)
				expect(date.dateTime:ToUniversalTime().Hour).to.equal(21)
				expect(date.dateTime:ToUniversalTime().Minute).to.equal(40)
				expect(date.dateTime:ToUniversalTime().Second).to.equal(16)
				expect(date.dateTime:ToUniversalTime().Millisecond).to.equal(0)
			end
		end)
	end)

	describe("Measurements", function()
		it("should get values in UTC", function()
			local date = LuaDateTime.new()
			local values = date:GetValues(TimeZone.UTC)

			expect(values).to.be.ok()
			expect(values.Year).to.be.a("number")
			expect(values.Month).to.be.a("number")
			expect(values.Day).to.be.a("number")
			expect(values.Hour).to.be.a("number")
			expect(values.Minute).to.be.a("number")

			expect(values.Second).to.be.a("number")
			expect(values.Millisecond).to.be.a("number")
		end)

		it("should get values in local time", function()
			local date = LuaDateTime.new()
			local values = date:GetValues(TimeZone.Current)

			expect(values).to.be.ok()
			expect(values.Year).to.be.a("number")
			expect(values.Month).to.be.a("number")
			expect(values.Day).to.be.a("number")
			expect(values.Hour).to.be.a("number")
			expect(values.Minute).to.be.a("number")
			expect(values.Second).to.be.a("number")
			expect(values.Millisecond).to.be.a("number")
		end)

		it("should preserve values from 'new' constructor", function()
			local date = LuaDateTime.new(2017, 11, 3, 12, 34, 51)
			local values = date:GetValues(TimeZone.UTC)

			expect(values.Year).to.equal(2017)
			expect(values.Month).to.equal(11)
			expect(values.Day).to.equal(3)
			expect(values.Hour).to.equal(12)
			expect(values.Minute).to.equal(34)
			expect(values.Second).to.equal(51)
			expect(values.Millisecond).to.equal(0)
		end)

		it("should preserve Unix timestamp values", function()
			do
				local date = LuaDateTime.fromUnixTimestamp(0)
				expect(date:GetUnixTimestamp()).to.equal(0)
			end

			do
				local date = LuaDateTime.fromUnixTimestamp(123456789)
				expect(date:GetUnixTimestamp()).to.equal(123456789)
			end
		end)
	end)

	describe("Formatting", function()
		it("should preserve text within brackets", function()
			local date = LuaDateTime.new(2017, 1, 2, 15, 8, 9)

			local function format(str)
				return date:Format(str, TimeZone.UTC)
			end

			expect(format("[Hello, world!]")).to.equal("Hello, world!")
			expect(format("[YYYY-MM-DD]")).to.equal("YYYY-MM-DD")
		end)

		it("should create identical ISO 8601 dates for UTC inputs", function()
			local date = LuaDateTime.fromIsoDate("2017-04-10T20:40:16Z")
			expect(date:GetIsoDate()).to.equal("2017-04-10T20:40:16Z")
		end)

		it("should have correct formatting tokens", function()
			local date = LuaDateTime.new(2016, 1, 2, 15, 8, 9)

			-- Shortcut time zone specification
			local function format(str, localeId)
				return date:Format(str, TimeZone.UTC, localeId)
			end

			expect(format("YYYY")).to.equal("2016")
			expect(format("M")).to.equal("1")
			expect(format("MM")).to.equal("01")
			expect(format("D")).to.equal("2")
			expect(format("DD")).to.equal("02")
			expect(format("H")).to.equal("15")
			expect(format("HH")).to.equal("15")
			expect(format("h")).to.equal("3")
			expect(format("hh")).to.equal("03")
			expect(format("m")).to.equal("8")
			expect(format("mm")).to.equal("08")
			expect(format("s")).to.equal("9")
			expect(format("ss")).to.equal("09")

			-- Locale-specific tests!
			expect(format("SSS")).to.equal("000")
			expect(format("SS")).to.equal("00")
			expect(format("S")).to.equal("0")
			expect(format("MMM", "en-us")).to.equal("Jan")
			expect(format("MMMM", "en-us")).to.equal("January")
			expect(format("MMM", "zh-cn")).to.equal("1月")
			expect(format("MMMM", "zh-cn")).to.equal("一月")
			expect(format("A", "en-us")).to.equal("PM")
			expect(format("a", "en-us")).to.equal("pm")
			expect(format("A", "zh-cn")).to.equal("下午")
			expect(format("a", "zh-cn")).to.equal("下午")
		end)

		it("should handle dates around midnight", function()
			local date = LuaDateTime.new(2015, 4, 20, 0, 0, 0)

			expect(date:Format("H", TimeZone.UTC)).to.equal("0")
			expect(date:Format("HH", TimeZone.UTC)).to.equal("00")
			expect(date:Format("h", TimeZone.UTC)).to.equal("12")
			expect(date:Format("hh", TimeZone.UTC)).to.equal("12")

			expect(date:Format("A", TimeZone.UTC, "en-us")).to.equal("AM")
			expect(date:Format("a", TimeZone.UTC, "en-us")).to.equal("am")
			expect(date:Format("A", TimeZone.UTC, "zh-cn")).to.equal("凌晨")
			expect(date:Format("a", TimeZone.UTC, "zh-cn")).to.equal("凌晨")
		end)

		it("should handle dates around noon", function()
			local date = LuaDateTime.new(2017, 5, 23, 12, 0, 0)

			expect(date:Format("H", TimeZone.UTC)).to.equal("12")
			expect(date:Format("HH", TimeZone.UTC)).to.equal("12")
			expect(date:Format("h", TimeZone.UTC)).to.equal("12")
			expect(date:Format("hh", TimeZone.UTC)).to.equal("12")

			expect(date:Format("A", TimeZone.UTC, "en-us")).to.equal("PM")
			expect(date:Format("a", TimeZone.UTC, "en-us")).to.equal("pm")
			expect(date:Format("A", TimeZone.UTC, "zh-cn")).to.equal("中午")
			expect(date:Format("a", TimeZone.UTC, "zh-cn")).to.equal("中午")
		end)

		it("should return correct 24-hour clock sequences", function()
			local expected = {
				"2017-09-13 00:00:00",
				"2017-09-13 01:00:00",
				"2017-09-13 02:00:00",
				"2017-09-13 03:00:00",
				"2017-09-13 04:00:00",
				"2017-09-13 05:00:00",
				"2017-09-13 06:00:00",
				"2017-09-13 07:00:00",
				"2017-09-13 08:00:00",
				"2017-09-13 09:00:00",
				"2017-09-13 10:00:00",
				"2017-09-13 11:00:00",
				"2017-09-13 12:00:00",
				"2017-09-13 13:00:00",
				"2017-09-13 14:00:00",
				"2017-09-13 15:00:00",
				"2017-09-13 16:00:00",
				"2017-09-13 17:00:00",
				"2017-09-13 18:00:00",
				"2017-09-13 19:00:00",
				"2017-09-13 20:00:00",
				"2017-09-13 21:00:00",
				"2017-09-13 22:00:00",
				"2017-09-13 23:00:00",
				"2017-09-14 00:00:00",
				"2017-09-14 01:00:00",
			}

			local formatString = "YYYY-MM-DD HH:mm:ss"
			local date

			for _, localeId in ipairs(localeIds) do
				date = LuaDateTime.new(2017, 9, 13, 0, 0, 0)
				for i = 1, #expected do
					local result = date:Format(formatString, TimeZone.UTC, localeId)
					expect(result).to.equal(expected[i])

					-- Advance once hour
					date = date.fromUnixTimestamp(date:GetUnixTimestamp() + 3600)
				end
			end
		end)

		it("should return correct 12-hour clock sequences", function()
			local date = LuaDateTime.new(2017, 9, 13, 0, 0, 0)

			local formatString = "YYYY-MM-DD hh:mm:ss a"

			local expected = {
				["en-us"] = {
					"2017-09-13 12:00:00 am",
					"2017-09-13 01:00:00 am",
					"2017-09-13 02:00:00 am",
					"2017-09-13 03:00:00 am",
					"2017-09-13 04:00:00 am",
					"2017-09-13 05:00:00 am",
					"2017-09-13 06:00:00 am",
					"2017-09-13 07:00:00 am",
					"2017-09-13 08:00:00 am",
					"2017-09-13 09:00:00 am",
					"2017-09-13 10:00:00 am",
					"2017-09-13 11:00:00 am",
					"2017-09-13 12:00:00 pm",
					"2017-09-13 01:00:00 pm",
					"2017-09-13 02:00:00 pm",
					"2017-09-13 03:00:00 pm",
					"2017-09-13 04:00:00 pm",
					"2017-09-13 05:00:00 pm",
					"2017-09-13 06:00:00 pm",
					"2017-09-13 07:00:00 pm",
					"2017-09-13 08:00:00 pm",
					"2017-09-13 09:00:00 pm",
					"2017-09-13 10:00:00 pm",
					"2017-09-13 11:00:00 pm",
					"2017-09-14 12:00:00 am",
					"2017-09-14 01:00:00 am",
				},
				["zh-cn"] = {
					"2017-09-13 12:00:00 凌晨",
					"2017-09-13 01:00:00 凌晨",
					"2017-09-13 02:00:00 凌晨",
					"2017-09-13 03:00:00 凌晨",
					"2017-09-13 04:00:00 凌晨",
					"2017-09-13 05:00:00 凌晨",
					"2017-09-13 06:00:00 早上",
					"2017-09-13 07:00:00 早上",
					"2017-09-13 08:00:00 早上",
					"2017-09-13 09:00:00 上午",
					"2017-09-13 10:00:00 上午",
					"2017-09-13 11:00:00 上午",
					"2017-09-13 12:00:00 中午",
					"2017-09-13 01:00:00 下午",
					"2017-09-13 02:00:00 下午",
					"2017-09-13 03:00:00 下午",
					"2017-09-13 04:00:00 下午",
					"2017-09-13 05:00:00 下午",
					"2017-09-13 06:00:00 晚上",
					"2017-09-13 07:00:00 晚上",
					"2017-09-13 08:00:00 晚上",
					"2017-09-13 09:00:00 晚上",
					"2017-09-13 10:00:00 晚上",
					"2017-09-13 11:00:00 晚上",
					"2017-09-14 12:00:00 凌晨",
					"2017-09-14 01:00:00 凌晨",
				}
			}

			for i = 1, #expected do
				for j = 1, #expected[i] do
					local result = date:Format(formatString, TimeZone.UTC, expected[i])
					expect(result).to.equal(expected[i][j])

					-- Advance once hour
					date = date.fromUnixTimestamp(date:GetUnixTimestamp() + 3600)
				end
			end
		end)

		describe("LongRelativeTime", function()
			it("SHOULD handle UTC time correctly with different locales", function()
				local date = LuaDateTime.new(2015, 4, 20, 13, 0, 0)
				for _, localeId in ipairs(localeIds) do
					local longRelativeTime = date:GetLongRelativeTime(date, TimeZone.UTC, localeId)
					expect(longRelativeTime).to.equal(date.dateTime:FormatUniversalTime("lll", localeId))
				end
			end)

			it("SHOULD handle Local time correctly with different locales", function()
				local date = LuaDateTime.fromUnixTimestamp(DateTime.fromLocalTime(2015, 4, 20, 13, 0, 0).UnixTimestamp)
				for _, localeId in ipairs(localeIds) do
					local longRelativeTime = date:GetLongRelativeTime(date, TimeZone.Current, localeId)
					expect(longRelativeTime).to.equal(date.dateTime:FormatLocalTime("lll", localeId))
				end
			end)
		end)

		describe("ShortRelativeTime", function()
			it("SHOULD handle UTC time correctly with different locales", function()
				local date = LuaDateTime.new(2015, 4, 20, 13, 0, 0)
				for _, localeId in ipairs(localeIds) do
					local shortRelativeTime = date:GetShortRelativeTime(date, TimeZone.UTC, localeId)
					expect(shortRelativeTime).to.equal(date.dateTime:FormatUniversalTime("ll", localeId))
				end
			end)

			it("SHOULD handle Local time correctly with different locales", function()
				local date = LuaDateTime.fromUnixTimestamp(DateTime.fromLocalTime(2015, 4, 20, 13, 0, 0).UnixTimestamp)
				for _, localeId in ipairs(localeIds) do
					local shortRelativeTime = date:GetShortRelativeTime(date, TimeZone.Current, localeId)
					expect(shortRelativeTime).to.equal(date.dateTime:FormatLocalTime("ll", localeId))
				end
			end)
		end)
	end)
end
