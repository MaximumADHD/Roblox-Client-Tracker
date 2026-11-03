-- AvatarSwitcherEntrypoint registers its integration at require time, so each flag state
-- re-requires it under `jest.isolateModules`. Its dependencies are stubbed so loading it
-- registers nothing real and makes no avatar-support request.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local function noop() end

jest.mock(Chrome.Service, function()
	return {
		AvailabilitySignal = {
			Available = 2,
			Unavailable = 0,
		},
		-- The entrypoint returns what register returns, so echoing the definition lets the
		-- tests read what was registered.
		register = function(_self, definition)
			return definition
		end,
		onIntegrationStatusChanged = noop,
		isWindowOpen = function()
			return false
		end,
		toggleWindow = noop,
	}
end)

jest.mock(Chrome.ChromeShared.Service.ChromeUtils, function()
	return {
		MappedSignal = {
			new = function()
				return {}
			end,
		},
		setCoreGuiAvailability = noop,
	}
end)

jest.mock(Chrome.ChromeShared.Service.WindowSizeSignal, function()
	return {
		new = function()
			return {}
		end,
	}
end)

-- The real Constants requires GetStyleTokens, which errors inside `jest.isolateModules` because
-- the UIBlox singleton isn't initialized there.
jest.mock(Chrome.ChromeShared.Unibar.Constants, function()
	return {
		AVATAR_SWITCHER_ID = "avatar_switcher",
	}
end)

jest.mock(Chrome.Integrations.AvatarSwitcher.AvatarSwitcherChromeWrapper, function()
	return noop
end)

jest.mock(Chrome.Integrations.AvatarSwitcher.AvatarSwitcherIcon, function()
	return noop
end)

jest.mock(CorePackages.Workspace.Packages.Chrome, function()
	return {
		Enums = {
			SideSheetPlacement = {
				AboveFold = "AboveFold",
			},
		},
	}
end)

jest.mock(CorePackages.Workspace.Packages.Http, function()
	return {
		Url = {
			AVATAR_URL = "https://avatar.roblox.com/",
		},
	}
end)

local function loadIntegration(workshopEnabled: boolean)
	local integration
	jest.isolateModules(function()
		jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
			return {
				FFlagChromeWindowSignalConstraintsToggle = false,
				-- Pinned off so the entrypoint doesn't spawn the avatar-support request.
				FFlagRemoveAvatarSwitcherIfUnsupported = false,
				FFlagAvatarWorkshopReplacesAvatarSwitcher = workshopEnabled,
			}
		end)
		integration = require(script.Parent.AvatarSwitcherEntrypoint)
	end)
	return integration
end

describe("AvatarSwitcherEntrypoint", function()
	it("should label the button Switch Avatar with FFlagAvatarWorkshopReplacesAvatarSwitcher off", function()
		local integration = loadIntegration(false)

		expect(integration.label).toBe("Feature.AvatarSwitcher.Heading.SwitchAvatar")
	end)

	it("should label the button Avatar with FFlagAvatarWorkshopReplacesAvatarSwitcher on", function()
		local integration = loadIntegration(true)

		expect(integration.label).toBe("CommonUI.Features.Label.Avatar")
	end)
end)
