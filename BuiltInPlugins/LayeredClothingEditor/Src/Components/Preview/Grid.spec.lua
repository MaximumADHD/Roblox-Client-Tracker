return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runComponentTest = TestRunner.runComponentTest

	local Grid = require(script.Parent.Grid)
	it("should create and destroy without errors", function()
		runComponentTest(Roact.createElement(Grid, {
			UpdateUserAddedAssets = function() end,
			UserAddedAssets = {}
		}))
	end)

	it("should render correctly", function ()
		runComponentTest(
			Roact.createElement(Grid, {
				UpdateUserAddedAssets = function() end,
				UserAddedAssets = {}
			}),
			function(container)
				if game:GetFastFlag("DevFrameworkScrollingFrameUsePane") then
					local frame = container:FindFirstChildOfClass("Frame")
					local scrollingFrame = frame.ScrollingFrame
					local scroller = frame.ScrollingFrame.Scroller
					local uiGridLayout = frame.ScrollingFrame.Scroller.UIGridLayout

					expect(frame).to.be.ok()
					expect(scrollingFrame).to.be.ok()
					expect(scroller).to.be.ok()
					expect(uiGridLayout).to.be.ok()
				else
					local frame = container:FindFirstChildOfClass("Frame")
					local scrollingFrame = frame.ScrollingFrame
					local contents = frame.ScrollingFrame.Contents
					local scroller = frame.ScrollingFrame.Contents.Scroller
					local uiGridLayout = frame.ScrollingFrame.Contents.Scroller.UIGridLayout

					expect(frame).to.be.ok()
					expect(scrollingFrame).to.be.ok()
					expect(contents).to.be.ok()
					expect(scroller).to.be.ok()
					expect(uiGridLayout).to.be.ok()
				end
			end
		)
	end)
end