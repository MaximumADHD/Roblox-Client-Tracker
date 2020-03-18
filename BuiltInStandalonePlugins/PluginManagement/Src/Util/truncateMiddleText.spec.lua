local Plugin = script.Parent.Parent.Parent
local truncateMiddleText = require(Plugin.Src.Util.truncateMiddleText)

return function()
	it("should not truncate a text string that will fit", function()
		local originalStr = "abcdfe"
		local truncatedStr = truncateMiddleText(originalStr, 16, Enum.Font.SourceSans, 55)
		expect(truncatedStr).to.equal("abcdfe")
	end)

	it("should truncate long text", function()
		local originalStr = "abcdfe"
		local truncatedStr = truncateMiddleText(originalStr, 16, Enum.Font.SourceSans, 38)
		expect(truncatedStr).to.equal("ab...fe")
	end)

	it("should add a '...' directly in the middle of the text", function()
		local originalStr = "pikachu"
		local truncatedStr = truncateMiddleText(originalStr, 16, Enum.Font.SourceSans, 45)
		expect(truncatedStr).to.equal("pi...hu")

		local middleIndex = math.ceil(string.len(truncatedStr) / 2)
		local middleText = truncatedStr:sub(middleIndex - 1, middleIndex + 1)
		expect(middleText).to.equal("...")
	end)
end