return function()
	local GameIcon = require(script.Parent.GameIcon)

	it("should set fields without errors", function()
		local testData =
		{
			targetId = 123456,
			state = "Completed",
			imageUrl = "a url",
		}

		local gameIcon = GameIcon.fromGameIconData(testData)

		expect(gameIcon).to.be.a("table")
		expect(gameIcon.universeId).to.equal("123456")
		expect(gameIcon.state).to.equal("Completed")
		expect(gameIcon.url).to.equal("a url")
	end)

end
