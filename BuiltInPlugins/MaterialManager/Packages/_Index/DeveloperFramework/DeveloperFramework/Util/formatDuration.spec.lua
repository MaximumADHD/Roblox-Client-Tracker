return function()
	local FFlagDevFrameworkFixRoundedDuration = game:GetFastFlag("DevFrameworkFixRoundedDuration")
	local formatDuration = require(script.Parent.formatDuration)

	it("should return a string", function()
		local result = formatDuration(0)

		expect(result).to.equal("0:00")
	end)

	it("should handle 30 seconds correctly", function()
		local result = formatDuration(30)

		expect(result).to.equal("0:30")
	end)

	it("should ignore fractional components", function()
		local result = formatDuration(1.3)

		expect(result).to.equal("0:01")
	end)

	it("should ignore negative fractional components", function()
		local result = formatDuration(-1.3)

		expect(result).to.equal("-0:01")
	end)

	if FFlagDevFrameworkFixRoundedDuration then
		it("should round fractional components down", function()
			local result = formatDuration(1.3)

			expect(result).to.equal("0:01")
		end)

		it("should round fractional components up", function()
			local result = formatDuration(1.6)

			expect(result).to.equal("0:02")
		end)
	end

	it("should handle 60 seconds correctly", function()
		local result = formatDuration(60)

		expect(result).to.equal("1:00")
	end)

	it("should handle 90 seconds correctly", function()
		local result = formatDuration(90)

		expect(result).to.equal("1:30")
	end)

	it("should handle 120 seconds correctly", function()
		local result = formatDuration(120)

		expect(result).to.equal("2:00")
	end)

	it("should handle 150 seconds correctly", function()
		local result = formatDuration(150)

		expect(result).to.equal("2:30")
	end)

	it("should handle 1 hour", function()

		local result = formatDuration(3600)

		expect(result).to.equal("60:00")
	end)
end