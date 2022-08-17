--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local Element = Rhodium.Element
local XPath = Rhodium.XPath

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)

local act = require(Modules.act)

local Flags = InGameMenu.Flags

local TestConstants = require(script.Parent.TestConstants)

return function()
	beforeEach(function(c)
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
	end)

	afterEach(function(c)
		c.cleanup()
	end)

	it("should close the abuse type dropdown when you press escape", function(c)
		local path = XPath.new(c.path)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage("Report"))
		c.storeUpdate(OpenReportDialog(2359090420, "CosmicPulsar"))

		local reportDialogPath = path:cat(XPath.new("ReportDialog"))
		local reportDialog = Element.new(reportDialogPath)
		reportDialog:waitForRbxInstance()

		local openDropdownButtonPath = reportDialogPath:cat(XPath.new("DialogMainFrame.AbuseTypeDropDown.DropDown.OpenDropDownButton"))
		local openDropdownButton = Element.new(openDropdownButtonPath)
		openDropdownButton:waitForRbxInstance()

		local dropdownMenuPath = reportDialogPath:cat(XPath.new("DialogMainFrame.AbuseTypeDropDown.DropDown.DropDownShadow"))
		local dropdownMenu = Element.new(dropdownMenuPath)
		dropdownMenu:waitForRbxInstance()

		expect(reportDialog:isDisplayed()).to.equal(true)
		expect(dropdownMenu:isDisplayed()).to.equal(false)

		act(function()
			openDropdownButton:click()
			VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			wait()
		end)

		expect(dropdownMenu:isDisplayed()).to.equal(true)

		act(function()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Escape)
			VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			wait()
		end)

		expect(reportDialog:isDisplayed()).to.equal(false)
		expect(dropdownMenu:isDisplayed()).to.equal(false)

		c.storeUpdate(OpenReportDialog(2230941297, "jkelaty"))

		expect(reportDialog:isDisplayed()).to.equal(true)
		expect(dropdownMenu:isDisplayed()).to.equal(false)

		act(function()
			openDropdownButton:click()
			VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			wait()
		end)

		expect(dropdownMenu:isDisplayed()).to.equal(true)

		act(function()
			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Escape)
			VirtualInput.waitForInputEventsProcessed()
		end)
		act(function()
			wait()
		end)

		expect(reportDialog:isDisplayed()).to.equal(false)
		expect(dropdownMenu:isDisplayed()).to.equal(false)
	end)

	it("should switch between the page and SideNavigation", function(c)
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage("Report"))

		act(function()
			wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
		end)

		expect(store:getState().currentZone).to.equal(1)

		c.gamepadInput(Enum.KeyCode.DPadLeft)
		expect(store:getState().currentZone).to.equal(0)

		c.gamepadInput(Enum.KeyCode.DPadRight)
		expect(store:getState().currentZone).to.equal(1)
	end)

	it("Should bumper switch", function(c)
		local store = c.store

		-- Send an input to update UserInputService.GamepadEnabled
		c.gamepadInput(Enum.KeyCode.DPadDown)

		c.storeUpdate(SetMenuOpen(true))
		c.storeUpdate(SetCurrentPage("Report"))

		c.gamepadInput(Enum.KeyCode.ButtonL1)
		expect(store:getState().currentZone).to.equal(0)
		c.gamepadInput(Enum.KeyCode.ButtonR1)
		expect(store:getState().currentZone).to.equal(1)
	end)
end
