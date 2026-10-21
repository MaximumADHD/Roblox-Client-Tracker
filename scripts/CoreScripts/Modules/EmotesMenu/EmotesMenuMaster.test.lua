local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local EmotesMenu = script.Parent
-- APPEXP-4362: avoid synchronous unmount during singleton construction under
-- FFlagTopBarSignalizeSetCores, as in GamepadMenu.spec.lua.
local CanPlayEmotes = require(EmotesMenu.Utility.CanPlayEmotes)
local originalCanPlayEmotesValue = CanPlayEmotes.Value
CanPlayEmotes.Value = true
local EmotesMenuMaster = require(EmotesMenu.EmotesMenuMaster)
CanPlayEmotes.Value = originalCanPlayEmotesValue
local EmotesMenuReducer = require(EmotesMenu.Reducers.EmotesMenuReducer)
local FFlagFixEmotesMenuAvailability = require(EmotesMenu.Flags.FFlagFixEmotesMenuAvailability)

describe("EmotesMenuMaster loaded count", function()
	local master
	local humanoidDescription
	local fireEmotesLoaded

	beforeEach(function()
		fireEmotesLoaded = jest.fn()
		master = setmetatable({
			store = Rodux.Store.new(EmotesMenuReducer),
			EmotesLoaded = { Fire = fireEmotesLoaded },
		}, getmetatable(EmotesMenuMaster))
		humanoidDescription = Instance.new("HumanoidDescription")
	end)

	afterEach(function()
		master:_onHumanoidDescriptionChanged(nil)
		humanoidDescription:Destroy()
		master.store:destruct()
	end)

	for _, count in ipairs({ -1, 0, 8 }) do
		it("initializes the loaded count from the description when it is " .. count, function()
			humanoidDescription.NumberEmotesLoaded = count
			master:_onHumanoidDescriptionChanged(humanoidDescription)

			expect(master.store:getState().emotesPage.numberEmotesLoaded).toBe(count)
			expect(master:isEmotesLoaded()).toBe(count > 0)
			expect(fireEmotesLoaded).toHaveBeenLastCalledWith(master.EmotesLoaded, count > 0)
		end)
	end

	if FFlagFixEmotesMenuAvailability then
		it("reads later property changes and notifies when emotes become loaded or empty", function()
			master:_onHumanoidDescriptionChanged(humanoidDescription)

			humanoidDescription.NumberEmotesLoaded = 8
			waitForEvents()
			expect(master.store:getState().emotesPage.numberEmotesLoaded).toBe(8)
			expect(master:isEmotesLoaded()).toBe(true)
			expect(fireEmotesLoaded).toHaveBeenLastCalledWith(master.EmotesLoaded, true)

			humanoidDescription.NumberEmotesLoaded = 0
			waitForEvents()
			expect(master.store:getState().emotesPage.numberEmotesLoaded).toBe(0)
			expect(master:isEmotesLoaded()).toBe(false)
			expect(fireEmotesLoaded).toHaveBeenLastCalledWith(master.EmotesLoaded, false)
		end)
	end
end)
