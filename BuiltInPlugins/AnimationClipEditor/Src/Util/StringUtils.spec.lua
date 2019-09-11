return function()
	local StringUtils = require(script.Parent.StringUtils)

	describe("formatTime", function()
		it("should return 0:00 if frameRate is 0", function()
			local time = StringUtils.formatTime(50, 0)
			expect(time).to.equal("0:00")
		end)

		it("should format given frame as time provided a frame rate", function()
			local time = StringUtils.formatTime(67, 30)
			expect(time).to.equal("2:07")
		end)
	end)

	describe("split", function()
		it("should split based off given delimiter", function()
			local list = StringUtils.split("1:2:3", ":")
			expect(#list).to.equal(3)

			list = StringUtils.split("1", " ")
			expect(#list).to.equal(1)
		end)
	end)

	describe("parseTime", function()
		it("should return nil for invalid input", function()
			local frames = StringUtils.parseTime("abc", 30)
			expect(frames).to.equal(nil)
		end)

		it("should return same number if input is a number", function()
			local frames = StringUtils.parseTime("351", 30)
			expect(frames).to.equal(351)
		end)

		it("should return total frames if string formatted with colon", function()
			local frames = StringUtils.parseTime("2:07", 30)
			expect(frames).to.equal(67)
		end)
	end)

	describe("getMaxTextWidth", function()
		it("should find maximum width", function()
			local list = {
				{Name = "name"},
				{Name = "longestName"},
				{Name = "longName"},
				{Name = "longerName"},
			}
			local max = StringUtils.getMaxTextWidth(list, 16, Enum.Font.SourceSans)
			local actualMax = StringUtils.getTextWidth(list[2].Name, 16, Enum.Font.SourceSans)
			expect(max).to.equal(actualMax)
		end)
	end)

	describe("getTextWidth", function()
		it("should return a nonzero number", function()
			local width = StringUtils.getTextWidth("Text", 16, Enum.Font.SourceSans)
			expect(width).to.be.ok()
			expect(type(width)).to.equal("number")
			expect(width > 0).to.equal(true)
		end)
	end)
end