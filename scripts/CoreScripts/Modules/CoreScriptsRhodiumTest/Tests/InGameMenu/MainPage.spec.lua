--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules
local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SetMainPageMoreMenuOpen = require(InGameMenu.Actions.SetMainPageMoreMenuOpen)
local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local SetInputType = require(InGameMenu.Actions.SetInputType)

local Constants = require(InGameMenu.Resources.Constants)

local act = require(Modules.act)

local Flags = InGameMenu.Flags
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)
local GetFFlagSideNavControllerBar = require(Flags.GetFFlagSideNavControllerBar)

local TestConstants = require(script.Parent.TestConstants)

return function()
	beforeEach(function(c)
		for _, child in ipairs(CoreGui:GetChildren()) do
			if child.Name == "IGMControllerBar" then
				child:Destroy()
			end
		end

		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
		local path, store, cleanup, gamepad = c.mountIGM() -- add arguments to this in init file if needed
		c.path = path
		c.store = store
		c.cleanup = cleanup

		c.storeUpdate = function(action)
			act(function()
				store:dispatch(action)
				store:flush()
			end)
		end

		c.gamepadInput = function(input)
			act(function()
				gamepad:hitButton(input)
				VirtualInput.waitForInputEventsProcessed()
			end)
			act(function()
				wait()
			end)
		end

		c.mouseClick = function(target, skipValidation: boolean?)
			act(function()
				if skipValidation then
					target:clickWithoutValidation()
				else
					target:click()
				end
				VirtualInput.waitForInputEventsProcessed()
			end)
			act(function()
				wait()
			end)
		end

		c.keyboardInput = function(input)
			act(function()
				Rhodium.VirtualInput.Keyboard.hitKey(input)
				VirtualInput.waitForInputEventsProcessed()
			end)
			act(function()
				wait()
			end)
		end
	end)

	afterEach(function(c)
		c.cleanup()
	end)

	-- Test that focus is handed off correctly navigating between pages
	describe("In-Game Menu main page focus handoffs", function()
		it("Should select the Players menu item when main page is opened with gamepad", function(c)
			local path = c.path

			-- Input device is set to Gamepad when receiving its first gamepad input
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

			local rootPath = XPath.new(path)
			local playersButtonPath = rootPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".PageNavigation.PagePlayers"))
			local playersButtonElement = Element.new(playersButtonPath)

			expect(playersButtonElement:waitForRbxInstance(1)).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(playersButtonElement.rbxInstance)
		end)

		it("Should gain and lose focus when user transitions between gamepad and keyboard", function(c)
			local path = c.path

			-- The last input device when getting to the page is MouseAndKeyboard
			c.keyboardInput(Enum.KeyCode.Down)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

			local rootPath = XPath.new(path)
			local playersButtonPath = rootPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".PageNavigation.PagePlayers"))
			local playersButtonElement = Element.new(playersButtonPath)

			-- Nothing is selected as user gets to the page after using keyboard
			expect(GuiService.SelectedCoreObject).toBeNil()

			-- Input device is set to Gamepad and the menu item is focused
			c.gamepadInput(Enum.KeyCode.DPadUp)
			expect(playersButtonElement:waitForRbxInstance(1)).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(playersButtonElement:getRbxInstance())

			c.keyboardInput(Enum.KeyCode.Down)
			-- Nothing is selected as user goes back to using keyboard
			expect(GuiService.SelectedCoreObject).toBeNil()
		end)

		it("Should select the first player when moving to the Players page", function(c)
			local path = c.path

			-- Make sure the last used input device is gamepad
			c.gamepadInput(Enum.KeyCode.ButtonA)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))
			act(function()
				wait()
			end)

			local originalPath = XPath.new(path)
			local playersButtonPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".PageNavigation.PagePlayers"))

			local playersButtonElement = Element.new(playersButtonPath)
			expect(playersButtonElement:waitForRbxInstance(1)).never.toBeNil()

			c.gamepadInput(Enum.KeyCode.ButtonA)
			--[[
				TODO APPFDN-693: when running in studio, different mock data is being
				provided than when running in roblox-cli.
			]]
			local playerString = "player_1"
			if game:GetFastFlag("LuaMenuPerfImprovements") then
				playerString = "player_12345678"
			end
			expect(tostring(GuiService.SelectedCoreObject)).toBe(playerString)
		end)

		it("Should select the Camera Mode dropdown when opening the settings page", function(c)
			-- Send an input to update currently used input device
			c.gamepadInput(Enum.KeyCode.DPadDown)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage("GameSettings"))

			expect(tostring(GuiService.SelectedCoreObject)).toBe("OpenDropDownButton")
		end)

		it("Should remember to select Settings option when navigating back from Settings page", function(c)
			if GetFFlagIGMGamepadSelectionHistory() then
				-- Send an input to update currently used input device
				c.gamepadInput(Enum.KeyCode.DPadDown)
				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

				c.gamepadInput(Enum.KeyCode.DPadDown) -- Invite Friends
				c.gamepadInput(Enum.KeyCode.DPadDown) -- Settings

				c.gamepadInput(Enum.KeyCode.ButtonA) -- Settings
				expect(tostring(GuiService.SelectedCoreObject)).toBe("OpenDropDownButton") -- Focus captured on Settings

				c.gamepadInput(Enum.KeyCode.ButtonB) -- Go back
				expect(tostring(GuiService.SelectedCoreObject)).toBe("PageGameSettings")
			end
		end)

		it("Should move selection to Friends menu item when pushing lever down", function(c)
			local path = c.path
			-- Make sure the last used input device is gamepad
			c.gamepadInput(Enum.KeyCode.ButtonA)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

			local rootPath = XPath.new(path)
			local friendsButtonPath = rootPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".PageNavigation.PageInviteFriends"))
			local friendsButtonElement = Element.new(friendsButtonPath)

			c.gamepadInput(Enum.KeyCode.DPadDown)
			expect(friendsButtonElement:waitForRbxInstance(1)).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(friendsButtonElement.rbxInstance)
		end)

		it("should switch between the page and SideNavigation", function(c)
			local store = c.store
			-- Make sure the last used input device is gamepad
			c.gamepadInput(Enum.KeyCode.ButtonA)

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

			act(function()
				wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
			end)

			expect(store:getState().currentZone).toBe(1)

			c.gamepadInput(Enum.KeyCode.DPadLeft)
			expect(store:getState().currentZone).toBe(0)

			c.gamepadInput(Enum.KeyCode.DPadRight)
			expect(store:getState().currentZone).toBe(1)
		end)

		it("Forgets previous selection when menu is closed", function(c)
			if GetFFlagIGMGamepadSelectionHistory() then
				local store = c.store
				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

				c.gamepadInput(Enum.KeyCode.DPadDown) -- Players option
				c.gamepadInput(Enum.KeyCode.DPadDown) -- Invite Friends option
				expect(tostring(GuiService.SelectedCoreObject)).toBe("PageInviteFriends")

				c.gamepadInput(Enum.KeyCode.ButtonB) -- Close menu

				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))
				expect(tostring(GuiService.SelectedCoreObject)).toBe("PagePlayers")
			end
		end)
	end)

	describe("MainPage's 'more' menu", function(c)
		it("Should open/close with mouse clicks", function(c)
			local path = c.path
			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))
			act(function()
				wait(TestConstants.PageAnimationDuration)
			end)

			local originalPath = XPath.new(path)
			local moreMenuButtonPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".BottomButtons.MoreButton"))
			local moreMenuButtonElement = Element.new(moreMenuButtonPath)
			local contextualMenuPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".ContextualMenu"))
			local contextualMenuElement = Element.new(contextualMenuPath)
			local contextualMenu = contextualMenuElement:waitForRbxInstance(1)

			expect(contextualMenu.Visible).toBe(false)

			-- Open the menu
			c.mouseClick(moreMenuButtonElement)
			expect(contextualMenu.Visible).toBe(true)

			-- Close the menu - disable click validation since this may
			-- _actually_ click the background of the ContextualMenu (which has
			-- the same effect of dismissing it)
			c.mouseClick(moreMenuButtonElement, true)

			local DELAY_FOR_ANIMATION_AND_REFOCUS = 1 -- closing menu takes longer to animate
			act(function()
				wait(DELAY_FOR_ANIMATION_AND_REFOCUS)
			end)
			expect(contextualMenu.Visible).toBe(false)

			-- Reopen menu
			c.mouseClick(moreMenuButtonElement)
			expect(contextualMenu.Visible).toBe(true)
		end)

		it("Should open when clicking the ellipsis button, and close when pressing B", function(c)
			local store = c.store
			local path = c.path

			if GetFFlagIGMGamepadSelectionHistory() then
				-- Make sure the last used input device is gamepad
				c.gamepadInput(Enum.KeyCode.ButtonA)
			end

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))
			act(function()
				wait()
			end)

			local originalPath = XPath.new(path)
			local moreMenuButtonPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".BottomButtons.MoreButton"))
			local moreMenuButtonElement = Element.new(moreMenuButtonPath)
			local moreMenuButton = moreMenuButtonElement:waitForRbxInstance(1)

			local contextualMenuPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".ContextualMenu"))
			local contextualMenuElement = Element.new(contextualMenuPath)
			local firstMenuButton = contextualMenuElement:waitForRbxInstance(1)
				:FindFirstChild("cell 1", true)
				:FindFirstChildWhichIsA("ImageButton", true)

			GuiService.SelectedCoreObject = moreMenuButton
			act(function()
				wait(0.2)
			end)

			-- Opening the menu
			c.gamepadInput(Enum.KeyCode.ButtonA)

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(firstMenuButton)

			c.gamepadInput(Enum.KeyCode.ButtonB)

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(GuiService.SelectedCoreObject).toBe(moreMenuButton)
		end)

		it("Should close when navigating to another page", function(c)
			local store = c.store
			local path = c.path
			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))
			act(function()
				wait()
			end)

			local originalPath = XPath.new(path)
			local moreMenuButtonPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".BottomButtons.MoreButton"))
			local moreMenuButtonElement = Element.new(moreMenuButtonPath)
			local moreMenuButton = moreMenuButtonElement:waitForRbxInstance(1)

			local contextualMenuPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".ContextualMenu"))
			local contextualMenuElement = Element.new(contextualMenuPath)
			local contextualMenu = contextualMenuElement:waitForRbxInstance(1)

			-- Menu starts off closed
			expect(contextualMenu.Visible).toBe(false)
			-- Opening the menu
			GuiService.SelectedCoreObject = moreMenuButton
			act(function()
				wait(0.2)
			end)
			c.gamepadInput(Enum.KeyCode.ButtonA)

			expect(contextualMenu.Visible).toBe(true)

			-- Switching page closes the menu
			c.gamepadInput(Enum.KeyCode.ButtonX)

			--  UI change is delayed by an animation
			act(function()
				wait(1)
			end)
			expect(contextualMenu.Visible).toBe(false)
		end)

		it("Should close when Respawn opens", function(c)
			local store = c.store
			local path = c.path
			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))
			act(function()
				wait()
			end)

			local originalPath = XPath.new(path)
			local moreMenuButtonPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".BottomButtons.MoreButton"))
			local moreMenuButtonElement = Element.new(moreMenuButtonPath)
			local moreMenuButton = moreMenuButtonElement:waitForRbxInstance(1)

			local contextualMenuPath = originalPath:cat(XPath.new(
				"PageContainer.MainPage.Page" ..
				".ContextualMenu"))
			local contextualMenuElement = Element.new(contextualMenuPath)
			local contextualMenu = contextualMenuElement:waitForRbxInstance(1)

			-- Opening the menu
			GuiService.SelectedCoreObject = moreMenuButton
			act(function()
				wait(0.2)
			end)
			c.gamepadInput(Enum.KeyCode.ButtonA)

			expect(contextualMenu.Visible).toBe(true)

			-- Switching page closes the menu
			c.gamepadInput(Enum.KeyCode.ButtonY)

			--  UI change is delayed by an animation
			act(function()
				wait(1)
			end)
			expect(contextualMenu.Visible).toBe(false)
		end)
	end)

	describe("In-Game Menu Shortcuts", function(c)
		it("Should open the Leave game page when pressing X", function(c)
			local store = c.store

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

			c.gamepadInput(Enum.KeyCode.ButtonX)
			expect(tostring(store:getState().menuPage)).toBe("LeaveGamePrompt")
		end)

		it("Should open the Respawn dialog when pressing Y", function(c)
			local store = c.store

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

			c.gamepadInput(Enum.KeyCode.ButtonY)
			expect(store:getState().respawn.dialogOpen).toBe(true)
		end)

		it("Should not bumper switch if menu closed", function(c)
			local store = c.store

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetMenuOpen(false))

			c.gamepadInput(Enum.KeyCode.ButtonL1)
			expect(store:getState().currentZone).toBe(1)
			c.gamepadInput(Enum.KeyCode.ButtonR1)
			expect(store:getState().currentZone).toBe(1)
		end)

		it("Should bumper switch", function(c)
			local store = c.store

			c.storeUpdate(SetMenuOpen(true))
			c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

			c.gamepadInput(Enum.KeyCode.ButtonL1)
			expect(store:getState().currentZone).toBe(0)
			c.gamepadInput(Enum.KeyCode.ButtonR1)
			expect(store:getState().currentZone).toBe(1)
		end)

		if GetFFlagUseIGMControllerBar() then
			it("Should open and close more menu when clicking left stick", function(c)
				local originalPath = XPath.new(c.path)

				-- Send an input to update currently used input device
				c.gamepadInput(Enum.KeyCode.DPadDown)

				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

				local contextualMenuPath = originalPath:cat(XPath.new(
					"PageContainer.MainPage.Page" ..
					".ContextualMenu"))
				local contextualMenuElement = Element.new(contextualMenuPath)
				local contextualMenu = contextualMenuElement:waitForRbxInstance(1)

				-- Menu starts off closed
				expect(contextualMenu.Visible).toBe(false)

				c.gamepadInput(Enum.KeyCode.ButtonL3)

				expect(contextualMenu.Visible).toBe(true)
				expect(tostring(GuiService.SelectedCoreObject)).toBe("Cell") -- Highlights more menu
				wait(3) -- wait for animation
				c.gamepadInput(Enum.KeyCode.ButtonL3)
				wait(3) -- wait for animation
				expect(contextualMenu.Visible).toBe(false)
				if GetFFlagIGMGamepadSelectionHistory() then
					-- Remembers to highlight previously highlighted Players option
					expect(tostring(GuiService.SelectedCoreObject)).toBe("PagePlayers")
				end
			end)
		end
	end)

	describe("Controller Bar", function()
		if GetFFlagUseIGMControllerBar() then
			it("Should render ControllerBar when menu is open", function(c)
				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

				-- Send an input to update currently used input device
				c.gamepadInput(Enum.KeyCode.DPadDown)


				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).never.toBeNil()
				expect(#controllerBarElement:GetChildren()).toBe(3)

				-- ensure correct text is rendered
				local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
				local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

				expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).toBe("Back")

				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Open More Menu")
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Respawn Character")
				expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Leave")
			end)
			it("Should change text when more menu is opened", function(c)
				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

				-- Send an input to update currently used input device
				c.gamepadInput(Enum.KeyCode.DPadDown)


				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).never.toBeNil()
				expect(#controllerBarElement:GetChildren()).toBe(3)

				c.gamepadInput(Enum.KeyCode.ButtonL3)

				-- ensure correct text is rendered
				local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
				local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

				expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).toBe("Back")

				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Close More Menu")
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Respawn Character")
				expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Leave")
			end)
			it("Should change text when respawn dialog is opened", function(c)
				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))
				c.storeUpdate(SetRespawning(true))

				-- Send an input to update currently used input device
				c.gamepadInput(Enum.KeyCode.DPadDown)


				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).never.toBeNil()
				expect(#controllerBarElement:GetChildren()).toBe(3)

				-- ensure correct text is rendered
				local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
				local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

				expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).toBe("Cancel")

				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Respawn")
			end)
			it("Should show and hide ControllerBar depending on last used input", function(c)
				c.storeUpdate(SetMenuOpen(true))
				c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

				-- Should not display controllerbar when MouseAndKeyboard are last used input
				c.storeUpdate(SetInputType(Constants.InputType.MouseAndKeyboard))

				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).toBeNil()

				-- Should appear when we use gamepad
				c.storeUpdate(SetInputType(Constants.InputType.Gamepad))

				controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).never.toBeNil()

				-- Should disappear when we use keyboard again
				c.storeUpdate(SetInputType(Constants.InputType.MouseAndKeyboard))

				controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).toBeNil()
			end)
			if GetFFlagSideNavControllerBar() then
				it("Should render ControllerBar when selecting side navigation", function(c)
					c.storeUpdate(SetMenuOpen(true))
					c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

					act(function()
						wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
					end)

					-- Send an input to update currently used input device
					c.gamepadInput(Enum.KeyCode.DPadDown)
					c.gamepadInput(Enum.KeyCode.DPadLeft)

					expect(tostring(GuiService.SelectedCoreObject)).toBe("CloseMenuButton")

					local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
					expect(controllerBarElement).never.toBeNil()
					expect(#controllerBarElement:GetChildren()).toBe(3)

					-- ensure correct text is rendered
					local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
					local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

					expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).toBe("Back")

					expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Open More Menu")
					expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Respawn Character")
					expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Leave")
				end)

				it("Should open more menu with left stickfrom side navigation", function(c)
					local originalPath = XPath.new(c.path)

					c.storeUpdate(SetMenuOpen(true))
					c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

					local contextualMenuPath = originalPath:cat(XPath.new(
						"PageContainer.MainPage.Page" ..
						".ContextualMenu"))
					local contextualMenuElement = Element.new(contextualMenuPath)
					local contextualMenu = contextualMenuElement:waitForRbxInstance(1)

					act(function()
						wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
					end)

					-- Send an input to update currently used input device
					c.gamepadInput(Enum.KeyCode.DPadDown)
					c.gamepadInput(Enum.KeyCode.DPadLeft)

					expect(tostring(GuiService.SelectedCoreObject)).toBe("CloseMenuButton")

					-- Menu starts off closed
					expect(contextualMenu.Visible).toBe(false)

					c.gamepadInput(Enum.KeyCode.ButtonL3)
					wait(TestConstants.OpenMoreMenuAnimationDuration) -- wait for animation
					expect(contextualMenu.Visible).toBe(true)

					local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
					expect(controllerBarElement).never.toBeNil()
					expect(#controllerBarElement:GetChildren()).toBe(3)

					-- ensure correct text is rendered
					local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
					local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

					expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).toBe("Back")

					expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Close More Menu")
					expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Respawn Character")
					expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).toBe("Leave")

					c.gamepadInput(Enum.KeyCode.ButtonL3)
					wait(TestConstants.CloseMoreMenuAnimationDuration) -- wait for animation
					expect(contextualMenu.Visible).toBe(false)
				end)
			end
		end
	end)

	it("should toggle keyboard-specific UI elements on user input", function(c)
		local path = XPath.new(c.path)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage(Constants.MainPagePageKey))

		local mainPagePath = path:cat(XPath.new("PageContainer.MainPage.Page"))

		local leaveGameKeyLabelPath_Gamepad = mainPagePath:cat(XPath.new("BottomButtons.LeaveGame.KeyLabel"))
		local leaveGameKeyLabelPath_Keyboard = leaveGameKeyLabelPath_Gamepad:cat(XPath.new("LabelContent"))

		-- These components do not use the UIBlox KeyLabel component
		local respawnKeyLabelPath_Gamepad
		local respawnKeyLabelPath_Keyboard
		if game:GetFastFlag("TakeAScreenshotOfThis") then
			respawnKeyLabelPath_Gamepad = mainPagePath:cat(XPath.new("ContextualMenu.PositionFrame.BaseMenu.ClippingFrame.ScrollingFrame.cell 3.Cell.RightAlignedContent.KeyLabel"))
			respawnKeyLabelPath_Keyboard = respawnKeyLabelPath_Gamepad:cat(XPath.new("LabelContent"))
		else
			respawnKeyLabelPath_Gamepad = mainPagePath:cat(XPath.new("ContextualMenu.PositionFrame.BaseMenu.ClippingFrame.ScrollingFrame.cell 1.Cell.RightAlignedContent.KeyLabel"))
			respawnKeyLabelPath_Keyboard = respawnKeyLabelPath_Gamepad:cat(XPath.new("LabelContent"))
		end

		c.keyboardInput(Enum.KeyCode.A)

		do
			local leaveGameKeyLabel = Element.new(leaveGameKeyLabelPath_Keyboard):getRbxInstance()
			expect(leaveGameKeyLabel).never.toBeNil()
			expect(leaveGameKeyLabel.Text).toBe("L")

			local respawnKeyLabel = Element.new(respawnKeyLabelPath_Keyboard):getRbxInstance()
			expect(respawnKeyLabel).never.toBeNil()
			expect(respawnKeyLabel.Text).toBe("R")
		end

		c.gamepadInput(Enum.KeyCode.DPadDown)

		local ButtonX = "rbxasset://textures/ui/Controls/DesignSystem/ButtonX.png"
		local leaveGameKeyLabel = Element.new(leaveGameKeyLabelPath_Gamepad):getRbxInstance()
		expect(leaveGameKeyLabel).never.toBeNil()
		expect(leaveGameKeyLabel.Image).toBe(ButtonX)

		local ButtonY = "rbxasset://textures/ui/Controls/DesignSystem/ButtonY.png"
		local respawnKeyLabel = Element.new(respawnKeyLabelPath_Gamepad):getRbxInstance()
		expect(respawnKeyLabel).never.toBeNil()
		expect(respawnKeyLabel.Image).toBe(ButtonY)

		c.keyboardInput(Enum.KeyCode.A)

		do
			local leaveGameKeyLabel = Element.new(leaveGameKeyLabelPath_Keyboard):getRbxInstance()
			expect(leaveGameKeyLabel).never.toBeNil()
			expect(leaveGameKeyLabel.Text).toBe("L")

			local respawnKeyLabel = Element.new(respawnKeyLabelPath_Keyboard):getRbxInstance()
			expect(respawnKeyLabel).never.toBeNil()
			expect(respawnKeyLabel.Text).toBe("R")
		end
	end)
end
