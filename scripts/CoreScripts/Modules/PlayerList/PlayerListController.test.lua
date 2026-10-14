--!strict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local Roact = require(CorePackages.Packages.Roact)
local waitUntil = require(CorePackages.Workspace.Packages.TestUtils).waitUntil

local PlayerList = script.Parent
local PlayerListController = require(PlayerList.PlayerListController)
local FFlagPlayerListUseMobileOnSmallDisplay = PlayerListPackage.Flags.FFlagPlayerListUseMobileOnSmallDisplay
local FFlagEnableMobilePlayerListOnGamepad = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnGamepad
local FFlagPlayerListReskin = PlayerListPackage.Flags.FFlagPlayerListReskin
local FFlagPlayerListPersistVisibility = require(PlayerList.Flags.FFlagPlayerListPersistVisibility)

it("should render PlayerList", function()
	local _list = PlayerListController.new()
	if FFlagPlayerListUseMobileOnSmallDisplay then
		local PlayerListApp = CoreGui:FindFirstChild("PlayerListApp", true)
		expect(PlayerListApp).toBeDefined()
	else
		local PlayerList = CoreGui:FindFirstChild("PlayerScrollList", true) :: Frame

		expect(PlayerList).toBeDefined()
		expect(PlayerList:IsA("Frame")).toEqual(true)

		waitUntil(function()
			Roact.act(function() end)
			-- Player ID associated with roblox-cli LocalPlayer
			return PlayerList:FindFirstChild("PlayerEntry_12345678", true) ~= nil
		end, 2)
	end
end)

local function flipPreferredInputToGamepad(controller: any)
	local onPreferredInputChanged = controller._onPreferredInputChanged
	if onPreferredInputChanged then
		onPreferredInputChanged(Enum.PreferredInput.Gamepad)
	end
end

local function destroyController(controller: any)
	if controller._reskinPreferredInputConn then
		controller._reskinPreferredInputConn:Disconnect()
		controller._reskinPreferredInputConn = nil
	end
	controller:SetTopBarEnabled(false)
end

if FFlagEnableMobilePlayerListOnGamepad and FFlagPlayerListReskin then
	describe("preferred input layout flip", function()
		local controller: any = nil
		local previousPlayerListVisible: boolean? = nil
		local previousCoreGuiEnabled: boolean? = nil

		beforeEach(function()
			previousPlayerListVisible = UserSettings().GameSettings.PlayerListVisible
			UserSettings().GameSettings.PlayerListVisible = true
			previousCoreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
			StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
		end)

		afterEach(function()
			if controller then
				destroyController(controller)
				controller = nil
			end
			if previousPlayerListVisible ~= nil then
				UserSettings().GameSettings.PlayerListVisible = previousPlayerListVisible
			end
			if previousCoreGuiEnabled ~= nil then
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, previousCoreGuiEnabled)
			end
		end)

		it("remounts the leaderboard and resets visibility when preferred input flips to gamepad", function()
			controller = PlayerListController.new()
			controller:SetVisibility(true)
			local previousReskin = controller._reskinScreenGui
			expect(previousReskin).never.toBeNil()

			flipPreferredInputToGamepad(controller)

			expect(controller._reskinScreenGui).never.toBe(previousReskin)
			expect(previousReskin.Parent).toBeNil()
			expect(controller:GetSetVisible()).toBe(false)
		end)

		it("keeps the reset visibility after a temp-hide snapshot is restored", function()
			controller = PlayerListController.new()
			controller:SetVisibility(true)
			controller:HideTemp("SettingsMenu", true)

			flipPreferredInputToGamepad(controller)
			expect(controller:GetSetVisible()).toBe(false)

			controller:HideTemp("SettingsMenu", false)

			expect(controller:GetSetVisible()).toBe(false)
			expect(controller:GetVisibility()).toBe(false)
		end)

		if FFlagPlayerListPersistVisibility then
			it("does not persist the console hidden state when the leaderboard was never mounted", function()
				StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
				UserSettings().GameSettings.PlayerListVisible = true
				controller = PlayerListController.new()
				expect(controller.mounted).toBe(false)

				flipPreferredInputToGamepad(controller)

				expect(UserSettings().GameSettings.PlayerListVisible).toBe(true)
				expect(controller:GetSetVisible()).toBe(false)
			end)
		end
	end)
end

if not FFlagEnableMobilePlayerListOnGamepad then
	describe("preferred input layout flip with the gamepad flag off", function()
		local controller: any = nil
		local previousPlayerListVisible: boolean? = nil

		beforeEach(function()
			previousPlayerListVisible = UserSettings().GameSettings.PlayerListVisible
		end)

		afterEach(function()
			if controller then
				destroyController(controller)
				controller = nil
			end
			if previousPlayerListVisible ~= nil then
				UserSettings().GameSettings.PlayerListVisible = previousPlayerListVisible
			end
		end)

		it("does not remount the leaderboard or reset visibility when preferred input flips to gamepad", function()
			controller = PlayerListController.new()
			local visibleBefore = controller:GetSetVisible()
			local reskinBefore = controller._reskinScreenGui

			flipPreferredInputToGamepad(controller)

			expect(controller._reskinPreferredInputConn).toBeNil()
			expect(controller._onPreferredInputChanged).toBeNil()
			expect(controller:GetSetVisible()).toBe(visibleBefore)
			expect(controller._reskinScreenGui).toBe(reskinBefore)
		end)
	end)
end
