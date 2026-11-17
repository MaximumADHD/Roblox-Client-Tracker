local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local openCapturesGallery = require(script.Parent.openCapturesGallery)

local CAPTURES_PAGE = { Name = "CapturesPage" }

local function createSettingsHub(capturesPage: unknown?, isVisible: boolean)
	return {
		Instance = { CapturesPage = capturesPage },
		GetVisibility = function()
			return isVisible
		end,
		SwitchToPage = jest.fn(),
		SetVisibility = jest.fn(),
	}
end

describe("openCapturesGallery", function()
	it("SHOULD return false without navigating when SettingsHub has no Captures page", function()
		local settingsHub = createSettingsHub(nil, false)

		expect(openCapturesGallery(settingsHub :: any)).toBe(false)
		expect(settingsHub.SwitchToPage).never.toHaveBeenCalled()
		expect(settingsHub.SetVisibility).never.toHaveBeenCalled()
	end)

	it("SHOULD switch to the Captures page when the menu is already open", function()
		local settingsHub = createSettingsHub(CAPTURES_PAGE, true)

		expect(openCapturesGallery(settingsHub :: any)).toBe(true)
		expect(settingsHub.SwitchToPage).toHaveBeenCalledWith(settingsHub, CAPTURES_PAGE, true)
		expect(settingsHub.SetVisibility).never.toHaveBeenCalled()
	end)

	it("SHOULD open the menu on the Captures page when the menu is closed", function()
		local settingsHub = createSettingsHub(CAPTURES_PAGE, false)

		expect(openCapturesGallery(settingsHub :: any)).toBe(true)
		expect(settingsHub.SetVisibility).toHaveBeenCalledWith(settingsHub, true, false, CAPTURES_PAGE)
		expect(settingsHub.SwitchToPage).never.toHaveBeenCalled()
	end)
end)
