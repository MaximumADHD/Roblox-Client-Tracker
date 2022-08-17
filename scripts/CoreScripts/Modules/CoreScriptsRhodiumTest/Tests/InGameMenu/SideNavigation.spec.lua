--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath
local act = require(Modules.act)

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)

local Flags = InGameMenu.Flags

local TestConstants = require(script.Parent.TestConstants)

return function()
	beforeEach(function(c)
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
		local path, store, cleanup, gamepad = c.mountIGM({
			policyData = { EnableInGameHomeIcon = true, },
		})
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
			c.store:dispatch(SetCurrentPage("Players"))
			c.store:flush()
			wait()
		end)
	end)

	afterEach(function(c)
		c.cleanup()
	end)

	describe("In-Game Menu SideNavigation focus management", function()
		it("should recapture focus on close button from game icon", function(c)
			if game:GetFastFlag("UseGUACforDUARPolicy") then
				local path = c.path

				local rootPath = XPath.new(path)
				local iconPath = rootPath:cat(XPath.new("SideNavigation.Content.SystemMenuButton"))

				act(function()
					wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
				end)

				c.gamepadInput(Enum.KeyCode.DPadLeft)

				local gameIcon = Element.new(iconPath):getRbxInstance()
				expect(gameIcon).to.be.ok()
				expect(GuiService.SelectedCoreObject).to.equal(gameIcon)
				c.gamepadInput(Enum.KeyCode.ButtonB)

				local closeIcon = Element.new(iconPath):getRbxInstance()
				expect(closeIcon).to.be.ok()
				expect(closeIcon).to.never.equal(gameIcon)
				expect(GuiService.SelectedCoreObject).to.equal(closeIcon)
			end
		end)

		it("should not recapture focus on close button from home icon", function(c)
			if game:GetFastFlag("UseGUACforDUARPolicy") then
				local path = c.path

				act(function()
					wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
				end)

				local rootPath = XPath.new(path)
				local iconPath = rootPath:cat(XPath.new("SideNavigation.Content.HomeButton.HomeButton"))
				local homeIcon = Element.new(iconPath):getRbxInstance()
				expect(homeIcon).to.be.ok()

				c.gamepadInput(Enum.KeyCode.DPadLeft)
				c.gamepadInput(Enum.KeyCode.DPadDown)

				expect(GuiService.SelectedCoreObject).to.equal(homeIcon)

				c.gamepadInput(Enum.KeyCode.ButtonB)

				expect(GuiService.SelectedCoreObject).to.equal(homeIcon)
			end
		end)
	end)
end
