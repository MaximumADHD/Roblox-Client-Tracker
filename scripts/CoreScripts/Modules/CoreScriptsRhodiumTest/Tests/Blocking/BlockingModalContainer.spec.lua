--!nonstrict

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local blockingModalStory = require(Modules.Settings.Components.Blocking:FindFirstChild("BlockingModalContainer.story"))

local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local successfulAction = function()
	return true
end

return function()
	describe("BlockingModalContainer", function()
		beforeEach(function(c)
			c.blockPlayerAsyncMock, c.blockPlayerAsync = c.jest.fn(successfulAction)
			c.blockingUtility = {
				BlockPlayerAsync = c.blockPlayerAsync,
			}
			c.closeModalSpy, c.closeModal = c.jest.fn(successfulAction)
			c.player = {
				UserId = 10,
			}

			c.analyticsActionMock, c.analyticsAction = c.jest.fn()
			c.analytics = {
				action = c.analyticsAction
			}

			c.parent, c.cleanup = c.createInstanceWithProps(blockingModalStory, {
				analytics = c.analytics,
				blockingUtility = c.blockingUtility,
				robloxTranslator = c.robloxTranslatorMock,
				closeModal = c.closeModal,
				player = c.player,
				blockTextKey = "Block",
				cancelTextKey = "Cancel",
			})

			-- The `Alert` dialog in uiblox has multiphase measure/layout
			-- behavior, meaning that we need to defer events _twice_ and make
			-- sure to `act` on the second one to resolve render updates queued
			-- by those event handlers
			waitForEvents()
			waitForEvents.act()
		end)

		afterEach(function(c)
			c.cleanup()
		end)

		it("SHOULD close modal and block user if they click block", function(c)
			local button = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			})

			c.jestExpect(button).never.toBeNil()

			c.RhodiumHelpers.clickInstance(button)

			c.jestExpect(c.closeModalSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.blockPlayerAsyncMock).toHaveBeenCalledTimes(1)
			c.jestExpect(c.blockPlayerAsyncMock).toHaveBeenCalledWith(c.blockingUtility, c.player)
		end)

		it("SHOULD fire analytics action if they click block and its successful", function(c)
			local button = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			})

			c.jestExpect(button).never.toBeNil()

			c.RhodiumHelpers.clickInstance(button)

			c.jestExpect(c.closeModalSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.analyticsActionMock).toHaveBeenCalledTimes(1)
			c.jestExpect(c.analyticsActionMock).toHaveBeenCalledWith(
				c.analytics,
				"SettingsHub",
				"blockUser",
				{blockeeUserId = c.player.UserId}
			)
		end)

		it("SHOULD only close the modal if they click cancel", function(c)
			local blockButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Cancel",
			})

			c.jestExpect(blockButton).never.toBeNil()

			c.RhodiumHelpers.clickInstance(blockButton.Parent)

			c.jestExpect(c.closeModalSpy).toHaveBeenCalledTimes(1)
			c.jestExpect(c.blockPlayerAsyncMock).never.toHaveBeenCalled()
		end)
	end)
end
