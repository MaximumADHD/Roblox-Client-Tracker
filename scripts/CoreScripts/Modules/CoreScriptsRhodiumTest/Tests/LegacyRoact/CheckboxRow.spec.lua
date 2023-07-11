--!nonstrict
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local CheckboxRow = require(Modules.Settings.Components.ReportConfirmation.CheckboxRow)

local noOp = function()
end

return function()
	describe("CheckboxRow", function()
		beforeEach(function(c)
			c.checkboxActivatedMockSpy, c.checkboxActivatedMock = c.jest.fn(noOp)

			c.parent, c.cleanup = c.createInstanceWithProps(CheckboxRow, {
				onCheckboxActivated = c.checkboxActivatedMock,
			})
		end)

		afterEach(function(c)
			c.cleanup()
		end)

		it("SHOULD callback when checkbox is activated", function(c)
			local button = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "checkbox",
			})

			c.jestExpect(button).never.toBeNil()

			c.RhodiumHelpers.clickInstance(button, true)

			c.jestExpect(c.checkboxActivatedMockSpy).toHaveBeenCalledTimes(1)
		end)
	end)
end
