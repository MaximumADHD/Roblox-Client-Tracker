--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local act = require(CorePackages.Packages.Roact).act

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SetInputType = require(InGameMenu.Actions.SetInputType)

local InviteFriendsPage = require(InGameMenu.Components.InviteFriendsPage)

local Constants = require(InGameMenu.Resources.Constants)
local mountIGM = require(Modules.CoreScriptsRhodiumTest.TestHelpers["mountIGM.test"])

local c

describe("In-Game Menu Invite Friends page focus management", function()
	describe("Invite Friends integration tests", function()
		beforeEach(function()
			c = {}
			GuiService.SelectedCoreObject = nil
			Players.LocalPlayer.PlayerGui:ClearAllChildren()
			local path, store, cleanup, gamepad = mountIGM() -- add arguments to this in mountIGM if needed
			c.path = path
			c.store = store
			c.cleanup = cleanup
			c.gamepadInput = function(input)
				act(function()
					gamepad:hitButton(input)
					VirtualInput.waitForInputEventsProcessed()
				end)
				act(function()
					wait()
				end)
			end
			c.gamepadInputForZone = function(input, expectedZone)
				local reachedExpectedZone = Instance.new("BindableEvent")
				local didReachExpectedZone = store:getState().currentZone == expectedZone
				local storeChangedConnection = store.changed:connect(function(state)
					if state.currentZone == expectedZone then
						didReachExpectedZone = true
						reachedExpectedZone:Fire()
					end
				end)

				act(function()
					gamepad:hitButton(input)
					VirtualInput.waitForInputEventsProcessed()
					if store:getState().currentZone ~= expectedZone then
						local timeoutActive = true
						task.delay(5, function()
							if timeoutActive then
								reachedExpectedZone:Fire()
							end
						end)
						reachedExpectedZone.Event:Wait()
						timeoutActive = false
					end
				end)

				storeChangedConnection:disconnect()
				reachedExpectedZone:Destroy()
				expect(didReachExpectedZone).toBe(true)
			end
			c.waitForPageAnimation = function()
				local rootPath = XPath.new(path)
				local pagePath = rootPath:cat(XPath.new("PageContainer.InviteFriends"))
				local page = Element.new(pagePath):waitForRbxInstance(1)
				expect(page).never.toBeNil()

				local reachedFinalPosition = Instance.new("BindableEvent")
				local didReachFinalPosition = page.Position == UDim2.new(0, 0, 0, 0)
				local positionChangedConnection = page:GetPropertyChangedSignal("Position"):Connect(function()
					if page.Position == UDim2.new(0, 0, 0, 0) then
						didReachFinalPosition = true
						reachedFinalPosition:Fire()
					end
				end)

				if not didReachFinalPosition then
					local timeoutActive = true
					task.delay(5, function()
						if timeoutActive then
							reachedFinalPosition:Fire()
						end
					end)
					reachedFinalPosition.Event:Wait()
					timeoutActive = false
				end

				positionChangedConnection:Disconnect()
				reachedFinalPosition:Destroy()
				expect(didReachFinalPosition).toBe(true)
			end

			-- Send an input to update currently used input device
			act(function()
				gamepad:hitButton(Enum.KeyCode.DPadDown)
				VirtualInput.waitForInputEventsProcessed()
				wait()
			end)

			act(function()
				c.store:dispatch(SetMenuOpen(true))
				c.store:flush()
				wait()
			end)
			act(function()
				c.store:dispatch(SetCurrentPage("InviteFriends"))
				c.store:flush()
				wait()
			end)
		end)

		afterEach(function()
			c.cleanup()
		end)

		it("should switch between the page and SideNavigation", function()
			local store = c.store

			c.waitForPageAnimation()

			expect(store:getState().currentZone).toBe(1)

			c.gamepadInputForZone(Enum.KeyCode.DPadLeft, 0)
			expect(store:getState().currentZone).toBe(0)

			c.gamepadInputForZone(Enum.KeyCode.DPadRight, 1)
			expect(store:getState().currentZone).toBe(1)
		end)

		it("Should bumper switch", function()
			local store = c.store

			act(function()
				c.gamepadInput(Enum.KeyCode.ButtonL1)
				wait()
			end)
			expect(store:getState().currentZone).toBe(0)
			act(function()
				c.gamepadInput(Enum.KeyCode.ButtonR1)
				wait()
			end)
			expect(store:getState().currentZone).toBe(1)
		end)
	end)

	describe("Invite Friends page unit tests", function()
		local finishedLoadingEvent = Instance.new("BindableEvent")
		local mockPlayersService = {
			LocalPlayer = {
				UserId = 261,
			},
			GetFriendsAsync = function(localuserID)
				return assert(finishedLoadingEvent.Event:Wait())
			end,
		}

		beforeEach(function()
			c = {}
			GuiService.SelectedCoreObject = nil
			Players.LocalPlayer.PlayerGui:ClearAllChildren()

			local path, store, cleanup, gamepad = mountIGM({
				key = "InviteFriends",
				component = InviteFriendsPage,
				props = {
					pageTitle = "InviteFriends",
					PlayersService = mockPlayersService,
				},
			})

			c.path, c.store, c.cleanup = path, store, cleanup

			c.gamepadInput = function(input)
				act(function()
					gamepad:hitButton(input)
					VirtualInput.waitForInputEventsProcessed()
				end)
				act(wait)
			end

			c.storeUpdate = function(action)
				act(function()
					c.store:dispatch(action)
					c.store:flush()
				end)
				act(wait)
			end

			c.storeUpdate(SetInputType(Constants.InputType.Gamepad))
			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("InviteFriends"))
		end)

		afterEach(function()
			c.cleanup()
		end)

		it("should focus the back button when friends are loading", function()
			expect(tostring(GuiService.SelectedCoreObject)).toBe("BackButton")
		end)
		it("should focus the add friends button when you have no friends", function()
			expect(tostring(GuiService.SelectedCoreObject)).toBe("BackButton")

			finishedLoadingEvent:Fire({
				IsFinished = true,
				GetCurrentPage = function()
					return {}
				end,
			})
			act(wait)
			expect(tostring(GuiService.SelectedCoreObject)).toBe("MakeFriendsButton")
			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(c.store:getState().menuPage).toBe("Players")
		end)
		it("should focus the retry button when loading friends has failed", function()
			expect(tostring(GuiService.SelectedCoreObject)).toBe("BackButton")

			finishedLoadingEvent:Fire(nil) -- Should fail loading when we pass nil
			act(wait)
			expect(tostring(GuiService.SelectedCoreObject)).toBe("RetryButton")

			c.gamepadInput(Enum.KeyCode.ButtonA)
			expect(tostring(GuiService.SelectedCoreObject)).toBe("BackButton")

			finishedLoadingEvent:Fire({
				IsFinished = true,
				GetCurrentPage = function()
					return {
						{
							Id = 2231221,
							IsOnline = true,
							Username = "TheGamer101",
							DisplayName = "TestDisplayName",
						},
					}
				end,
			})
			act(wait)
			expect(tostring(GuiService.SelectedCoreObject)).toBe("friend_1")
		end)

		it("should focus the first friend when loading friends succeeds", function()
			expect(tostring(GuiService.SelectedCoreObject)).toBe("BackButton")

			finishedLoadingEvent:Fire({
				IsFinished = true,
				GetCurrentPage = function()
					return {
						{
							Id = 2231221,
							IsOnline = true,
							Username = "TheGamer101",
							DisplayName = "TestDisplayName",
						},
					}
				end,
			})
			act(wait)
			expect(tostring(GuiService.SelectedCoreObject)).toBe("friend_1")
		end)

		it("should focus the topmost search result and clear the search text", function()
			expect(tostring(GuiService.SelectedCoreObject)).toBe("BackButton")

			finishedLoadingEvent:Fire({
				IsFinished = true,
				GetCurrentPage = function()
					return {
						{
							Id = 123,
							IsOnline = true,
							Username = "AAAAA",
							DisplayName = "AAAAA",
						},
						{
							Id = 456,
							IsOnline = true,
							Username = "BBBBB",
							DisplayName = "BBBBB",
						},
						{
							Id = 789,
							IsOnline = true,
							Username = "CCCCC",
							DisplayName = "CCCCC",
						},
					}
				end,
			})
			act(wait)

			-- If we mounted the entire tree, the PageContainer component would
			-- wrap its contents in a selection parent. We simulate that here.
			local rootPath = XPath.new(c.path)
			local pageContainerPath = rootPath:cat(XPath.new("Page.PageContainer"))
			local pageContainer = Element.new(pageContainerPath)
			expect(pageContainer:waitForRbxInstance(1)).never.toBeNil()
			local pageContainerInstance = pageContainer.rbxInstance; -- AddSelectionParent is deprecated
			(GuiService :: any):AddSelectionParent("invite_friends_test_selection_parent", pageContainerInstance)

			expect(tostring(GuiService.SelectedCoreObject)).toBe("friend_1")
			expect(GuiService.SelectedCoreObject.DisplayNameLabel.Text).toBe("AAAAA")

			-- Focus the search bar and enter a search query
			c.gamepadInput(Enum.KeyCode.DPadUp)
			act(function()
				local searchBox = GuiService.SelectedCoreObject
				searchBox:CaptureFocus()
				VirtualInput.Text.sendText("CCCCC")
				VirtualInput.waitForInputEventsProcessed()
				searchBox:ReleaseFocus()
			end)
			act(wait)

			c.gamepadInput(Enum.KeyCode.DPadDown)
			expect(tostring(GuiService.SelectedCoreObject)).toBe("friend_3")
			expect(GuiService.SelectedCoreObject.DisplayNameLabel.Text).toBe("CCCCC")

			-- Click the clear button
			act(function()
				c.gamepadInput(Enum.KeyCode.DPadUp)
				c.gamepadInput(Enum.KeyCode.DPadRight)
				c.gamepadInput(Enum.KeyCode.ButtonA)
			end)
			act(wait)

			c.gamepadInput(Enum.KeyCode.DPadDown)
			expect(tostring(GuiService.SelectedCoreObject)).toBe("friend_1")
			expect(GuiService.SelectedCoreObject.DisplayNameLabel.Text).toBe("AAAAA")

			GuiService:RemoveSelectionGroup("invite_friends_test_selection_parent")
		end)
	end)
end)
