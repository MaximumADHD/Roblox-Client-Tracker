--!nocheck

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local actionModalDefaultStory = require(Modules.Settings.Components.Blocking:FindFirstChild("ActionModal.story"))

local noOpt = function()
end

return function()
	describe("ActionModal", function()
		beforeEach(function(c)
			c.actionMockSpy, c.actionMock = c.Mock.Spy.new(noOpt)
			c.cancelMockSpy, c.cancelMock = c.Mock.Spy.new(noOpt)

			c.parent, c.cleanup = c.createInstanceWithProps(actionModalDefaultStory, {
				action = c.actionMock,
				cancel = c.cancelMock,
			})
		end)

		afterEach(function(c)
			c.cleanup()
		end)

		it("SHOULD only call close modal if they click block", function(c)
			local button = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			})

			expect(button).to.be.ok()

			c.RhodiumHelpers.clickInstance(button)

			expect(c.actionMockSpy).toHaveBeenCalled(1)
			expect(c.cancelMockSpy).never.toHaveBeenCalled()
		end)


		it("SHOULD only close the modal if they click cancel", function(c)
			local blockButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Cancel",
			})

			expect(blockButton).to.be.ok()

			c.RhodiumHelpers.clickInstance(blockButton.Parent)

			expect(c.actionMockSpy).never.toHaveBeenCalled()
			expect(c.cancelMockSpy).toHaveBeenCalled(1)
		end)
	end)
end
