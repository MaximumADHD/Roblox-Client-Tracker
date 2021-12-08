return function()
	local Plugin = script.Parent.Parent
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath

	local MathUtil = require(Plugin.Src.Util.MathUtil)

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runRhodiumTest = TestRunner.runRhodiumTest

	local ScreenFlowPath = TestHelper.getScreenFlow(true)
	local EditScreenPath = TestHelper.getEditScreenContainer()
	local AssetTypeScreenPath =
		ScreenFlowPath:cat(XPath.new("SwizzleView.ViewArea"))
	local ShirtButtonPath =
		AssetTypeScreenPath:cat(XPath.new("Content.ClothingTypeList.List.Shirt"))
	local ShirtButtonSelectedPath =
		ShirtButtonPath:cat(XPath.new("RadioImage.Contents.Foreground"))
	local WaistButtonPath =
		AssetTypeScreenPath:cat(XPath.new("Content.AccessoryTypeList.List.Waist"))
	local WaistButtonSelectedPath =
		WaistButtonPath:cat(XPath.new("RadioImage.Contents.Foreground"))
	local WaistFrontButtonPath =
		AssetTypeScreenPath:cat(XPath.new("Content.List.Front"))
	local WaistFrontButtonSelectedPath =
		WaistFrontButtonPath:cat(XPath.new("RadioImage.Contents.Foreground"))
	local AssetTypeScreenNextButtonPath =
		AssetTypeScreenPath:cat(XPath.new("NextAndBackButtonContainer.NextButton.Contents.TextButton"))
	local AssetTypeScreenBackButtonPath =
		AssetTypeScreenPath:cat(XPath.new("NextAndBackButtonContainer.BackButton.Contents.TextButton"))
	local EditScreenBackButtonPath =
		EditScreenPath:cat(XPath.new("EditAndPreviewContainer.EditAndPreviewFrame.ViewArea.NextAndBackButtonContainer.BackButton.Contents.TextButton"))
	local SelectFramePath =
		ScreenFlowPath:cat(XPath.new("SelectFrame.ViewArea"))
	local SelectScreenNextButtonPath =
		SelectFramePath:cat(XPath.new("NextAndBackButtonContainer.NextButton.Contents.TextButton"))

	it("Attachment info should be preserved if it's a valid attachment type", function()
		runRhodiumTest(function(_, _, _, editingItemContext)
			TestHelper.goToEditScreenFromStart(false, true)

			local editingItem = editingItemContext:getItem()

			local attachment = editingItem:FindFirstChildOfClass("Attachment")
			expect(attachment.Name).to.equal("WaistFrontAttachment")

			expect(MathUtil:fuzzyEq_CFrame(attachment.CFrame, TestHelper.AttachmentCFrame)).to.equal(true)
		end)
	end)

	it("Can only select one type at a time from either list", function()
		runRhodiumTest(function()
			TestHelper.goToAssetTypeScreenFromStart(false, false)

			expect(TestHelper.waitForXPathInstance(ShirtButtonPath)).to.be.ok()
			expect(TestHelper.waitForXPathInstance(WaistButtonPath)).to.be.ok()

			TestHelper.clickXPath(ShirtButtonPath)
			expect(TestHelper.waitForXPathInstance(ShirtButtonSelectedPath)).to.be.ok()

			TestHelper.clickXPath(WaistButtonPath)
			expect(TestHelper.waitForXPathInstance(ShirtButtonSelectedPath)).to.equal(nil)
			expect(TestHelper.waitForXPathInstance(WaistButtonSelectedPath)).to.be.ok()
		end)
	end)

	it("Should go to sub-type screen if asset has one", function()
		runRhodiumTest(function()
			TestHelper.goToAssetTypeScreenFromStart(false, false)
			TestHelper.waitForXPathInstance(WaistButtonPath)
			TestHelper.clickXPath(WaistButtonPath)

			TestHelper.waitForXPathInstance(AssetTypeScreenNextButtonPath)
			TestHelper.clickXPath(AssetTypeScreenNextButtonPath)

			expect(TestHelper.waitForXPathInstance(WaistFrontButtonPath)).to.be.ok()
		end)
	end)

	it("Should remember chosen asset type if you go back", function()
		runRhodiumTest(function()
			TestHelper.goToEditScreenFromStart(false, false)

			expect(TestHelper.waitForXPathInstance(EditScreenBackButtonPath)).to.be.ok()
			TestHelper.clickXPath(EditScreenBackButtonPath)

			expect(TestHelper.waitForXPathInstance(WaistButtonSelectedPath)).to.be.ok()

			TestHelper.waitForXPathInstance(AssetTypeScreenNextButtonPath)
			TestHelper.clickXPath(AssetTypeScreenNextButtonPath)

			expect(TestHelper.waitForXPathInstance(WaistFrontButtonSelectedPath)).to.be.ok()
		end)
	end)

	it("Selection should be cleared if new editing item is chosen", function()
		runRhodiumTest(function()
			TestHelper.goToEditScreenFromStart(false, false)

			expect(TestHelper.waitForXPathInstance(EditScreenBackButtonPath)).to.be.ok()
			TestHelper.clickXPath(EditScreenBackButtonPath)

			expect(TestHelper.waitForXPathInstance(AssetTypeScreenBackButtonPath)).to.be.ok()
			TestHelper.clickXPath(AssetTypeScreenBackButtonPath)

			TestHelper.goToAssetTypeScreenFromStart(false, false)

			TestHelper.confirmDialog()

			expect(TestHelper.waitForXPathInstance(AssetTypeScreenPath)).to.be.ok()
			expect(TestHelper.waitForXPathInstance(WaistButtonSelectedPath)).to.equal(nil)
		end)
	end)
end