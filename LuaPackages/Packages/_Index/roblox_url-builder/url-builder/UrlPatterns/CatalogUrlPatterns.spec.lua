return function()
	local UrlBuilder = require(script.Parent.Parent.UrlBuilder)

	describe("appsflyer link", function()
		it("should generate proper bundle url", function()
			local url = UrlBuilder.catalog.info.appsflyer({
				assetId = "1356984689",
				assetType = "Bundle",
			})
			expect(url).to.equal("https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=robloxmobile%3A%2F%2Fnavigation%2Fitem_details%3FitemId%3D1356984689%26itemType%3DBundle" ..
				"&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fbundles%2F1356984689")
		end)

		it("should generate proper asset url", function()
			local url = UrlBuilder.catalog.info.appsflyer({
				assetId = "1356984689",
				assetType = "Asset",
			})
			expect(url).to.equal("https://ro.blox.com/Ebh5?pid=share&is_retargeting=true" ..
				"&af_dp=robloxmobile%3A%2F%2Fnavigation%2Fitem_details%3FitemId%3D1356984689%26itemType%3DAsset" ..
				"&af_web_dp=https%3A%2F%2Fwww.roblox.com%2Fcatalog%2F1356984689")
		end)
	end)
end
