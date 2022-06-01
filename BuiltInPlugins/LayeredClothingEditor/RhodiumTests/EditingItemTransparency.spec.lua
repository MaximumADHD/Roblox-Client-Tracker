return function()
	local Plugin = script.Parent.Parent
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath

	local GetTransparency = require(Plugin.Src.Util.GetTransparency)

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runRhodiumTest = TestRunner.runRhodiumTest

	local nearLimit = 1e-5 -- when set transparency, there might be some value precision issue

	local ScrollerPath = TestHelper.getEditScreenContainer()
	local EditorFrame = ScrollerPath:cat(XPath.new("EditSwizzle.Content.EditorFrame"))
	local PointToolTabButton = EditorFrame:cat(XPath.new("TabsRibbon.Tabs.2"))
	local TransparencyViewPath = EditorFrame:cat(XPath.new("TransparencyView"))
	local InnerCageValueTextBoxPath =
		TransparencyViewPath:cat(XPath.new("InnerCage.SliderContainer.ValueTextBoxFrame"))
	local OuterCageValueTextBoxPath =
		TransparencyViewPath:cat(XPath.new("OuterCage.SliderContainer.ValueTextBoxFrame"))
	local MeshValueTextBoxPath =
		TransparencyViewPath:cat(XPath.new("Mesh.SliderContainer.ValueTextBoxFrame"))
	local OuterCageRadioButton =
		EditorFrame:cat(XPath.new("EditingModeFrame.EditingModeRadioButtonList.Outer.RadioImage.Contents.TextButton"))
	local InnerCageRadioButton =
		EditorFrame:cat(XPath.new("EditingModeFrame.EditingModeRadioButtonList.Inner.RadioImage.Contents.TextButton"))

	local function getTextBox(path)
		return path:cat(XPath.new("ValueTextBox.Contents.TextBox"))
	end

	it("transparency sliders exist for caged item", function()
		runRhodiumTest(function()
			TestHelper.goToEditScreenFromStart(true)
			expect(TestHelper.waitForXPathInstance(MeshValueTextBoxPath)).to.be.ok()
			expect(TestHelper.waitForXPathInstance(OuterCageValueTextBoxPath)).to.be.ok()
			expect(TestHelper.waitForXPathInstance(InnerCageValueTextBoxPath)).to.equal(nil)
		end)
	end)

	it("transparency sliders exist for rigid item", function()
		runRhodiumTest(function()
			TestHelper.goToEditScreenFromStart(false)
			expect(TestHelper.waitForXPathInstance(MeshValueTextBoxPath)).to.be.ok()
			expect(TestHelper.waitForXPathInstance(OuterCageValueTextBoxPath)).to.equal(nil)
			expect(TestHelper.waitForXPathInstance(InnerCageValueTextBoxPath)).to.equal(nil)
		end)
	end)

	it("change mesh transparency for clothes", function()
		runRhodiumTest(function(container, store, editingItemContext)
			TestHelper.goToEditScreenFromStart(true)
			local MeshValueTextPath = getTextBox(MeshValueTextBoxPath)
			expect(TestHelper.waitForXPathInstance(MeshValueTextPath)).to.be.ok()

			TestHelper.sendInputToXPath(MeshValueTextPath,"20")

			expect(TestHelper.waitForXPathInstance(MeshValueTextPath).Text).to.equal("20")
			expect(editingItemContext:getItem()).to.be.ok()
			expect(GetTransparency(editingItemContext:getItem())).to.near(20, nearLimit)
		end)
	end)

	it("change inner cage transparency for clothes", function()
		runRhodiumTest(function(container, store)
			TestHelper.goToEditScreenFromStart(true)
			expect(TestHelper.waitForXPathInstance(PointToolTabButton)).to.be.ok()
			TestHelper.clickXPath(PointToolTabButton)
			expect(TestHelper.waitForXPathInstance(InnerCageRadioButton)).to.be.ok()
			TestHelper.clickXPath(InnerCageRadioButton)
			local InnerValueTextPath = getTextBox(InnerCageValueTextBoxPath)
			expect(TestHelper.waitForXPathInstance(InnerValueTextPath)).to.be.ok()
			TestHelper.sendInputToXPath(InnerValueTextPath,"20")
			local innerValueText = TestHelper.waitForXPathInstance(InnerValueTextPath)
			expect(TestHelper.waitForPropertyEqualTo(innerValueText,"Text","20")).to.equal(true)
		end)
	end)

	it("change outer cage transparency for clothes", function()
		runRhodiumTest(function()
			TestHelper.goToEditScreenFromStart(true)
			expect(TestHelper.waitForXPathInstance(PointToolTabButton)).to.be.ok()
			TestHelper.clickXPath(PointToolTabButton)
			expect(TestHelper.waitForXPathInstance(OuterCageRadioButton)).to.be.ok()
			TestHelper.clickXPath(OuterCageRadioButton)
			local OuterValueTextPath = getTextBox(OuterCageValueTextBoxPath)
			expect(TestHelper.waitForXPathInstance(OuterValueTextPath)).to.be.ok()

			TestHelper.sendInputToXPath(OuterValueTextPath,"20")
			local outerValueText = TestHelper.waitForXPathInstance(OuterValueTextPath)
			expect(TestHelper.waitForPropertyEqualTo(outerValueText,"Text","20")).to.equal(true)
		end)
	end)
end