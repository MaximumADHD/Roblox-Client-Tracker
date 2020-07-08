--Remove with isNewGamepadMenuEnabled

return function()
	local InGameMenu = script.Parent.Parent
	local SetLocaleId = require(InGameMenu.Actions.SetLocaleId)
	local SetNames = require(InGameMenu.Actions.SetNames)
	local SetDescriptions = require(InGameMenu.Actions.SetDescriptions)
	local SetSourceLanguageCode = require(InGameMenu.Actions.SetSourceLanguageCode)
	local SetLanguageCodeMap = require(InGameMenu.Actions.SetLanguageCodeMap)
	local localization = require(script.Parent.localization)

	local Constants = require(InGameMenu.Resources.Constants)

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	local dummyGameNames = {
		["en"] = "Test Name 1",
		["de"] = "Test Name 2",
		["fr"] = "Le Test Name",
		["zh-hant"] = "Traditional test name",
	}

	local dummyGameDescriptions = {
		["en"] = "Test Description 1",
		["de"] = "Test Description 2",
		["fr"] = "Le Test Description",
		["zh-hant"] = "Traditional test description",
	}

	local dummyLanguageCodeMap = {
		["en-us"] = "en",
		["fr-fr"] = "fr",
		["de-de"] = "de",
		["zh_tw"] = "zh-hant",
	}

	it("should have fallbacks by default", function()
		local defaultState = localization(nil, {})
		expect(defaultState.currentGameName).to.equal("Game")
		expect(defaultState.currentGameDescription).to.equal("")
		expect(countKeys(defaultState.gameNames)).to.equal(1)
		expect(countKeys(defaultState.gameDescriptions)).to.equal(1)
		expect(defaultState.gameNames[Constants.FallbackLocaleId]).to.equal("Game")
		expect(defaultState.gameDescriptions[Constants.FallbackLocaleId]).to.equal("")
	end)

	describe("SetDescriptions", function()
		it("should correctly add the descriptions and update the currentDescription", function()
			local oldState = localization(nil, {})
			local newState = localization(oldState, SetDescriptions(dummyGameDescriptions))
			expect(oldState).to.never.equal(newState)
			expect(countKeys(newState.gameNames)).to.equal(1)
			expect(countKeys(newState.gameDescriptions)).to.equal(countKeys(dummyGameDescriptions))
			expect(newState.gameDescriptions["de"]).to.equal(dummyGameDescriptions["de"])
			expect(newState.currentGameDescription).to.equal(dummyGameDescriptions["en"])
		end)
	end)

	describe("SetNames", function()
		it("should correctly add the names and update the currentName", function()
			local oldState = localization(nil, {})
			local newState = localization(oldState, SetNames(dummyGameNames))
			expect(oldState).to.never.equal(newState)
			expect(countKeys(newState.gameNames)).to.equal(countKeys(dummyGameNames))
			expect(newState.gameNames["de"]).to.equal(dummyGameNames["de"])
			expect(newState.currentGameName).to.equal(dummyGameNames["en"])
		end)
	end)

	describe("SetLocaleId", function()
		it("should correctly set the locale id and change the current name and description", function()
			local oldState = localization(nil, SetNames(dummyGameNames))
			oldState = localization(oldState, SetDescriptions(dummyGameDescriptions))
			local newState = localization(oldState, SetLocaleId("de"))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentLocaleId).to.equal("de")
			expect(newState.currentGameName).to.equal(dummyGameNames["de"])
			expect(newState.currentGameDescription).to.equal(dummyGameDescriptions["de"])
		end)
	end)

	describe("SetSourceLanguageCode", function()
		it("should correctly set the source locale id and fallback to source language", function()
			local oldState = localization(nil, SetNames(dummyGameNames))
			oldState = localization(oldState, SetDescriptions(dummyGameDescriptions))
			oldState = localization(oldState, SetLocaleId("xx"))
			local newState = localization(oldState, SetSourceLanguageCode("de"))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentLocaleId).to.equal("xx")
			expect(newState.sourceLanguageCode).to.equal("de")
			expect(newState.currentGameName).to.equal(dummyGameNames["de"])
			expect(newState.currentGameDescription).to.equal(dummyGameDescriptions["de"])
		end)
	end)

	describe("SetLanguageCodeMap", function()
		it("should correctly map between locale and language code", function()
			local oldState = localization(nil, SetNames(dummyGameNames))
			oldState = localization(oldState, SetDescriptions(dummyGameDescriptions))
			oldState = localization(oldState, SetLocaleId("zh_tw"))
			local newState = localization(oldState, SetLanguageCodeMap(dummyLanguageCodeMap))
			expect(oldState).to.never.equal(newState)
			expect(newState.currentLocaleId).to.equal("zh_tw")
			expect(newState.currentGameName).to.equal(dummyGameNames["zh-hant"])
			expect(newState.currentGameDescription).to.equal(dummyGameDescriptions["zh-hant"])
		end)
	end)
end