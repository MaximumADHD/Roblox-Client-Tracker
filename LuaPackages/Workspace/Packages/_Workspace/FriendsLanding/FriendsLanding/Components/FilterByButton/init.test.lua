local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)
local getFFlagFilterByButtonZeroStateFixEnabled =
	require(FriendsLanding.Flags.getFFlagFilterByButtonZeroStateFixEnabled)
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local FilterByButton = require(script.Parent)

local buttonTextName = "PillText"
local buttonIconName = "Icon"

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function(c)
		local activatedMock = jest.fn()
		local _, cleanup = createInstanceWithProps(mockLocale)(FilterByButton, {
			onActivated = function()
				activatedMock()
			end,
			filter = filterStates.All,
			friendCount = 0,
		})

		cleanup()
	end)

	it("SHOULD add the friend count to the end of the filter message", function(c)
		local parent, cleanup = createInstanceWithProps(mockLocale)(FilterByButton, {
			friendCount = 200,
		})

		local buttonText = RhodiumHelpers.findFirstInstance(parent, {
			Name = buttonTextName,
		})

		expect(buttonText).toEqual(expect.any("Instance"))
		expect(buttonText.Text).toContain("(200)")

		cleanup()
	end)

	it("SHOULD not add the friend count to the end of the filter message", function(c)
		local parent, cleanup = createInstanceWithProps(mockLocale)(FilterByButton, {
			friendCount = 0,
		})

		local buttonText = RhodiumHelpers.findFirstInstance(parent, {
			Name = buttonTextName,
		})

		expect(buttonText).toEqual(expect.any("Instance"))

		if getFFlagFilterByButtonZeroStateFixEnabled() then
			expect(buttonText.Text).toEqual("Feature.Friends.Label.All")
		else
			expect(buttonText.Text).toContain("(0)")
		end

		cleanup()
	end)

	it("SHOULD fire the onActivated callback when the pill is tapped", function(c)
		local activatedMock = jest.fn()
		local parent, cleanup = createInstanceWithProps(mockLocale)(FilterByButton, {
			onActivated = function()
				activatedMock()
			end,
			filter = filterStates.All,
			friendCount = 0,
		})

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Button",
		})

		RhodiumHelpers.clickInstance(button)

		expect(activatedMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)

	it("SHOULD not fire the onActivated callback when the pill is tapped if isDisabled is true", function(c)
		local activatedMock = jest.fn()
		local parent, cleanup = createInstanceWithProps(mockLocale)(FilterByButton, {
			onActivated = function()
				activatedMock()
			end,
			isDisabled = true,
		})

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Button",
		})

		RhodiumHelpers.clickInstance(button)

		expect(activatedMock).never.toHaveBeenCalled()

		cleanup()
	end)

	it("SHOULD have less bold text when disabled", function(c)
		local activatedMock = jest.fn()
		local activeFilterButton, cleanupActiveFilterButton = createInstanceWithProps(mockLocale)(FilterByButton, {
			onActivated = function()
				activatedMock()
			end,
			isDisabled = false,
		})
		local disabledFilterButton, cleanupDisabledFilterButton = createInstanceWithProps(mockLocale)(FilterByButton, {
			onActivated = function()
				activatedMock()
			end,
			isDisabled = true,
		})

		local activeButtonIcon = RhodiumHelpers.findFirstInstance(activeFilterButton, {
			Name = buttonIconName,
		})
		local activeButtonText = RhodiumHelpers.findFirstInstance(activeFilterButton, {
			Name = buttonTextName,
		})
		local disabledButtonIcon = RhodiumHelpers.findFirstInstance(disabledFilterButton, {
			Name = buttonIconName,
		})
		local disabledButtonText = RhodiumHelpers.findFirstInstance(disabledFilterButton, {
			Name = buttonTextName,
		})

		expect(disabledButtonIcon.ImageTransparency).toBeGreaterThan(activeButtonIcon.ImageTransparency)
		expect(disabledButtonText.TextTransparency).toBeGreaterThan(activeButtonText.TextTransparency)

		cleanupActiveFilterButton()
		cleanupDisabledFilterButton()
	end)

	it("SHOULD have a container that is bigger than the text and icon", function(c)
		local activatedMock = jest.fn()
		local parent, cleanup = createInstanceWithProps(mockLocale)(FilterByButton, {
			friendCount = 200,
			onActivated = function()
				activatedMock()
			end,
		})

		local ButtonContainer = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Button",
		})

		local TextLabel = RhodiumHelpers.findFirstInstance(parent, {
			Name = buttonTextName,
		})

		local Icon = RhodiumHelpers.findFirstInstance(parent, {
			Name = buttonIconName,
		})

		expect(TextLabel).toBeInside(ButtonContainer)
		expect(Icon).toBeInside(ButtonContainer)

		cleanup()
	end)
end)
