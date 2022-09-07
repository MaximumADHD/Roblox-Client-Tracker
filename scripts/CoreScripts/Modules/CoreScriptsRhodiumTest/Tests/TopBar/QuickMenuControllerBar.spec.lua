--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = CoreGui.RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local TopBar = Modules.TopBar
local QuickMenu = require(TopBar.Components.Presentation.GamepadMenu)
local SetGamepadMenuOpen = require(TopBar.Actions.SetGamepadMenuOpen)

local GetFFlagQuickMenuControllerBarRefactor = require(RobloxGui.Modules.Flags.GetFFlagQuickMenuControllerBarRefactor)

local act = require(Modules.act)

return function()
	beforeEach(function(c)
		GuiService.SelectedCoreObject = nil
		Players.LocalPlayer.PlayerGui:ClearAllChildren()
		local path, store, cleanup, gamepad = c.mountTopBar({
			key = "QuickMenu",
			component = QuickMenu,
		})
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

	describe("Controller bar", function()
		if GetFFlagQuickMenuControllerBarRefactor() then
			it("Should appear/disappear with QuickMenu", function(c)
				c.storeUpdate(SetGamepadMenuOpen(true))

				local controllerBarElement = CoreGui.QuickMenuControllerBar.ControllerBar
				expect(controllerBarElement).to.be.ok()
				expect(#controllerBarElement:GetChildren()).to.equal(3)

				-- ensure correct text is rendered
				local leftFrame = controllerBarElement:FindFirstChild("LeftFrame")
				local rightFrame = controllerBarElement:FindFirstChild("RightFrame")

				expect(leftFrame:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Back")

				expect(rightFrame:GetChildren()[1]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Respawn Character")
				expect(rightFrame:GetChildren()[2]:FindFirstChild("ControllerBarHintText", true).Text).to.equal("Leave")

				-- Close menu
				c.gamepadInput(Enum.KeyCode.ButtonB)
				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).never.to.be.ok()
			end)
			it("Should close with respawn", function(c)
				c.storeUpdate(SetGamepadMenuOpen(true))

				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).to.be.ok()
				expect(#controllerBarElement:GetChildren()).to.equal(3)

				-- Respawn
				c.gamepadInput(Enum.KeyCode.ButtonY)

				-- ensure other controllerBar is now on screen
				controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).never.to.be.ok()
			end)
			it("Should disappear with leaveGame", function(c)
				c.storeUpdate(SetGamepadMenuOpen(true))


				local controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).to.be.ok()
				expect(#controllerBarElement:GetChildren()).to.equal(3)

				-- Respawn
				c.gamepadInput(Enum.KeyCode.ButtonX)
				controllerBarElement = CoreGui:FindFirstChild("ControllerBar", true)
				expect(controllerBarElement).never.to.be.ok()
			end)
		end
	end)
end

