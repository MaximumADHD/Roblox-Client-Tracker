local CorePackages = game:GetService("CorePackages")
local StarterPlayer = game:GetService("StarterPlayer")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local ReactTestingLibrary = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local EmotesMenu = script.Parent.Parent
local Constants = require(EmotesMenu.Constants)
local EmotesMenuReducer = require(EmotesMenu.Reducers.EmotesMenuReducer)
local FFlagFixEmotesMenuAvailability = require(EmotesMenu.Flags.FFlagFixEmotesMenuAvailability)
local WheelText = require(script.Parent.WheelText)

local locale = "en-us"
local store
local previousUserEmotesEnabled

local function renderWheel(
	numberEmotesLoaded: number,
	currentEmotes: { [number]: string }?,
	focusedSegmentIndex: number?
)
	store = Rodux.Store.new(EmotesMenuReducer, {
		emotesPage = {
			numberEmotesLoaded = numberEmotesLoaded,
			currentEmotes = currentEmotes or {},
		},
		emotesWheel = {
			focusedSegmentIndex = focusedSegmentIndex or 0,
		},
		locale = locale,
	})

	return ReactTestingLibrary.render(Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		WheelText = Roact.createElement(WheelText),
	}))
end

local function translated(key)
	return RobloxTranslator:FormatByKeyForLocale(key, locale)
end

describe("EmotesMenu WheelText", function()
	beforeEach(function()
		previousUserEmotesEnabled = StarterPlayer.UserEmotesEnabled
		StarterPlayer.UserEmotesEnabled = true
	end)

	afterEach(function()
		ReactTestingLibrary.cleanup()
		if store then
			store:destruct()
			store = nil
		end
		StarterPlayer.UserEmotesEnabled = previousUserEmotesEnabled
	end)

	it("shows no equipped emotes when none were loaded", function()
		local result = renderWheel(0)
		expect(result.getByText(translated(Constants.LocalizationKeys.NoEmotesEquipped))).never.toBeNil()
	end)

	for _, count in ipairs({ -1, 8 }) do
		if FFlagFixEmotesMenuAvailability then
			it("shows no equipped emotes for an enabled empty wheel with loaded count " .. count, function()
				local result = renderWheel(count)
				expect(result.getByText(translated(Constants.LocalizationKeys.NoEmotesEquipped))).never.toBeNil()
			end)
		else
			it("preserves the legacy empty-wheel message with loaded count " .. count, function()
				local result = renderWheel(count)
				expect(result.getByText(translated(Constants.LocalizationKeys.EmotesDisabled))).never.toBeNil()
			end)
		end
	end

	for _, count in ipairs({ -1, 0, 8 }) do
		it("shows disabled when user emotes are disabled with loaded count " .. count, function()
			StarterPlayer.UserEmotesEnabled = false
			local result = renderWheel(count)
			expect(result.getByText(translated(Constants.LocalizationKeys.EmotesDisabled))).never.toBeNil()
		end)
	end

	it("shows the focused emote despite a missing loaded count", function()
		local result = renderWheel(-1, { [1] = "Wave" }, 1)
		expect(result.getByText("Wave")).never.toBeNil()
	end)

	it("asks for a selection when equipped emotes are not focused", function()
		local result = renderWheel(-1, { [1] = "Wave" })
		expect(result.getByText(translated(Constants.LocalizationKeys.SelectAnEmote))).never.toBeNil()
	end)
end)
