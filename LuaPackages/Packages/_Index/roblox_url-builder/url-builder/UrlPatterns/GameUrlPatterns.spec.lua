return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("appsflyer link", function()
		it("should generate proper url", function()
			local url = UrlBuilder.game.info.appsflyer({
				universeId = "1356984689",
				placeId = "123456789",
				title = "Title",
				description = "Description",
				image = "https://www.roblox.com/image.png"
			})
			
			expect(url).to.equal(
				"https://ro.blox.com/Ebh5?pid=share"
					.. "&is_retargeting=true"
					.. "&af_og_title=Title"
					.. "&af_og_image=https%3A%2F%2Fwww.roblox.com%2Fimage.png"
					.. "&af_og_description=Description"
					.. "&af_dp=roblox%3A%2F%2Fnavigation%2Fgame_details%3FgameId%3D1356984689"
					.. "&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fgames%2F123456789"
			)
		end)

		it("should generate proper url when title, image, OR description are omitted", function()
			local result = "https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=roblox%3A%2F%2Fnavigation%2Fgame_details%3FgameId%3D1356984689" ..
				"&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fgames%2F123456789"

			local url = UrlBuilder.game.info.appsflyer({
				universeId = "1356984689",
				placeId = "123456789",
				title = "Title",
				description = "Description"
			})
			expect(url).to.equal(result)

			local url2 = UrlBuilder.game.info.appsflyer({
				universeId = "1356984689",
				placeId = "123456789",
				title = "Title",
				image = "Image",
			})
			expect(url2).to.equal(result)

			local url3 = UrlBuilder.game.info.appsflyer({
				universeId = "1356984689",
				placeId = "123456789",
				image = "Image",
				description = "Description"
			})
			expect(url3).to.equal(result)
		end)

		it("should generate proper url when title, image, and description are omitted", function()
			local url = UrlBuilder.game.info.appsflyer({
				universeId = "1356984689",
				placeId = "123456789",
			})
			expect(url).to.equal("https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=roblox%3A%2F%2Fnavigation%2Fgame_details%3FgameId%3D1356984689" ..
				"&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fgames%2F123456789")
		end)
	end)
end
