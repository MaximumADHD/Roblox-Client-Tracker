return function()
	local Plugin = script.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)
	local Urls = require(Plugin.Core.Util.Urls)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local ToolboxUtilities = require(Plugin.Core.Util.ToolboxUtilities)

	local FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton = game:GetFastFlag(
		"ToolboxUseDevFrameworkLoadingBarAndRadioButton"
	)

	local MOCK_THUMBNAIL_URL = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"
	local FAVORITES_RADIO_BUTTON_TEXT = "TEST_Studio.Toolbox.General.SortByFavorites"
	local MOST_TAKEN_RADIO_BUTTON_TEXT = "TEST_Studio.Toolbox.General.SortByMostTaken"
	local RATINGS_RADIO_BUTTON_TEXT = "TEST_Studio.Toolbox.General.SortByRatings"
	local RELEVANCE_RADIO_BUTTON_TEXT = "TEST_Studio.Toolbox.General.SortByRelevance"
	local UPDATED_RADIO_BUTTON_TEXT = "TEST_Studio.Toolbox.General.SortByUpdated"
	local CREATOR_HEADER_TEXT = "TEST_Studio.Toolbox.General.SearchOptionCreator"
	local CREATOR_SEARCH_TEXTBOX_PLACEHOLDER_TEXT = "TEST_Studio.Toolbox.General.SearchBarCreatorText"
	local TEST_CREATOR_NAME = "Test Creator"

	local SearchOptionButtonPath = TestHelpers.getPathInTestToolbox("Toolbox.Header.SearchOptionsButton")
	local SearchOptionWindowPath = "game.CoreGui.ScreenGui.ClickEventDetectFrame"
	local CancelButtonPath = SearchOptionWindowPath .. ".Main.Container.Footer.CancelButton"
	local ApplyButtonPath = SearchOptionWindowPath .. ".Main.Container.Footer.ApplyButton"
	local RadioButtonPath = SearchOptionWindowPath .. ".Main.Container.SortBy.RadioButtons"
	local FavoritesRadioButtonPath = RadioButtonPath .. ".Favorites.Background"
	local MostTakenRadioButtonPath = RadioButtonPath .. ".MostTaken.Background"
	local RatingsRadioButtonPath = RadioButtonPath .. ".Ratings.Background"
	local RelevanceRadioButtonPath = RadioButtonPath .. ".Relevance.Background"
	local UpdatedRadioButtonPath = RadioButtonPath .. ".Updated.Background"
	local FavoritesRadioButtonTextPath = RadioButtonPath .. ".Favorites.Text"
	local MostTakenRadioButtonTextPath = RadioButtonPath .. ".MostTaken.Text"
	local RatingsRadioButtonTextPath = RadioButtonPath .. ".Ratings.Text"
	local RelevanceRadioButtonTextPath = RadioButtonPath .. ".Relevance.Text"
	local UpdatedRadioButtonTextPath = RadioButtonPath .. ".Updated.Text"
	local CreatorPath = SearchOptionWindowPath .. ".Main.Container.Creator"
	local CreatorHeaderPath = CreatorPath .. ".Header"
	local CreatorSearchBarTextBoxPath = CreatorPath .. ".SearchBar.SearchBar.Background.Border.TextContainer.TextBox"
	local DeleteButton = CreatorPath .. ".SearchBar.SearchBar.Background.Border.Buttons.ClearButton"

	local TestCases = { "Favorites", "Updated", "Ratings", "MostTaken" }
	local ButtonPaths = {
		FavoritesRadioButtonPath,
		UpdatedRadioButtonPath,
		RatingsRadioButtonPath,
		MostTakenRadioButtonPath,
	}
	local TextPaths = {
		FavoritesRadioButtonTextPath,
		UpdatedRadioButtonTextPath,
		RatingsRadioButtonTextPath,
		MostTakenRadioButtonTextPath,
	}
	local RadioButtonText = {
		FAVORITES_RADIO_BUTTON_TEXT,
		UPDATED_RADIO_BUTTON_TEXT,
		RATINGS_RADIO_BUTTON_TEXT,
		MOST_TAKEN_RADIO_BUTTON_TEXT,
	}

	describe("Search Option Test Suite", function()
		local originalConstructAssetThumbnailUrl
		local container
		local instance

		beforeAll(function()
			originalConstructAssetThumbnailUrl = Urls.constructAssetThumbnailUrl
			Urls.constructAssetThumbnailUrl = function()
				return MOCK_THUMBNAIL_URL
			end
		end)

		beforeEach(function()
			-- Cleanup any test Toolbox left behind by a previously failed test
			TestHelpers.cleanupTestToolbox()

			-- Setup Mocked Toolbox
			container = Instance.new("ScreenGui", game.CoreGui)
			instance = TestHelpers.createTestToolbox(container)

			-- Wait for asset to load
			TestHelpers.delay()
		end)

		afterAll(function()
			Urls.constructAssetThumbnailUrl = originalConstructAssetThumbnailUrl
		end)

		afterEach(function()
			Roact.unmount(instance)
			container:Destroy()
			TestHelpers.cleanupCategoryVerification()
		end)

		it("Search option button should work", function()
			local SearchOptionButton = Element.new(XPath.new(SearchOptionButtonPath))
			expect(SearchOptionButton:getRbxInstance()).to.be.ok()
		end)

		-- TODO STM-862 Toolbox Rhodium test SearchOptions should work with Roact 1.4
		itSKIP("Search option window should open and close", function()
			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

			-- Search option window should open
			local searchOptionInstance = Element.new(SearchOptionWindowPath)
			expect(searchOptionInstance:getRbxInstance()).to.be.ok()

			-- Search option window should close
			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)
			searchOptionInstance = Element.new(SearchOptionWindowPath)
			expect(searchOptionInstance:getRbxInstance()).never.to.be.ok()
		end)

		itSKIP("Search option window should close when click cancel", function()
			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

			local cancelButtonInstance = Element.new(CancelButtonPath)
			expect(cancelButtonInstance:getRbxInstance()).to.be.ok()

			-- Search option window should close
			TestHelpers.clickInstanceWithXPath(CancelButtonPath)
			local searchOptionInstance = Element.new(SearchOptionWindowPath)
			expect(searchOptionInstance:getRbxInstance()).never.to.be.ok()
		end)

		it("Sort by Relevance should be default and working", function()
			-- TODO: Update tests when remove the flag
			if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
				RelevanceRadioButtonPath = RadioButtonPath .. ".Relevance.RadioImage"
				RelevanceRadioButtonTextPath = RadioButtonPath .. ".Relevance.TextLabel"
				UpdatedRadioButtonPath = RadioButtonPath .. ".Updated.RadioImage"

				--TODO: enable the test after STM-821 gets fix
				return
			end

			if ToolboxUtilities.getShouldHideNonRelevanceSorts() then
				return
			end

			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

			local relevanceRadioButtonInstance = Element.new(RelevanceRadioButtonPath)
			expect(relevanceRadioButtonInstance:getRbxInstance()).to.be.ok()

			local radioButtonTextInstance = Element.new(RelevanceRadioButtonTextPath)
			expect(radioButtonTextInstance:getRbxInstance().Text).to.be.equal(RELEVANCE_RADIO_BUTTON_TEXT)

			-- Relevance radio button should be highlighted
			local relevanceHighlightPath
			if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
				relevanceHighlightPath = RelevanceRadioButtonPath .. ".Contents.Foreground"
			else
				relevanceHighlightPath = RelevanceRadioButtonPath .. ".Highlight"
			end

			local relevanceHighlightInstance = Element.new(relevanceHighlightPath)
			expect(relevanceHighlightInstance:getRbxInstance()).to.be.ok()

			-- Relevance radio button should not be highlighted after clicking the updated radio button
			-- Updated radio button should be highlighted
			TestHelpers.clickInstanceWithXPath(UpdatedRadioButtonPath)

			relevanceHighlightInstance = Element.new(relevanceHighlightPath)
			expect(relevanceHighlightInstance:getRbxInstance()).never.to.be.ok()

			local updatedHighlightPath
			if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
				updatedHighlightPath = UpdatedRadioButtonPath .. ".Contents.Foreground"
			else
				updatedHighlightPath = UpdatedRadioButtonPath .. ".Highlight"
			end

			local updatedHighlightInstance = Element.new(updatedHighlightPath)
			expect(updatedHighlightInstance:getRbxInstance()).to.be.ok()

			TestHelpers.clickInstanceWithXPath(RelevanceRadioButtonPath)
			relevanceHighlightInstance = Element.new(relevanceHighlightPath)
			expect(relevanceHighlightInstance:getRbxInstance()).to.be.ok()

			-- Click apply button should close the Search option window
			TestHelpers.clickInstanceWithXPath(ApplyButtonPath)

			local searchOptionInstance = Element.new(SearchOptionWindowPath)
			expect(searchOptionInstance:getRbxInstance()).never.to.be.ok()
		end)

		-- TODO: Update tests when remove the flag
		if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
			FavoritesRadioButtonPath = RadioButtonPath .. ".Favorites.RadioImage"
			MostTakenRadioButtonPath = RadioButtonPath .. ".MostTaken.RadioImage"
			RatingsRadioButtonPath = RadioButtonPath .. ".Ratings.RadioImage"
			UpdatedRadioButtonPath = RadioButtonPath .. ".Updated.RadioImage"
			ButtonPaths = {
				FavoritesRadioButtonPath,
				UpdatedRadioButtonPath,
				RatingsRadioButtonPath,
				MostTakenRadioButtonPath,
			}
			FavoritesRadioButtonTextPath = RadioButtonPath .. ".Favorites.TextLabel"
			MostTakenRadioButtonTextPath = RadioButtonPath .. ".MostTaken.TextLabel"
			RatingsRadioButtonTextPath = RadioButtonPath .. ".Ratings.TextLabel"
			UpdatedRadioButtonTextPath = RadioButtonPath .. ".Updated.TextLabel"
			TextPaths = {
				FavoritesRadioButtonTextPath,
				UpdatedRadioButtonTextPath,
				RatingsRadioButtonTextPath,
				MostTakenRadioButtonTextPath,
			}
		end

		for i = 1, #TestCases do
			it("Sort by " .. TestCases[i] .. " should be working", function()
				if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
					--TODO: enable the test after STM-821 gets fix
					return
				end

				if ToolboxUtilities.getShouldHideNonRelevanceSorts() then
					return
				end

				TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

				local highlightPath
				if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
					highlightPath = ButtonPaths[i] .. ".Contents.Foreground"
				else
					highlightPath = ButtonPaths[i] .. ".Highlight"
				end

				-- radio button should be highlighted after click
				TestHelpers.clickInstanceWithXPath(ButtonPaths[i])

				local radioButtonTextInstance = Element.new(TextPaths[i])
				expect(radioButtonTextInstance:getRbxInstance().Text).to.be.equal(RadioButtonText[i])
				local highlightInstance = Element.new(highlightPath)
				expect(highlightInstance:getRbxInstance()).to.be.ok()

				-- Click apply button should close the Search option window
				TestHelpers.clickInstanceWithXPath(ApplyButtonPath)
				expect(game.CoreGui.CategoryVerification.Sort.value).to.equal(TestCases[i])

				local searchOptionInstance = Element.new(SearchOptionWindowPath)
				expect(searchOptionInstance:getRbxInstance()).never.to.be.ok()
			end)
		end

		itSKIP("Creator search bar should exist", function()
			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

			local creatorHeaderInstance = Element.new(CreatorHeaderPath)
			expect(creatorHeaderInstance:getRbxInstance()).to.be.ok()
			expect(creatorHeaderInstance:getRbxInstance().Text).to.equal(CREATOR_HEADER_TEXT)
		end)

		itSKIP("Creator search bar textbox should exist", function()
			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

			local creatorSearchBarTextBoxInstance = Element.new(CreatorSearchBarTextBoxPath)
			expect(creatorSearchBarTextBoxInstance:getRbxInstance()).to.be.ok()
			expect(creatorSearchBarTextBoxInstance:getRbxInstance().PlaceholderText).to.equal(
				CREATOR_SEARCH_TEXTBOX_PLACEHOLDER_TEXT
			)
			expect(creatorSearchBarTextBoxInstance:getRbxInstance().Text).to.equal("")
		end)

		itSKIP("X button in Creator search bar textbox should show when typing", function()
			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

			local deleteButtonInstance = Element.new(DeleteButton)
			expect(deleteButtonInstance:getRbxInstance()).never.to.be.ok()

			TestHelpers.typeInstanceWithXPath(CreatorSearchBarTextBoxPath, TEST_CREATOR_NAME)

			deleteButtonInstance = Element.new(DeleteButton)
			expect(deleteButtonInstance:getRbxInstance()).to.be.ok()
		end)

		itSKIP("Type in Creator search bar textbox should work", function()
			TestHelpers.clickInstanceWithXPath(SearchOptionButtonPath)

			TestHelpers.typeInstanceWithXPath(CreatorSearchBarTextBoxPath, TEST_CREATOR_NAME)
			local creatorSearchBarTextBoxInstance = Element.new(CreatorSearchBarTextBoxPath)
			expect(creatorSearchBarTextBoxInstance:getRbxInstance().Text).to.equal(TEST_CREATOR_NAME)

			-- Click apply button should close the Search option window and search for Creator
			TestHelpers.clickInstanceWithXPath(ApplyButtonPath)
			TestHelpers.clickInstanceWithXPath(ApplyButtonPath)

			local mainViewSearchTag
			--TODO: Update tests when remove the flag FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton
			if FFlagToolboxUseDevFrameworkLoadingBarAndRadioButton then
				mainViewSearchTag =
					game.CoreGui.ScreenGui.ToolboxComponent.Toolbox.MainView.ScrollingFrame.Header.SearchTags.Tags
			else
				mainViewSearchTag =
					game.CoreGui.ScreenGui.ToolboxComponent.Toolbox.MainView.ScrollingFrame.ScrollingFrame.Header.SearchTags.Tags
			end

			local searchTag = mainViewSearchTag:GetChildren()[2].Border.NameLabel
			expect(searchTag.Text).to.equal(TEST_CREATOR_NAME)
		end)
	end)
end
