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

		expect(Urls.GetLocalizationTablesFromBaseUrl("http://roblox.com")).to.equal(
			"https://localizationtables.roblox.com")

		expect(Urls.GetLocalizationTablesFromBaseUrl("http://www.roblox.com")).to.equal(
			"https://localizationtables.roblox.com")

		expect(Urls.GetLocalizationTablesFromBaseUrl("http://www.gametest1.robloxlabs.com")).to.equal(
			"https://localizationtables.gametest1.robloxlabs.com")

		expect(Urls.GetLocalizationTablesFromBaseUrl("http://www.gametest2.robloxlabs.com")).to.equal(
			"https://localizationtables.gametest2.robloxlabs.com")

		expect(Urls.GetLocalizationTablesFromBaseUrl("http://sitetest1.robloxlabs.com")).to.equal(
			"https://localizationtables.sitetest1.robloxlabs.com")

		expect(Urls.GetLocalizationTablesFromBaseUrl("http://sitetest2.robloxlabs.com")).to.equal(
			"https://localizationtables.sitetest2.robloxlabs.com")

		expect(Urls.GetTranslationRolesUrlFromBaseUrl("http://roblox.com")).to.equal(
			"https://translationroles.roblox.com")

		expect(Urls.GetTranslationRolesUrlFromBaseUrl("http://www.roblox.com")).to.equal(
			"https://translationroles.roblox.com")

		expect(Urls.GetTranslationRolesUrlFromBaseUrl("http://www.gametest1.robloxlabs.com")).to.equal(
			"https://translationroles.gametest1.robloxlabs.com")

		expect(Urls.GetTranslationRolesUrlFromBaseUrl("http://www.gametest2.robloxlabs.com")).to.equal(
			"https://translationroles.gametest2.robloxlabs.com")

		expect(Urls.GetTranslationRolesUrlFromBaseUrl("http://sitetest1.robloxlabs.com")).to.equal(
			"https://translationroles.sitetest1.robloxlabs.com")

		expect(Urls.GetTranslationRolesUrlFromBaseUrl("http://sitetest2.robloxlabs.com")).to.equal(
			"https://translationroles.sitetest2.robloxlabs.com")

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
