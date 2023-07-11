--!nonstrict

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ReportActionSelection = require(Modules.Settings.Components.ReportConfirmation.ReportActionSelection)

local noOp = function()
end

return function()
	describe("ReportActionSelection", function()
		beforeEach(function(c)
			c.onMuteCheckboxActivatedMockSpy, c.onMuteCheckboxActivatedMock = c.jest.fn(noOp)
			c.onBlockCheckboxActivatedMockSpy, c.onBlockCheckboxActivatedMock = c.jest.fn(noOp)
			c.onDoneActivatedMockSpy, c.onDoneActivatedMock = c.jest.fn(noOp)

			c.parent, c.cleanup = c.createInstanceWithProps(ReportActionSelection, {
				onMuteCheckboxActivated = c.onMuteCheckboxActivatedMock,
				onBlockCheckboxActivated = c.onBlockCheckboxActivatedMock,
				onDoneActivated = c.onDoneActivatedMock,
				muteText = "Mute",
				blockText = "Block",
				doneText = "Done",
				showVoiceMuting = true,
				isVoiceMuted = false,
				isBlocked = false,
			})
		end)

		afterEach(function(c)
			c.cleanup()
		end)

		it("SHOULD only call onDoneActivated with muted argument", function(c)
			local muteCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Mute",
			}).Parent.checkbox

			local blockCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			}).Parent.checkbox

			local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Done",
			})

			c.jestExpect(muteCheckbox).never.toBeNil()
			c.jestExpect(blockCheckbox).never.toBeNil()
			c.jestExpect(doneButton).never.toBeNil()

			c.act(function()
				c.RhodiumHelpers.clickInstance(muteCheckbox, true)
			end)

			c.act(function()
				c.RhodiumHelpers.clickInstance(doneButton)
			end)

			c.jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(
				false,
				true
			)
		end)

		it("SHOULD only call onDoneActivated with blocked argument", function(c)
			local muteCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Mute",
			}).Parent.checkbox

			local blockCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			}).Parent.checkbox

			local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Done",
			})

			c.jestExpect(muteCheckbox).never.toBeNil()
			c.jestExpect(blockCheckbox).never.toBeNil()
			c.jestExpect(doneButton).never.toBeNil()

			c.act(function()
				c.RhodiumHelpers.clickInstance(blockCheckbox, true)
			end)

			c.act(function()
				c.RhodiumHelpers.clickInstance(doneButton)
			end)

			c.jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(
				true,
				false
			)
		end)

		it("SHOULD call onDoneActivated with blocked AND muted arguments", function(c)
			local muteCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Mute",
			}).Parent.checkbox

			local blockCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			}).Parent.checkbox

			local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Done",
			})

			c.jestExpect(muteCheckbox).never.toBeNil()
			c.jestExpect(blockCheckbox).never.toBeNil()
			c.jestExpect(doneButton).never.toBeNil()

			c.act(function()
				c.RhodiumHelpers.clickInstance(muteCheckbox, true)
			end)

			c.act(function()
				c.RhodiumHelpers.clickInstance(blockCheckbox, true)
			end)

			c.act(function()
				c.RhodiumHelpers.clickInstance(doneButton)
			end)

			c.jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
			c.jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledWith(true)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(
				true,
				true
			)
		end)

		it("SHOULD call onDoneActivated with neither blocked nor muted arguments", function(c)
			local muteCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Mute",
			}).Parent.checkbox

			local blockCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			}).Parent.checkbox

			local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Done",
			})

			c.jestExpect(muteCheckbox).never.toBeNil()
			c.jestExpect(blockCheckbox).never.toBeNil()
			c.jestExpect(doneButton).never.toBeNil()

			c.act(function()
				c.RhodiumHelpers.clickInstance(doneButton)
			end)

			c.jestExpect(c.onBlockCheckboxActivatedMockSpy).toHaveBeenCalledTimes(0)
			c.jestExpect(c.onMuteCheckboxActivatedMockSpy).toHaveBeenCalledTimes(0)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.onDoneActivatedMockSpy).toHaveBeenCalledWith(
				false,
				false
			)
		end)
	end)
end
