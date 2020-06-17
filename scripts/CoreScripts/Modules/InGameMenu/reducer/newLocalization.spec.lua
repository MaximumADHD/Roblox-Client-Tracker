return function()
	local InGameMenu = script.Parent.Parent

	local SetLocaleId = require(InGameMenu.Actions.SetLocaleId)
	local SetGameAndDescriptionInfo = require(InGameMenu.Actions.SetGameAndDescriptionInfo)

	local localization = require(script.Parent.newLocalization)

	local dummyGameNames = {
		["en"] = "Test Name",
		["de"] = "Ze Test Name",
		["fr"] = "Le Test Name",
		["zh-hant"] = "Traditional test name",
	}

	local dummyGameDescriptions = {
		["en"] = "Test Description",
		["de"] = "Ze Test Description",
		["fr"] = "Le Test Description",
		["zh-hant"] = "Traditional test description",
	}

	describe("SetLocaleId", function()
		it("should correctly set the locale id and change the current name and description", function()
			local oldState = localization(nil, SetGameAndDescriptionInfo(dummyGameNames, dummyGameDescriptions, "en"))
			local newState = localization(oldState, SetLocaleId("de"))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentLocaleId).to.equal("de")
			expect(newState.currentGameName).to.equal(dummyGameNames["de"])
			expect(newState.currentGameDescription).to.equal(dummyGameDescriptions["de"])
		end)
	end)

	describe("SetGameAndDescriptionInfo", function()
		it("should correctly fallback to the source language", function()
			local oldState = localization(nil, SetLocaleId("xx"))
			local newState = localization(oldState, SetGameAndDescriptionInfo(dummyGameNames, dummyGameDescriptions, "en"))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentLocaleId).to.equal("xx")
			expect(newState.currentGameName).to.equal(dummyGameNames["en"])
			expect(newState.currentGameDescription).to.equal(dummyGameDescriptions["en"])
		end)
	end)
end