return function()
	local Plugin = script.Parent.Parent
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runRhodiumTest = TestRunner.runRhodiumTest

	local Constants = require(Plugin.Src.Util.Constants)

	local Framework = require(Plugin.Packages.Framework)
	local ContextServices = Framework.ContextServices
	local Localization = ContextServices.Localization
	local localization = Localization.mock()
	local dialogName = localization:getText("Dialog","DefaultTitle")

	local ScrollerPath = TestHelper.getEditScreenContainer()
	local EditorFrame = ScrollerPath:cat(XPath.new("EditSwizzle.ViewArea.EditorFrame"))

	local PointToolTabButton =
		EditorFrame:cat(XPath.new("TabsRibbon.2 PointTool.1.Contents.TextButton"))

	local LatticeToolTabButton =
		EditorFrame:cat(XPath.new("TabsRibbon.1 LatticeTool.1.Contents.TextButton"))

	local LatticeToolSettings =
		EditorFrame:cat(XPath.new("SettingView.LatticeToolSettings"))

	local InnerCageButton =
		EditorFrame:cat(XPath.new("EditingModeFrame.EditingModeRadioButtonList.Inner.RadioImage.Contents.TextButton"))

	local OuterCageButton =
		EditorFrame:cat(XPath.new("EditingModeFrame.EditingModeRadioButtonList.Outer.RadioImage.Contents.TextButton"))

	local XInput =
			LatticeToolSettings:cat(XPath.new("Subdivisions.InputBoxes.XInput.Contents.TextBox"))

	local YInput =
			LatticeToolSettings:cat(XPath.new("Subdivisions.InputBoxes.YInput.Contents.TextBox"))

	local ZInput =
			LatticeToolSettings:cat(XPath.new("Subdivisions.InputBoxes.ZInput.Contents.TextBox"))

	local GenerateButton =
		LatticeToolSettings:cat(XPath.new("GenerateButtonContainer.GenerateButton.Contents.TextButton"))

	-- These will not be used currently but we might bring the dropdown back for caged lc items if we
	-- can figure out a way to isolate points per part
	local DropdownButton =
		LatticeToolSettings:cat(XPath.new("DropdownMenu.Container.DropdownFrame.Contents.TextButton"))

	local DropdownLabel =
		LatticeToolSettings:cat(XPath.new("DropdownMenu.Container.DropdownFrame.Contents.TextButton.SelectedLabel"))

	local DropdownMenuItem =
		XPath.new("game.CoreGui.PluginMockGui.TopLevelDetector.ScrollBlocker.Menu.Contents.ScrollingContainer.Contents.Scroller.1.Contents.TextButton")


	local function setDeformerAndSubdivisions(container, store)
		TestHelper.goToEditScreenFromStart(true)
		TestHelper.clickXPath(LatticeToolTabButton)
		local state = store:getState()
		expect(state.status.toolMode).to.equal(Constants.TOOL_MODE.Lattice)

		state = store:getState()
		local selectedLattice = state.latticeTool.selectedLattice

		expect(selectedLattice).to.equal(TestHelper.DefaultClothesName)

		expect(TestHelper.waitForXPathInstance(XInput)).to.be.ok()
		expect(TestHelper.waitForXPathInstance(YInput)).to.be.ok()
		expect(TestHelper.waitForXPathInstance(ZInput)).to.be.ok()

		TestHelper.sendInputToXPath(XInput, "2")
		TestHelper.sendInputToXPath(YInput, "6")
		TestHelper.sendInputToXPath(ZInput, "4")

		expect(TestHelper.waitForXPathInstance(GenerateButton)).to.be.ok()
		TestHelper.clickXPath(GenerateButton)

		local DialogPath = XPath.new(game.CoreGui[dialogName])
		local DialogConfirmButtonPath =
			DialogPath:cat(XPath.new("SolidBackground.ButtonContainer.1.Contents.TextButton"))

		expect(TestHelper.waitForXPathInstance(DialogPath)).to.be.ok()
		expect(TestHelper.waitForXPathInstance(DialogConfirmButtonPath)).to.be.ok()
		TestHelper.clickXPath(DialogConfirmButtonPath)

		state = store:getState()
		local editingCage = state.selectItem.editingCage
		local subdivisions = state.latticeTool.subdivisions[editingCage][selectedLattice]
		expect(subdivisions.X).to.equal(2)
		expect(subdivisions.Y).to.equal(6)
		expect(subdivisions.Z).to.equal(4)
	end

	it("Subdivision changes should remain even if user switches deformer or cage", function()
		runRhodiumTest(function(container, store)
			setDeformerAndSubdivisions(container, store)

			expect(TestHelper.waitForXPathInstance(InnerCageButton)).to.be.ok()
			TestHelper.clickXPath(InnerCageButton)

			local xInputInstance = TestHelper.waitForXPathInstance(XInput)
			local yInputInstance = TestHelper.waitForXPathInstance(YInput)
			local zInputInstance = TestHelper.waitForXPathInstance(ZInput)
			expect(xInputInstance.Text).to.equal("1")
			expect(yInputInstance.Text).to.equal("3")
			expect(zInputInstance.Text).to.equal("1")

			expect(TestHelper.waitForXPathInstance(OuterCageButton)).to.be.ok()
			TestHelper.clickXPath(OuterCageButton)

			expect(xInputInstance.Text).to.equal("2")
			expect(yInputInstance.Text).to.equal("6")
			expect(zInputInstance.Text).to.equal("4")
		end)
	end)

	it("Changing tool should deselect lattice", function()
		runRhodiumTest(function(container, store)
			setDeformerAndSubdivisions(container, store)
			TestHelper.clickXPath(PointToolTabButton)

			local state = store:getState()
			expect(state.status.toolMode).to.equal(Constants.TOOL_MODE.Point)
			expect(state.latticeTool.selectedLattice).to.equal(nil)
		end)
	end)
end