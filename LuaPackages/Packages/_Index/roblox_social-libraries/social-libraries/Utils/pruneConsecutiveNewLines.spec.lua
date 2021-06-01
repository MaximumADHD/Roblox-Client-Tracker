return function()
	local pruneConsecutiveNewLines = require(script.Parent.pruneConsecutiveNewLines)

	describe("should properly prune new lines", function()
		it("with 2 consecutive new lines", function()
			local text = "a\n\nb"
			local filteredText = pruneConsecutiveNewLines(text)
			expect(filteredText).to.equal("a\nb")
		end)

		it("with 10 consecutive new lines", function()
			local text = "almighty\n\n\n\n\n\n\n\n\n\nbanana"
			local filteredText = pruneConsecutiveNewLines(text)
			expect(filteredText).to.equal("almighty\nbanana")
		end)

		it("with 100 consecutive new lines", function()
			local text = "asparagus"
			for _ = 1, 100 do
				text = text .. "\n"
			end
			text = text .. "believer"
			local filteredText = pruneConsecutiveNewLines(text)
			expect(filteredText).to.equal("asparagus\nbeliever")
		end)

		it("with new lines on both sides", function()
			local text = "\n\n\n\nabacus\n\n\n\n"
			local filteredText = pruneConsecutiveNewLines(text)
			expect(filteredText).to.equal("\nabacus\n")
		end)
	end)

	describe("should not prune non-consecutive new lines", function()
		local text = "angry\nbaboon"
		local filteredText = pruneConsecutiveNewLines(text)
		expect(filteredText).to.equal(text)
	end)

	describe("should not prune when there are no new lines", function()
		local text = "apple                                                                      bottom"
		local filteredText = pruneConsecutiveNewLines(text)
		expect(filteredText).to.equal(text)
	end)
end
