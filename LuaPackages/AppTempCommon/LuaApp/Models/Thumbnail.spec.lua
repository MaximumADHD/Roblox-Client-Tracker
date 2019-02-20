return function()
	local Thumbnail = require(script.Parent.Thumbnail)

	it("should set fields without errors", function()
		local testData =
		{
			targetId = 123456,
			state = "Completed",
			imageUrl = "a url",
		}

		local thumbnail = Thumbnail.fromThumbnailData(testData)

		expect(thumbnail).to.be.a("table")
		expect(thumbnail.universeId).to.equal("123456")
		expect(thumbnail.state).to.equal("Completed")
		expect(thumbnail.url).to.equal("a url")
	end)

end
