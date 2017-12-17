return function()
	local DateTime = require(script.Parent.DateTime)
	local TimeZone = require(script.Parent.TimeZone)
	local TimeUnit = require(script.Parent.TimeUnit)

	describe("Constructors", function()
		it("should construct with 'new'", function()
			expect(DateTime.new()).to.be.ok()
			expect(DateTime.new(2017)).to.be.ok()
			expect(DateTime.new(2017, 5)).to.be.ok()
			expect(DateTime.new(2017, 5, 3)).to.be.ok()
			expect(DateTime.new(2017, 5, 3, 12)).to.be.ok()
			expect(DateTime.new(2017, 5, 3, 12, 34)).to.be.ok()
			expect(DateTime.new(2017, 5, 3, 12, 34, 51)).to.be.ok()
		end)

		it("should construct with 'now'", function()
			expect(DateTime.now()).to.be.ok()
		end)

		it("should construct from a Unix timestamp", function()
			expect(DateTime.fromUnixTimestamp(0)).to.be.ok()
			expect(DateTime.fromUnixTimestamp(os.time())).to.be.ok()
		end)

		it("should construct from an ISO 8601 date", function()
			-- Basic date
			do
				local date = DateTime.fromIsoDate("1988-03-17")
				expect(date).to.be.ok()
			end

			-- Date and time
			do
				local date = DateTime.fromIsoDate("2017-04-10T20:40:16Z")
				expect(date).to.be.ok()
				expect(date:GetUnixTimestamp()).to.equal(1491856816)
			end

			-- Date and time with no time zone
			do
				local date = DateTime.fromIsoDate("2017-04-10T20:40:16")
				expect(date).to.be.ok()
			end

			-- Date, time, and time zone offset
			do
				local date = DateTime.fromIsoDate("2017-04-10T20:40:16+01:00")
				expect(date).to.be.ok()
				expect(date:GetUnixTimestamp()).to.equal(1491856816 - 3600)
			end

			-- Date, time, and negative time zone offset
			do
				local date = DateTime.fromIsoDate("2017-04-10T20:40:16-01:00")
				expect(date).to.be.ok()
				expect(date:GetUnixTimestamp()).to.equal(1491856816 + 3600)
			end
		end)
	end)

	describe("Measurements", function()
		it("should get values in UTC", function()
			local date = DateTime.new()
			local values = date:GetValues(TimeZone.UTC)

			expect(values).to.be.ok()
			expect(values.Year).to.be.a("number")
			expect(values.Month).to.be.a("number")
			expect(values.Day).to.be.a("number")
			expect(values.Hour).to.be.a("number")
			expect(values.Minute).to.be.a("number")
			expect(values.Seconds).to.be.a("number")

			-- Locale specific!
			expect(values.WeekDay).to.be.a("number")
		end)

		it("should get values in local time", function()
			local date = DateTime.new()
			local values = date:GetValues(TimeZone.Current)

			expect(values).to.be.ok()
			expect(values.Year).to.be.a("number")
			expect(values.Month).to.be.a("number")
			expect(values.Day).to.be.a("number")
			expect(values.Hour).to.be.a("number")
			expect(values.Minute).to.be.a("number")
			expect(values.Seconds).to.be.a("number")

			-- Locale specific!
			expect(values.WeekDay).to.be.a("number")
		end)

		it("should preserve values from 'new' constructor", function()
			local date = DateTime.new(2017, 11, 3, 12, 34, 51)
			local values = date:GetValues(TimeZone.UTC)

			expect(values.Year).to.equal(2017)
			expect(values.Month).to.equal(11)
			expect(values.Day).to.equal(3)
			expect(values.Hour).to.equal(12)
			expect(values.Minute).to.equal(34)
			expect(values.Seconds).to.equal(51)
		end)

		it("should preserve Unix timestamp values", function()
			do
				local date = DateTime.fromUnixTimestamp(0)
				expect(date:GetUnixTimestamp()).to.equal(0)
			end

			do
				local date = DateTime.fromUnixTimestamp(123456789)
				expect(date:GetUnixTimestamp()).to.equal(123456789)
			end
		end)
	end)

	describe("Formatting", function()
		it("should have correct formatting tokens", function()
			local date = DateTime.new(2016, 1, 2, 15, 8, 9)

			-- Shortcut time zone specification
			local function format(str)
				return date:Format(str, TimeZone.UTC)
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
			expect(format("MMM")).to.equal("Jan")
			expect(format("MMMM")).to.equal("January")
			expect(format("A")).to.equal("PM")
			expect(format("a")).to.equal("pm")
		end)

		it("should preserve text within brackets", function()
			local date = DateTime.new(2017, 1, 2, 15, 8, 9)

			local function format(str)
				return date:Format(str, TimeZone.UTC)
			end

			expect(format("[Hello, world!]")).to.equal("Hello, world!")
			expect(format("[YYYY-MM-DD]")).to.equal("YYYY-MM-DD")
		end)

		it("should create identical ISO 8601 dates for UTC inputs", function()
			local date = DateTime.fromIsoDate("2017-04-10T20:40:16Z")
			expect(date:GetIsoDate()).to.equal("2017-04-10T20:40:16Z")
		end)

		it("should handle dates around midnight", function()
			local date = DateTime.new(2015, 4, 20, 0, 0, 0)

			expect(date:Format("H", TimeZone.UTC)).to.equal("0")
			expect(date:Format("HH", TimeZone.UTC)).to.equal("00")
			expect(date:Format("h", TimeZone.UTC)).to.equal("12")
			expect(date:Format("hh", TimeZone.UTC)).to.equal("12")
			expect(date:Format("a", TimeZone.UTC)).to.equal("am")
		end)

		it("should handle dates around noon", function()
			local date = DateTime.new(2017, 5, 23, 12, 0, 0)

			expect(date:Format("H", TimeZone.UTC)).to.equal("12")
			expect(date:Format("HH", TimeZone.UTC)).to.equal("12")
			expect(date:Format("h", TimeZone.UTC)).to.equal("12")
			expect(date:Format("hh", TimeZone.UTC)).to.equal("12")
			expect(date:Format("a", TimeZone.UTC)).to.equal("pm")
		end)

		it("should return correct 24-hour clock sequences", function()
			local date = DateTime.new(2017, 9, 13, 0, 0, 0)

			local formatString = "YYYY-MM-DD HH:mm:ss"

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

			for i = 1, #expected do
				local result = date:Format(formatString, TimeZone.UTC)
				expect(result).to.equal(expected[i])

				-- Advance once hour
				date = date.fromUnixTimestamp(date:GetUnixTimestamp() + 3600)
			end
		end)

		it("should return correct 12-hour clock sequences", function()
			local date = DateTime.new(2017, 9, 13, 0, 0, 0)

			local formatString = "YYYY-MM-DD hh:mm:ss a"

			local expected = {
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
			}

			for i = 1, #expected do
				local result = date:Format(formatString, TimeZone.UTC)
				expect(result).to.equal(expected[i])

				-- Advance once hour
				date = date.fromUnixTimestamp(date:GetUnixTimestamp() + 3600)
			end
		end)

		it("should have LongRelativeTime", function()
			local date = DateTime.new(2015, 4, 20, 0, 0, 0)
			expect(date:GetLongRelativeTime()).to.be.a("string")
		end)

		it("should have ShortRelativeTime", function()
			local date = DateTime.new(2015, 4, 20, 0, 0, 0)
			expect(date:GetShortRelativeTime()).to.be.a("string")
		end)
	end)

	describe("Comparisons", function()
		describe("IsSame", function()
			it("should equate dates with different granularity", function()
				local value = DateTime.new(2003, 6, 11, 15, 8, 9)
				local same = DateTime.new(2003, 6, 11, 15, 8, 9)

				expect(value:IsSame(value)).to.equal(true)
				expect(value:IsSame(same)).to.equal(true)

				local units = {TimeUnit.Years, TimeUnit.Months, TimeUnit.Days, TimeUnit.Hours, TimeUnit.Minutes}
				for _, unit in ipairs(units) do
					expect(value:IsSame(same, unit)).to.equal(true)
				end

				local sameMinute = DateTime.new(2003, 6, 11, 15, 8, 10)

				expect(value:IsSame(sameMinute)).to.equal(false)
				expect(value:IsSame(sameMinute, TimeUnit.Minutes)).to.equal(true)
				expect(value:IsSame(sameMinute, TimeUnit.Years)).to.equal(true)

				local sameHour = DateTime.new(2003, 6, 11, 15, 9, 0)

				expect(value:IsSame(sameHour)).to.equal(false)
				expect(value:IsSame(sameHour, TimeUnit.Hours)).to.equal(true)
				expect(value:IsSame(sameHour, TimeUnit.Years)).to.equal(true)

				local sameDay = DateTime.new(2003, 6, 11, 14, 8, 9)

				expect(value:IsSame(sameDay)).to.equal(false)
				expect(value:IsSame(sameDay, TimeUnit.Days)).to.equal(true)
				expect(value:IsSame(sameDay, TimeUnit.Years)).to.equal(true)

				local sameMonth = DateTime.new(2003, 6, 12, 15, 8, 9)

				expect(value:IsSame(sameMonth)).to.equal(false)
				expect(value:IsSame(sameMonth, TimeUnit.Months)).to.equal(true)
				expect(value:IsSame(sameMonth, TimeUnit.Years)).to.equal(true)

				local sameYear = DateTime.new(2003, 7, 12, 15, 8, 9)

				expect(value:IsSame(sameYear)).to.equal(false)
				expect(value:IsSame(sameYear, TimeUnit.Years)).to.equal(true)

				local diffYear = DateTime.new(2004, 6, 11, 15, 8, 9)

				expect(value:IsSame(diffYear)).to.equal(false)
				expect(value:IsSame(diffYear, TimeUnit.Years)).to.equal(false)
			end)

			it("should equate values using week boundaries", function()
				local sunday = DateTime.new(2017, 5, 7)
				local saturday = DateTime.new(2017, 5, 13)
				local monday = DateTime.new(2017, 5, 8)
				local tuesday = DateTime.new(2017, 5, 9)

				-- TODO: Specify locale when that lands; default may break tests
				local function sameWeek(a, b)
					return a:IsSame(b, TimeUnit.Weeks, TimeZone.UTC)
				end

				expect(sameWeek(monday, monday)).to.equal(true)

				expect(sameWeek(sunday, monday)).to.equal(true)
				expect(sameWeek(tuesday, monday)).to.equal(true)
				expect(sameWeek(saturday, monday)).to.equal(true)

				local nextSunday = DateTime.new(2017, 5, 14)

				expect(sameWeek(nextSunday, monday)).to.equal(false)
			end)
		end)
	end)
end