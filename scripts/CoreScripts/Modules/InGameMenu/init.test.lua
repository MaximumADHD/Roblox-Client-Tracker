local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

beforeEach(function()
	GuiService.SelectedCoreObject = nil
	local localPlayer = Players.LocalPlayer :: Player
	localPlayer.PlayerGui:ClearAllChildren()
end)

afterEach(function()
	GuiService.SelectedCoreObject = nil
	local localPlayer = Players.LocalPlayer :: Player
	localPlayer.PlayerGui:ClearAllChildren()
end)

it("should require without errors", function()
	local InGameMenu = require(script.Parent)
	expect(InGameMenu).never.toBeNil()
end)
