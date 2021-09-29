return function()
	local Plugin = script.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)
	local Urls = require(Plugin.Core.Util.Urls)
	local Category = require(Plugin.Core.Types.Category)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath
	local Element = Rhodium.Element
	local TestHelpers = require(script.Parent.Util.TestHelpers)

	local MOCK_THUMBNAIL_URL = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"
	local _SelectedTabColor = "0, 0.635294, 1"
	local CurrentSelectionBasicText = "TEST_Studio.Toolbox.General.Category"
	local ModelsCategoryName = Category.MY_MODELS.name
	local CurrentSelectionModelsText = CurrentSelectionBasicText..Category.MY_MODELS.name
	local CurrentSelectionAudioText = CurrentSelectionBasicText..Category.MY_AUDIO.name
	local CurrentSelectionImagesText = CurrentSelectionBasicText..Category.MY_DECALS.name
	local CurrentSelectionMeshesText = CurrentSelectionBasicText..Category.MY_MESHES.name
	local CurrentSelectionVideosText = CurrentSelectionBasicText.."MyVideos"
	local CurrentSelectionPackagesText = CurrentSelectionBasicText..Category.MY_PACKAGES.name
	local CurrentSelectionPluginsText = CurrentSelectionBasicText..Category.MY_PLUGINS.name

	local DropdownIconPath = TestHelpers.getPathInTestToolbox("Toolbox.Header.CategoryMenu.CurrentSelection.Border.DropDownIcon")
	local DropdownScrollingFramePath = "game.CoreGui.ScreenGui.ClickEventDetectFrame.ScrollBlocker.StyledScrollingFrame.ScrollingFrame."
	local CurrentSelectionTextPath = TestHelpers.getPathInTestToolbox("Toolbox.Header.CategoryMenu.CurrentSelection.Border.CurrentSelectionLabel")
	local InventoryTabPath = TestHelpers.getPathInTestToolbox("Toolbox.Tabs.Inventory")
	local InventoryTabIconPath = TestHelpers.getPathInTestToolbox("Toolbox.Tabs.Inventory.Content.Icon")

	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

	describe("Inventory Tab Test Suite", function()
		local originalConstructAssetThumbnailUrl
		beforeAll(function()
			originalConstructAssetThumbnailUrl = Urls.constructAssetThumbnailUrl
			Urls.constructAssetThumbnailUrl = function()
				return MOCK_THUMBNAIL_URL
			end
		end)

		beforeEach(function()
			-- Cleanup any test Toolbox left behind by a previously failed test
			TestHelpers.cleanupTestToolbox()
		end)

		afterAll(function()
			Urls.constructAssetThumbnailUrl = originalConstructAssetThumbnailUrl
		end)

		afterEach(function()
			TestHelpers.cleanupCategoryVerification()
		end)

		it("Inventory tab should open with models option by click on the tab", function()
			local container = Instance.new("ScreenGui", game.CoreGui)
			local instance = TestHelpers.createTestToolbox(container)

			TestHelpers.clickInstanceWithXPath(InventoryTabPath)
			local _tabIcon = Element.new(XPath.new(InventoryTabIconPath))
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

			expect(game.CoreGui.CategoryVerification.value).to.equal(ModelsCategoryName)
			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)

			Roact.unmount(instance)
			container:Destroy()
		end)

		it("dropdown menu should show up after click dropdown icon", function()
			local container = Instance.new("ScreenGui", game.CoreGui)
			local instance = TestHelpers.createTestToolbox(container)

			TestHelpers.clickInstanceWithXPath(InventoryTabPath)
			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownInstance = Element.new("game.CoreGui.ScreenGui.ClickEventDetectFrame")
			expect(dropdownInstance:getRbxInstance()).to.be.ok()

			Roact.unmount(instance)
			container:Destroy()
		end)

		it("dropdown menu models option should work", function()
			local container = Instance.new("ScreenGui", game.CoreGui)
			local instance = TestHelpers.createTestToolbox(container)
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

			TestHelpers.clickInstanceWithXPath(InventoryTabPath)
			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownDecalsPath = DropdownScrollingFramePath .. Category.MY_DECALS.category
			TestHelpers.clickInstanceWithXPath(dropdownDecalsPath)
			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionImagesText)

			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownModelsPath = DropdownScrollingFramePath .. Category.MY_MODELS.category
			TestHelpers.clickInstanceWithXPath(dropdownModelsPath)

			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)
			expect(game.CoreGui.CategoryVerification.value).to.equal(ModelsCategoryName)

			Roact.unmount(instance)
			container:Destroy()
		end)

		local testCases = {Category.MY_DECALS.name, Category.MY_MESHES.name, Category.MY_VIDEOS.name, 
							Category.MY_AUDIO.name, Category.MY_PACKAGES.name, Category.MY_PLUGINS.name}
		local expectedCurrentSelectionText = {CurrentSelectionImagesText, CurrentSelectionMeshesText, 
					CurrentSelectionVideosText, CurrentSelectionAudioText, CurrentSelectionPackagesText, CurrentSelectionPluginsText}
		for i = 1, #testCases do
			it("dropdown menu " .. tostring(testCases[i]) .. " option should work", function()
				local container = Instance.new("ScreenGui", game.CoreGui)
				local instance = TestHelpers.createTestToolbox(container)

				TestHelpers.clickInstanceWithXPath(InventoryTabPath)
				TestHelpers.clickInstanceWithXPath(DropdownIconPath)
				local dropdownPath = DropdownScrollingFramePath .. testCases[i]
				TestHelpers.clickInstanceWithXPath(dropdownPath)

				local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))
				expect(currentSelection:getRbxInstance().Text).to.equal(expectedCurrentSelectionText[i])

				Roact.unmount(instance)
				container:Destroy()
			end)
		end
	end)
end
