return function()
	local Plugin = script.Parent.Parent
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runRhodiumTest = TestRunner.runRhodiumTest

	local Constants = require(Plugin.Src.Util.Constants)

	local SelectRbfPoint = require(Plugin.Src.Thunks.SelectRbfPoint)

	local ScrollerPath = TestHelper.getEditScreenContainer()
	local EditorFrame = ScrollerPath:cat(XPath.new("EditSwizzle.ViewArea.EditorFrame"))

	local PointToolTabButton =
		EditorFrame:cat(XPath.new("TabsRibbon.Tabs.2"))

	local LatticeToolTabButton =
		EditorFrame:cat(XPath.new("TabsRibbon.Tabs.1"))

	local PointToolSettings =
		EditorFrame:cat(XPath.new("SettingView.PointToolSettings"))

	local FalloffInput =
			PointToolSettings:cat(XPath.new("FalloffSetting.SliderContainer.ValueTextBoxFrame.ValueTextBox.Contents.TextBox"))

	local function selectPoint(store)
		TestHelper.clickXPath(PointToolTabButton)
		local state = store:getState()
		expect(state.status.toolMode).to.equal(Constants.TOOL_MODE.Point)

		store:dispatch(SelectRbfPoint({
			{
				Deformer = TestHelper.DefaultClothesName,
				Index = 1,
			}
		}))
	end

	it("Changing falloff value should change selected points and their weight", function()
		runRhodiumTest(function(container, store)
			TestHelper.goToEditScreenFromStart(true)
			selectPoint(store)

			expect(TestHelper.waitForXPathInstance(FalloffInput)).to.be.ok()

			-- default is 0.5
			local state = store:getState()
			expect(#state.pointTool.clickedPoints).to.equal(1)
			expect(state.pointTool.selectedPoints[TestHelper.DefaultClothesName][1]).to.equal(1)
			local multiplePoints = false
			for deformer, pointsPerDeformer in pairs(state.pointTool.selectedPoints) do
				for pointIndex, weight in pairs(pointsPerDeformer) do
					if pointIndex ~= 1 then
						multiplePoints = true
					end
				end
			end
			expect(multiplePoints).to.equal(true)

			TestHelper.sendInputToXPath(FalloffInput, 0)
			state = store:getState()
			expect(#state.pointTool.clickedPoints).to.equal(1)
			expect(state.pointTool.selectedPoints[TestHelper.DefaultClothesName][1]).to.equal(1)

			TestHelper.sendInputToXPath(FalloffInput, 100)
			state = store:getState()
			expect(#state.pointTool.clickedPoints).to.equal(1)
			expect(state.pointTool.selectedPoints[TestHelper.DefaultClothesName][1]).to.equal(1)
			local count = 0
			for _, pointsPerDeformer in pairs(state.pointTool.selectedPoints) do
				for _, weight in pairs(pointsPerDeformer) do
					count = count + 1
				end
			end
			expect(count).to.equal(824)
		end)
	end)

	it("Changing tool should deselect points", function()
		runRhodiumTest(function(container, store)
			TestHelper.goToEditScreenFromStart(true)

			selectPoint(store)
			TestHelper.clickXPath(LatticeToolTabButton)

			local state = store:getState()
			expect(state.status.toolMode).to.equal(Constants.TOOL_MODE.Lattice)
			expect(next(state.pointTool.clickedPoints)).to.equal(nil)
			expect(next(state.pointTool.selectedPoints)).to.equal(nil)
		end)
	end)
end