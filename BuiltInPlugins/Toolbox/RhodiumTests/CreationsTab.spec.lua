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
	local ModelsCategoryName = Category.FREE_MODELS.name
	local CurrentSelectionModelsText = CurrentSelectionBasicText..Category.CREATIONS_MODELS.name
	local CurrentSelectionAudioText = CurrentSelectionBasicText..Category.CREATIONS_AUDIO.name
	local CurrentSelectionImagesText = CurrentSelectionBasicText..Category.CREATIONS_DECALS.name
	local CurrentSelectionMeshesText = CurrentSelectionBasicText..Category.CREATIONS_MESHES.name
	local CurrentSelectionPluginsText = CurrentSelectionBasicText..Category.CREATIONS_PLUGIN.name
	local CurrentSelectionGroupModelsText = CurrentSelectionBasicText.."GroupModels"
	local CurrentSelectionGroupAudioText = CurrentSelectionBasicText.."GroupAudio"
	local CurrentSelectionGroupImagesText = CurrentSelectionBasicText.."GroupDecals"
	local CurrentSelectionGroupMeshesText = CurrentSelectionBasicText.."GroupMeshes"
	local CurrentSelectionGroupPluginsText = CurrentSelectionBasicText.."GroupPlugins"

	local DropdownIconPath = TestHelpers.getPathInTestToolbox("Toolbox.Header.CategoryMenu.CurrentSelection.Border.DropDownIcon")
	local CurrentSelectionTextPath = TestHelpers.getPathInTestToolbox("Toolbox.Header.CategoryMenu.CurrentSelection.Border.CurrentSelectionLabel")
	local CreationsTabPath = TestHelpers.getPathInTestToolbox("Toolbox.Tabs.Creations")
	local CreationsTabIconPath = TestHelpers.getPathInTestToolbox("Toolbox.Tabs.Creations.Content.Icon")

	--local JestRoblox = require(Plugin.Packages.Dev.JestRoblox)
	--local expect = JestRoblox.Globals.expect

	describe("Creation Tab Test Suite", function()
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

		it("Creation tab should open with models option by click on the tab", function()
			TestHelpers.clickInstanceWithXPath(CreationsTabPath)
			local _tabIcon = Element.new(XPath.new(CreationsTabIconPath))
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

			expect(game.CoreGui.CategoryVerification.value).to.equal(ModelsCategoryName)
			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)
		end)

		it("dropdown menu should show up after click dropdown icon", function()
			TestHelpers.clickInstanceWithXPath(CreationsTabPath)
			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local dropdownInstance = Element.new("game.CoreGui.ScreenGui.ClickEventDetectFrame")
			expect(dropdownInstance:getRbxInstance()).to.be.ok()
		end)

		it("dropdown menu models option should work", function()
			local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))

			TestHelpers.clickInstanceWithXPath(CreationsTabPath)
			TestHelpers.clickInstanceWithXPath(DropdownIconPath)

			local DropdownScrollingFramePath = game.CoreGui.ScreenGui.ClickEventDetectFrame.ScrollBlocker.StyledScrollingFrame.ScrollingFrame
			local dropdownDecalsPath = DropdownScrollingFramePath:FindFirstChild(CurrentSelectionBasicText..Category.CREATIONS_AUDIO.name)
			TestHelpers.clickInstanceWithXPath(dropdownDecalsPath)
			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionAudioText)

			TestHelpers.clickInstanceWithXPath(DropdownIconPath)
			local ClickEventScrollingFrame = game.CoreGui.ScreenGui.ClickEventDetectFrame.ScrollBlocker.StyledScrollingFrame.ScrollingFrame
			local dropdownModelsPath = ClickEventScrollingFrame:FindFirstChild(CurrentSelectionBasicText..Category.CREATIONS_MODELS.name)
			TestHelpers.clickInstanceWithXPath(dropdownModelsPath)

			expect(currentSelection:getRbxInstance().Text).to.equal(CurrentSelectionModelsText)
			expect(game.CoreGui.CategoryVerification.value).to.equal(ModelsCategoryName)
		end)

		local testCases = {Category.CREATIONS_AUDIO.name, Category.CREATIONS_DECALS.name, Category.CREATIONS_MESHES.name, 
							Category.CREATIONS_PLUGIN.name, "GroupModels", "GroupAudio", "GroupDecals", "GroupMeshes", 
								"GroupPlugins"}
		local expectedCurrentSelectionText = {CurrentSelectionAudioText, CurrentSelectionImagesText, CurrentSelectionMeshesText, 
							CurrentSelectionPluginsText, CurrentSelectionGroupModelsText, CurrentSelectionGroupAudioText, 
								CurrentSelectionGroupImagesText, CurrentSelectionGroupMeshesText,
									CurrentSelectionGroupPluginsText}
		for i = 1, #testCases do
			it("dropdown menu " .. tostring(testCases[i]) .. " option should work", function()
				TestHelpers.clickInstanceWithXPath(CreationsTabPath)
				TestHelpers.clickInstanceWithXPath(DropdownIconPath)

				local DropdownScrollingFramePath = game.CoreGui.ScreenGui.ClickEventDetectFrame.ScrollBlocker.StyledScrollingFrame.ScrollingFrame
				local dropdownPath = DropdownScrollingFramePath:FindFirstChild(CurrentSelectionBasicText..testCases[i])
				TestHelpers.clickInstanceWithXPath(dropdownPath)

				local currentSelection = Element.new(XPath.new(CurrentSelectionTextPath))
				expect(currentSelection:getRbxInstance().Text).to.equal(expectedCurrentSelectionText[i])
			end)
		end
	end)
end