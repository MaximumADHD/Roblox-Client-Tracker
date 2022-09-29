return function()
	local Plugin = script.Parent.Parent
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runRhodiumTest = TestRunner.runRhodiumTest

	local Constants = require(Plugin.Src.Util.Constants)

	local MainPath = TestHelper.getEditScreenContainer()
	local EditingModeRadioButtonList =
		MainPath:cat(XPath.new("EditSwizzle.Content.EditorFrame.EditingModeFrame.EditingModeRadioButtonList"))
	local SelectInnerCageRadioButtonPath =
		EditingModeRadioButtonList:cat(XPath.new("Inner.RadioImage.Contents"))
	local SelectOuterCageRadioButtonPath =
		EditingModeRadioButtonList:cat(XPath.new("Outer.RadioImage.Contents"))
	local SelectMeshPartModeRadioButtonPath =
		EditingModeRadioButtonList:cat(XPath.new("Mesh.RadioImage.Contents"))

	itSKIP("Default Selection is Outer Cage for caged accessory", function()
		runRhodiumTest(function()
			TestHelper.goToEditScreenFromStart(true)

			local innerCageButton = TestHelper.waitForXPathInstance(SelectInnerCageRadioButtonPath)
			expect(innerCageButton).to.be.ok()
			local innerCageForegroundPath = SelectInnerCageRadioButtonPath:cat(XPath.new("Foreground"))
			expect(innerCageForegroundPath:getFirstInstance()).to.equal(nil)

			local meshPartButton = TestHelper.waitForXPathInstance(SelectMeshPartModeRadioButtonPath)
			expect(meshPartButton).to.be.ok()
			local meshPartButtonForegroundPath = SelectMeshPartModeRadioButtonPath:cat(XPath.new("Foreground"))
			expect(meshPartButtonForegroundPath:getFirstInstance()).to.equal(nil)

			local outerCageButton = TestHelper.waitForXPathInstance(SelectOuterCageRadioButtonPath)
			expect(outerCageButton).to.be.ok()
			local outerCageForegroundPath = SelectOuterCageRadioButtonPath:cat(XPath.new("Foreground"))
			expect(outerCageForegroundPath:getFirstInstance()).to.be.ok()
		end)
	end)

	itSKIP("Default Selection is MeshPart for rigid accessory", function()
		runRhodiumTest(function()
			TestHelper.goToEditScreenFromStart(false)

			local innerCageButton = TestHelper.waitForXPathInstance(SelectInnerCageRadioButtonPath)
			expect(innerCageButton).to.be.ok()
			local innerCageForegroundPath = SelectInnerCageRadioButtonPath:cat(XPath.new("Foreground"))
			expect(innerCageForegroundPath:getFirstInstance()).to.equal(nil)

			local meshPartButton = TestHelper.waitForXPathInstance(SelectMeshPartModeRadioButtonPath)
			expect(meshPartButton).to.be.ok()
			local meshPartButtonForegroundPath = SelectMeshPartModeRadioButtonPath:cat(XPath.new("Foreground"))
			expect(meshPartButtonForegroundPath:getFirstInstance()).to.be.ok()

			local outerCageButton = TestHelper.waitForXPathInstance(SelectOuterCageRadioButtonPath)
			expect(outerCageButton).to.be.ok()
			local outerCageForegroundPath = SelectOuterCageRadioButtonPath:cat(XPath.new("Foreground"))
			expect(outerCageForegroundPath:getFirstInstance()).to.equal(nil)
		end)
	end)

	itSKIP("Can't select Outer/Inner cage for rigid accessory", function()
		runRhodiumTest(function(_, store)
			TestHelper.goToEditScreenFromStart(false)
			expect(store:getState().selectItem.editingCage).to.equal(Constants.EDIT_MODE.Mesh)

			local innerCageButton = TestHelper.waitForXPathInstance(SelectInnerCageRadioButtonPath)
			expect(innerCageButton).to.be.ok()
			TestHelper.clickXPath(SelectInnerCageRadioButtonPath)

			expect(store:getState().selectItem.editingCage).to.equal(Constants.EDIT_MODE.Mesh)

			local outerCageButton = TestHelper.waitForXPathInstance(SelectOuterCageRadioButtonPath)
			expect(outerCageButton).to.be.ok()
			TestHelper.clickXPath(SelectOuterCageRadioButtonPath)

			expect(store:getState().selectItem.editingCage).to.equal(Constants.EDIT_MODE.Mesh)
		end)
	end)

	itSKIP("Can't select MeshPart for caged accessory", function()
		runRhodiumTest(function(_, store)
			TestHelper.goToEditScreenFromStart(true)
			expect(store:getState().selectItem.editingCage).to.equal(Enum.CageType.Outer)

			local meshPartButton = TestHelper.waitForXPathInstance(SelectMeshPartModeRadioButtonPath)
			expect(meshPartButton).to.be.ok()
			TestHelper.clickXPath(SelectMeshPartModeRadioButtonPath)

			expect(store:getState().selectItem.editingCage).to.equal(Enum.CageType.Outer)
		end)
	end)

	itSKIP("Clicking button changes cage", function()
		runRhodiumTest(function(_, store)
			TestHelper.goToEditScreenFromStart(true)
			expect(store:getState().selectItem.editingCage).to.equal(Enum.CageType.Outer)

			local innerCageButton = TestHelper.waitForXPathInstance(SelectInnerCageRadioButtonPath)
			expect(innerCageButton).to.be.ok()
			TestHelper.clickXPath(SelectInnerCageRadioButtonPath)

			expect(store:getState().selectItem.editingCage).to.equal(Enum.CageType.Inner)
		end)
	end)
end