return function()
	local Plugin = script.Parent.Parent
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local XPath = Rhodium.XPath

	local MathUtil = require(Plugin.Src.Util.MathUtil)

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local TestRunner = require(Plugin.Src.Util.TestRunner)
	local runRhodiumTest = TestRunner.runRhodiumTest

	it("Attachment info should be preserved if it's a valid attachment type", function()
		runRhodiumTest(function(_, _, _, editingItemContext)
			TestHelper.goToEditScreenFromStart(false, true)

			local editingItem = editingItemContext:getItem()

			local attachment = editingItem:FindFirstChildOfClass("Attachment")
			expect(attachment.Name).to.equal("WaistFrontAttachment")

			expect(MathUtil:fuzzyEq_CFrame(attachment.CFrame, TestHelper.AttachmentCFrame)).to.equal(true)
		end)
	end)
end