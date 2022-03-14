return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local pruneConsecutiveNewLines = require(script.Parent.pruneConsecutiveNewLines)

	describe("should properly prune new lines", function()
		it("with 2 consecutive new lines", function()
			local text = "a\n\nb"
			local filteredText = pruneConsecutiveNewLines(text)
			jestExpect(filteredText).toBe("a\nb")
		end)

		it("with 10 consecutive new lines", function()
			local text = "almighty\n\n\n\n\n\n\n\n\n\nbanana"
			local filteredText = pruneConsecutiveNewLines(text)
			jestExpect(filteredText).toBe("almighty\nbanana")
		end)

		it("with 100 consecutive new lines", function()
			local text = "asparagus"
			for _ = 1, 100 do
				text = text .. "\n"
			end
			text = text .. "believer"
			local filteredText = pruneConsecutiveNewLines(text)
			jestExpect(filteredText).toBe("asparagus\nbeliever")
		end)

		it("with new lines on both sides", function()
			local text = "\n\n\n\nabacus\n\n\n\n"
			local filteredText = pruneConsecutiveNewLines(text)
			jestExpect(filteredText).toBe("\nabacus\n")
		end)
	end)

	describe("should not prune non-consecutive new lines", function()
		local text = "angry\nbaboon"
		local filteredText = pruneConsecutiveNewLines(text)
		jestExpect(filteredText).toBe(text)
	end)

	describe("should not prune when there are no new lines", function()
		local text = "apple                                                                      bottom"
		local filteredText = pruneConsecutiveNewLines(text)
		jestExpect(filteredText).toBe(text)
	end)
end
