--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local CheckboxRow = require(Modules.Settings.Components.ReportConfirmation.CheckboxRow)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest
local jestExpect = JestGlobals.expect

local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)
local createInstanceWithProps = require(Modules.CoreScriptsRhodiumTest.TestHelpers.createInstanceWithProps)

local noOp = function() end

local c

describe("CheckboxRow", function()
	beforeEach(function()
		c = {}
		c.checkboxActivatedMockSpy, c.checkboxActivatedMock = jest.fn(noOp)

		c.parent, c.cleanup = createInstanceWithProps(CheckboxRow, {
			onCheckboxActivated = c.checkboxActivatedMock,
		})
	end)

	afterEach(function()
		c.cleanup()
	end)

	it("SHOULD callback when checkbox is activated", function()
		local button = RhodiumHelpers.findFirstInstance(c.parent, {
			Name = "checkbox",
		})

		jestExpect(button).never.toBeNil()

		RhodiumHelpers.clickInstance(button, true)

		jestExpect(c.checkboxActivatedMockSpy).toHaveBeenCalledTimes(1)
	end)
end)
