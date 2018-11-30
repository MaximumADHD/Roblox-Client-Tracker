local Urls = require(script.Parent.Parent.Urls)

return function()
	it("produces the expected gameinternationalization urls for various base urls", function()
		expect(Urls.GetGameInternationalizationUrlFromBaseUrl("http://roblox.com")).to.equal(
			"https://gameinternationalization.roblox.com")

		expect(Urls.GetGameInternationalizationUrlFromBaseUrl("http://www.roblox.com")).to.equal(
			"https://gameinternationalization.roblox.com")

		expect(Urls.GetGameInternationalizationUrlFromBaseUrl("http://www.gametest1.robloxlabs.com")).to.equal(
			"https://gameinternationalization.gametest1.robloxlabs.com")

		expect(Urls.GetGameInternationalizationUrlFromBaseUrl("http://www.gametest2.robloxlabs.com")).to.equal(
			"https://gameinternationalization.gametest2.robloxlabs.com")

		expect(Urls.GetGameInternationalizationUrlFromBaseUrl("http://sitetest1.robloxlabs.com")).to.equal(
			"https://gameinternationalization.sitetest1.robloxlabs.com")

		expect(Urls.GetGameInternationalizationUrlFromBaseUrl("http://sitetest2.robloxlabs.com")).to.equal(
			"https://gameinternationalization.sitetest2.robloxlabs.com")

		expect(Urls.GetApiUrlFromBaseUrl("http://roblox.com")).to.equal(
			"https://api.roblox.com")

		expect(Urls.GetApiUrlFromBaseUrl("http://www.roblox.com")).to.equal(
			"https://api.roblox.com")

		expect(Urls.GetApiUrlFromBaseUrl("http://www.gametest1.robloxlabs.com")).to.equal(
			"https://api.gametest1.robloxlabs.com")

		expect(Urls.GetApiUrlFromBaseUrl("http://www.gametest2.robloxlabs.com")).to.equal(
			"https://api.gametest2.robloxlabs.com")

		expect(Urls.GetApiUrlFromBaseUrl("http://sitetest1.robloxlabs.com")).to.equal(
			"https://api.sitetest1.robloxlabs.com")

		expect(Urls.GetApiUrlFromBaseUrl("http://sitetest2.robloxlabs.com")).to.equal(
			"https://api.sitetest2.robloxlabs.com")
	end)
end
