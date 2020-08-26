return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("appsflyer link", function()
		it("should generate proper url", function()
			local url = UrlBuilder.game.info.appsflyer({
				universeId = "1356984689",
				placeId = "123456789",
			})
			expect(url).to.equal("https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=robloxmobile%3A%2F%2Fnavigation%2Fgame_details%3FgameId%3D1356984689" ..
				"&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fgames%2F123456789")
		end)
	end)
end
