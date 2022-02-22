return function()
	local Plugin = script.Parent.Parent

	local Packages = Plugin.Packages
	local Roact = require(Packages.Roact)
	local Urls = require(Plugin.Core.Util.Urls)
	local Category = require(Plugin.Core.Types.Category)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local MOCK_THUMBNAIL_URL = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"
	local _SelectedTabColor = "0, 0.635294, 1"
	local CurrentSelectionBasicText = "TEST_Studio.Toolbox.General.Category"
	local ModelsCategoryName = Category.FREE_MODELS.name
	local CurrentSelectionModelsText = CurrentSelectionBasicText .. "Models"
	local AudioCategoryName = Category.FREE_AUDIO.name
	local CurrentSelectionAudioText = CurrentSelectionBasicText .. "Audio"
	local ImagesCategoryName = Category.FREE_DECALS.name
	local CurrentSelectionImagesText = CurrentSelectionBasicText .. "Decals"
	local MeshesCategoryName = Category.FREE_MESHES.name
	local CurrentSelectionMeshesText = CurrentSelectionBasicText .. "Meshes"
	local _VideosCategoryName = Category.MARKETPLACE_VIDEOS.name
	local _CurrentSelectionVideosText = CurrentSelectionBasicText .. _VideosCategoryName
	local _PluginsCategoryName = Category.WHITELISTED_PLUGINS.name
	local _CurrentSelectionPluginsText = CurrentSelectionBasicText .. _PluginsCategoryName

	local DropdownIconPath = TestHelpers.getPathInTestToolbox(
		"Toolbox.Header.CategoryMenu.CurrentSelection.Border.DropDownIcon"
	)
	local DropdownScrollingFramePath =
		"game.CoreGui.ScreenGui.ClickEventDetectFrame.ScrollBlocker.StyledScrollingFrame.ScrollingFrame."
	local CurrentSelectionTextPath = TestHelpers.getPathInTestToolbox(
		"Toolbox.Header.CategoryMenu.CurrentSelection.Border.CurrentSelectionLabel"
	)
	local MarketplaceTabIconPath = TestHelpers.getPathInTestToolbox("Toolbox.Tabs.Marketplace.Content.Icon")

	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

	describe("Marketplace Tab Test Suite", function()
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
		end)

		afterAll(function()
			Urls.constructAssetThumbnailUrl = originalConstructAssetThumbnailUrl
		end)

		afterEach(function()
			-- Cleanup
			Roact.unmount(instance)
			container:Destroy()
			TestHelpers.cleanupCategoryVerification()
		end)

		it("marketplace tab should open by default with models option", function()
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))
			local _tabIcon = Element.new(XPath.new(MarketplaceTabIconPath))

			-- expect(tostring(tabIcon:getRbxInstance().ImageColor3)).to.equal(SelectedTabColor)
			expect(game.CoreGui.CategoryVerification.Category.value).to.equal(ModelsCategoryName)
			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)
		end)

		it("dropdown menu should show up after click dropdown icon", function()
			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownInstance = Element.new("game.CoreGui.ScreenGui.ClickEventDetectFrame")
			expect(dropdownInstance:getRbxInstance()).to.be.ok()
		end)

		it("dropdown menu models option should work", function()
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

			local _dropdown = TestHelpers.clickInstanceWithXPath(DropdownIconPath)
			local dropdownPluginsPath = DropdownScrollingFramePath .. Category.FREE_AUDIO.category
			TestHelpers.clickInstanceWithXPath(dropdownPluginsPath)

			local _dropdown = TestHelpers.clickInstanceWithXPath(DropdownIconPath)
			local dropdownModelsPath = DropdownScrollingFramePath .. Category.FREE_MODELS.category
			TestHelpers.clickInstanceWithXPath(dropdownModelsPath)

			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)
			expect(game.CoreGui.CategoryVerification.Category.value).to.equal(ModelsCategoryName)
		end)

		-- Looping through options Audio, Images, Meshes, skipping Videos and Plugins for now
		local testCases = { Category.FREE_AUDIO.category, Category.FREE_DECALS.category, Category.FREE_MESHES.category }
		local expectedCurrentSelectionText = {
			CurrentSelectionAudioText,
			CurrentSelectionImagesText,
			CurrentSelectionMeshesText,
		}
		local expectedCategoryName = { AudioCategoryName, ImagesCategoryName, MeshesCategoryName }
		for i = 1, #testCases do
			it("dropdown menu " .. tostring(testCases[i]) .. " option should work", function()
				local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

				TestHelpers.clickInstanceWithXPath(DropdownIconPath)
				local dropdownAudioPath = DropdownScrollingFramePath .. testCases[i]
				TestHelpers.clickInstanceWithXPath(dropdownAudioPath)

				expect(currentSelection:getRbxInstance().Text).to.equal(expectedCurrentSelectionText[i])
				expect(game.CoreGui.CategoryVerification.Category.value).to.equal(expectedCategoryName[i])
			end)
		end
	end)
end
