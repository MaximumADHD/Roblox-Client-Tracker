return function()
	local Plugin = script.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)
	local Urls = require(Plugin.Core.Util.Urls)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local MOCK_THUMBNAIL_URL = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"
	local CREATOR_HEADER_TEXT = "TEST_Studio.Toolbox.General.SearchOptionCreator"
	local CREATOR_SEARCH_TEXTBOX_PLACEHOLDER_TEXT = "TEST_Studio.Toolbox.General.SearchBarCreatorText"
	local TEST_CREATOR_NAME = "Test Creator"

	local SearchOptionButtonPath = TestHelpers.getPathInTestToolbox("Toolbox.Header.SearchOptionsButton")
	local SearchOptionWindowPath = "game.CoreGui.ScreenGui.ClickEventDetectFrame"
	local CancelButtonPath = SearchOptionWindowPath .. ".Main.Contents.Container.Footer.CancelButton"
	local ApplyButtonPath = SearchOptionWindowPath .. ".Main.Contents.BottomButtonsContainer.Footer.ApplyButton"

	local CreatorPath = SearchOptionWindowPath .. ".Main.Contents.Container.Creator"
	local CreatorHeaderPath = CreatorPath .. ".Header"
	local CreatorSearchBarTextBoxPath = CreatorPath .. ".SearchBar.SearchBar.Background.Border.TextContainer.TextBox"
	local DeleteButton = CreatorPath .. ".SearchBar.SearchBar.Background.Border.Buttons.ClearButton"

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

			local mainViewSearchTag = game.CoreGui.ScreenGui.ToolboxComponent.Toolbox.MainView.ScrollingFrame.Header.SearchTags.Tags

			local searchTag = mainViewSearchTag:GetChildren()[2].Border.NameLabel
			expect(searchTag.Text).to.equal(TEST_CREATOR_NAME)
		end)
	end)
end
