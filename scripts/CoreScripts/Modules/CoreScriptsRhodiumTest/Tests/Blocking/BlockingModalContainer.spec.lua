--!nocheck

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local blockingModalStory = require(Modules.Settings.Components.Blocking:FindFirstChild("BlockingModalContainer.story"))

local successfulAction = function()
	return true
end

return function()
	describe("BlockingModalContainer", function()
		beforeEach(function(c)
			c.blockPlayerAsyncMock, c.blockPlayerAsync = c.Mock.Spy.new(successfulAction)
			c.blockingUtility = {
				BlockPlayerAsync = c.blockPlayerAsync,
			}
			c.closeModalSpy, c.closeModal = c.Mock.Spy.new(successfulAction)
			c.player = {
				UserId = 10,
			}

			c.analytics = c.Mock.MagicMock.new({ name = "EventStream" })

			c.predicates = {
				isAnalytics = function(x)
					return x == c.analytics
				end,

				isBlockeeUserId = function(x)
					return x.blockeeUserId == c.player.UserId
				end,
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
		end)

		afterEach(function(c)
			c.cleanup()
		end)

		it("SHOULD close modal and block user if they click block", function(c)
			local button = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			})

			expect(button).to.be.ok()

			c.RhodiumHelpers.clickInstance(button)

			expect(c.closeModalSpy).toHaveBeenCalled(1)
			expect(c.blockPlayerAsyncMock).toHaveBeenCalled(1).toHaveBeenCalledWith(c.blockingUtility, c.player)
		end)

		it("SHOULD fire analytics action if they click block and its successful", function(c)
			local button = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Block",
			})

			expect(button).to.be.ok()

			c.RhodiumHelpers.clickInstance(button)

			expect(c.closeModalSpy).toHaveBeenCalled(1)
			expect(c.analytics.action).toHaveBeenCalled(1).toHaveBeenCalledWith(
				c.Mock.predicate(c.predicates.isAnalytics),
				"SettingsHub",
				"blockUser",
				c.Mock.predicate(c.predicates.isBlockeeUserId)
			)
		end)

		it("SHOULD only close the modal if they click cancel", function(c)
			local blockButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
				Text = "Cancel",
			})

			expect(blockButton).to.be.ok()

			c.RhodiumHelpers.clickInstance(blockButton.Parent)

			expect(c.closeModalSpy).toHaveBeenCalled(1)
			expect(c.blockPlayerAsyncMock).never.toHaveBeenCalled()
		end)
	end)
end
