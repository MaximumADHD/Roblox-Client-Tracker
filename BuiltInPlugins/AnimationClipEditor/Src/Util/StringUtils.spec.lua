return function()
	local Plugin = script.Parent.Parent.Parent
	local StringUtils = require(script.Parent.StringUtils)
	local Constants = require(script.Parent.Constants)

	local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

	describe("formatTime", function()
		it("should return 0:00 if frameRate is 0", function()
			local time = StringUtils.formatTime(50, 0, GetFFlagUseTicks() or nil)
			expect(time).to.equal("0:00")
		end)

		it("should format given frame as time provided a frame rate", function()
			if GetFFlagUseTicks() then
				-- 2 seconds + 7 frames @ 30fps = (2 + 7 / 30) * 2400 ticks
				local time = StringUtils.formatTime(5360, 30, true)
				expect(time).to.equal("2:07")
			else
				local time = StringUtils.formatTime(67, 30)
				expect(time).to.equal("2:07")
			end
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

		if GetFFlagUseTicks() then
			it("should return the frame converted to ticks if input is a number", function()
				local ticks = StringUtils.parseTime("345", 30)
				-- 345 frames @ 30 fps = 11 + 15/30 seconds = 27600 ticks
				expect(ticks).to.equal(27600)
			end)
		else
			it("should return same number if input is a number", function()
				local frames = StringUtils.parseTime("351", 30)
				expect(frames).to.equal(351)
			end)
		end
		if GetFFlagUseTicks() then
			it("should return total ticks if string formatted with colon", function()
				local ticks = StringUtils.parseTime("2:07", 30)
				-- 2 seconds + 7 frames @ 30fps = 4800 + 7 * 2400 / 30
				expect(ticks).to.equal(5360)
			end)
		else
			it("should return total frames if string formatted with colon", function()
				local frames = StringUtils.parseTime("2:07", 30)
				expect(frames).to.equal(67)
			end)
		end
	end)
end