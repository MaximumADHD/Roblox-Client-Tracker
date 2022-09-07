--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local InspectAndBuyModules = Modules:WaitForChild("InspectAndBuy")
local act = require(Modules.act)

local GetFFlagUseInspectAndBuyControllerBar = require(InspectAndBuyModules.Flags.GetFFlagUseInspectAndBuyControllerBar)
local ControllerShortcutKeycodes = require(InspectAndBuyModules.Components.Common.ControllerShortcutKeycodes)
local FavoriteShorcutKeycode = ControllerShortcutKeycodes.Favorite
local TryOnShorcutKeycode = ControllerShortcutKeycodes.TryOn

return function()
	afterEach(function(c)
		c.cleanup()
	end)

	local function sharedBeforeEach(c, _path, store, cleanup, gamepad)
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()

		c.store = store
		c.cleanup = cleanup

		c.storeUpdate = function(action)
			act(function()
				store:dispatch(action)
				store:flush()
			end)
			act(function()
				wait()
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
	end

	describe("Assets are Roblox authored", function()
		beforeEach(function(c)
			sharedBeforeEach(c, c.mountInspectMenu(--[[notRobloxAuthored = ]] false))
		end)

		if GetFFlagUseInspectAndBuyControllerBar() then
			it("Should appear for Roblox item, favorite shortcut changes text", function(c)
				c.gamepadInput(Enum.KeyCode.ButtonA)
				c.gamepadInput(Enum.KeyCode.ButtonA)


				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).to.be.ok()
				expect(#controllerBarElement:GetChildren()).to.equal(3)

				-- ensure correct text is rendered
				local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
				local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

				expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Back")

				expect(#rightFrame:GetChildren()).to.equal(4)
				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Favorite")
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Try On")
				expect(rightFrame:GetChildren()[3]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Confirm")

				-- favorite shortcut works
				c.gamepadInput(FavoriteShorcutKeycode)
				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Unfavorite")

				-- try on shortcut works
				c.gamepadInput(TryOnShorcutKeycode)
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).never.to.equal("Take off")
				c.gamepadInput(TryOnShorcutKeycode)
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).never.to.equal("Try on")
			end)
		end
	end)

	describe("Assets are not Roblox authored.", function()
		beforeEach(function(c)
			sharedBeforeEach(c, c.mountInspectMenu(--[[notRobloxAuthored = ]] true))
		end)

		if GetFFlagUseInspectAndBuyControllerBar() then
			it("Non-roblox item should not be favoritable", function(c)
				c.gamepadInput(Enum.KeyCode.ButtonA)
				c.gamepadInput(Enum.KeyCode.ButtonA)


				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).to.be.ok()
				expect(#controllerBarElement:GetChildren()).to.equal(3)

				-- ensure correct text is rendered
				local rightFrame = controllerBarElement:FindFirstChild("RightFrame")
				expect(#rightFrame:GetChildren()).to.equal(3)
				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Try On")
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Confirm")
			end)

			it("Items currently being worn should not show try on", function(c)
				c.gamepadInput(Enum.KeyCode.ButtonA)
				c.gamepadInput(Enum.KeyCode.ButtonA)


				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).to.be.ok()
				expect(#controllerBarElement:GetChildren()).to.equal(3)

				-- ensure correct text is rendered
				local rightFrame = controllerBarElement:FindFirstChild("RightFrame")
				expect(#rightFrame:GetChildren()).to.equal(3)
				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Try On")
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Confirm")
			end)
		end
	end)
end
