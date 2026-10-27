--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local mockRootRender = jest.fn()
local mockCreateRoot = jest.fn(function(_page)
	return {
		render = mockRootRender,
	}
end)

jest.mock(CorePackages.Packages.ReactRoblox, function()
	return {
		createRoot = mockCreateRoot,
	}
end)

jest.mock(CorePackages.Workspace.Packages.HelpPage, function()
	return {
		Constants = {
			HELP_PAGE = {
				TAB_HEADER = {
					NAME = "Help",
					TEXT = "CoreScripts.Feedback.Help.MainHeader",
				},
			},
		},
		Flags = {
			FFlagRefactorHelpPage = true,
		},
		HelpReactView = function()
			return nil
		end,
	}
end)

jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	return {
		FFlagRenameHelpToControls = true,
	}
end)

jest.mock(RobloxGui.Modules.Settings.Integrations, function()
	return {
		Utils = {
			getDeviceType = function()
				return nil
			end,
		},
	}
end)

describe("HelpWrapper", function()
	local helpWrapper = require(script.Parent.HelpWrapper)
	local versionContainer = Instance.new("Frame")
	helpWrapper:SetHub({
		Shield = { Visible = false },
		VersionContainer = versionContainer,
	})

	afterEach(function()
		helpWrapper.Page:Destroy()
		versionContainer:Destroy()
		mockCreateRoot.mockClear()
		mockRootRender.mockClear()
	end)

	it("SHOULD create the React root in the settings page WHEN it is displayed", function()
		helpWrapper.Displayed:Fire()
		waitForEvents()

		expect(mockCreateRoot).toHaveBeenCalledWith(helpWrapper.Page)
		expect(mockRootRender).toHaveBeenCalledTimes(1)
	end)
end)
