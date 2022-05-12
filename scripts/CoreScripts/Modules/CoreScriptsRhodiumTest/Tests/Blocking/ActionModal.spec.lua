--!nonstrict

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local actionModalDefaultStory = require(Modules.Settings.Components.Blocking:FindFirstChild("ActionModal.story"))

local noOpt = function()
end

return function()
	describe("ActionModal", function()
		beforeEach(function(c)
			c.actionMockSpy, c.actionMock = c.jest.fn(noOpt)
			c.cancelMockSpy, c.cancelMock = c.jest.fn(noOpt)

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

			c.jestExpect(button).never.toBeNil()

			c.RhodiumHelpers.clickInstance(button)

			c.jestExpect(c.actionMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.cancelMockSpy).never.toHaveBeenCalled()
		end)


		it("SHOULD only close the modal if they click cancel", function(c)
			local blockButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Cancel",
			})

			c.jestExpect(blockButton).never.toBeNil()

			c.RhodiumHelpers.clickInstance(blockButton.Parent)

			c.jestExpect(c.actionMockSpy).never.toHaveBeenCalled()
			c.jestExpect(c.cancelMockSpy).toHaveBeenCalledTimes(1)
		end)
	end)
end
