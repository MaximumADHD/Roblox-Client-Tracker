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
	local ModelsCategoryName = "Models"
	local CurrentSelectionModelsText = CurrentSelectionBasicText..Category.RECENT_MODELS.name
	local CurrentSelectionAudioText = CurrentSelectionBasicText..Category.RECENT_AUDIO.name
	local CurrentSelectionImagesText = CurrentSelectionBasicText..Category.RECENT_DECALS.name
	local CurrentSelectionMeshesText = CurrentSelectionBasicText..Category.RECENT_MESHES.name
	local CurrentSelectionVideosText = CurrentSelectionBasicText.."RecentVideos"

	local DropdownIconPath = "game.CoreGui.ScreenGui.ToolboxComponent.Toolbox.Header.CategoryMenu.CurrentSelection.Border.DropDownIcon"
	local DropdownScrollingFramePath = "game.CoreGui.ScreenGui.ClickEventDetectFrame.ScrollBlocker.StyledScrollingFrame.ScrollingFrame."
	local CurrentSelectionTextPath = "game.CoreGui.ScreenGui.ToolboxComponent.Toolbox.Header.CategoryMenu.CurrentSelection.Border.CurrentSelectionLabel"
	local RecentTabPath = "game.CoreGui.ScreenGui.ToolboxComponent.Toolbox.Tabs.Recent"
	local RecentTabIconPath = "game.CoreGui.ScreenGui.ToolboxComponent.Toolbox.Tabs.Recent.Content.Icon"

	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

	describe("Recent Tab Test Suite", function()
		local originalConstructAssetThumbnailUrl
		beforeAll(function()
			originalConstructAssetThumbnailUrl = Urls.constructAssetThumbnailUrl
			Urls.constructAssetThumbnailUrl = function()
				return MOCK_THUMBNAIL_URL
			end
		end)

		afterAll(function()
			Urls.constructAssetThumbnailUrl = originalConstructAssetThumbnailUrl
		end)

		afterEach(function()
			game.CoreGui.CategoryVerification:Destroy()
		end)

		it("recent tab should open with models option by click on the tab", function()
			local container = Instance.new("ScreenGui", game.CoreGui)
			local instance = TestHelpers.createTestToolbox(container, "ToolboxComponent")

			TestHelpers.clickInstanceWithXPath(RecentTabPath)
			local _tabIcon = Element.new(XPath.new(RecentTabIconPath))
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

			expect(game.CoreGui.CategoryVerification.value).to.equal(ModelsCategoryName)
			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)

			Roact.unmount(instance)
			container:Destroy()
		end)

		it("dropdown menu should show up after click dropdown icon", function()
			local container = Instance.new("ScreenGui", game.CoreGui)
			local instance = TestHelpers.createTestToolbox(container, "ToolboxComponent")

			TestHelpers.clickInstanceWithXPath(RecentTabPath)
			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownInstance = Element.new("game.CoreGui.ScreenGui.ClickEventDetectFrame")
			expect(dropdownInstance:getRbxInstance()).to.be.ok()

			Roact.unmount(instance)
			container:Destroy()
		end)

		it("dropdown menu models option should work", function()
			local container = Instance.new("ScreenGui", game.CoreGui)
			local instance = TestHelpers.createTestToolbox(container, "ToolboxComponent")
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

			TestHelpers.clickInstanceWithXPath(RecentTabPath)
			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownDecalsPath = DropdownScrollingFramePath .. "RecentDecals"
			TestHelpers.clickInstanceWithXPath(dropdownDecalsPath)
			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionImagesText)

			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownModelsPath = DropdownScrollingFramePath .. "RecentModels"
			TestHelpers.clickInstanceWithXPath(dropdownModelsPath)

			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)
			expect(game.CoreGui.CategoryVerification.value).to.equal(ModelsCategoryName)

			Roact.unmount(instance)
			container:Destroy()
		end)

		local testCases = {"RecentDecals", "RecentMeshes", "RecentVideo", "RecentAudio"}
		local expectedCurrentSelectionText = {CurrentSelectionImagesText, CurrentSelectionMeshesText, 
												CurrentSelectionVideosText, CurrentSelectionAudioText}
		for i = 1, #testCases do
			it("dropdown menu " .. tostring(testCases[i]) .. " option should work", function()
				local container = Instance.new("ScreenGui", game.CoreGui)
				local instance = TestHelpers.createTestToolbox(container, "ToolboxComponent")

				TestHelpers.clickInstanceWithXPath(RecentTabPath)
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