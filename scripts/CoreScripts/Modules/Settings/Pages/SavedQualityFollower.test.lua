--!nonstrict
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local SavedQualityFollower = require(script.Parent.SavedQualityFollower)

local function makeControls(selectedIndex: number, sliderValue: number)
	local controls = {
		enablerCalls = {},
		sliderCalls = {},
		showingDuringChange = {},
		follower = nil,
	}
	controls.enabler = {
		GetSelectedIndex = function()
			return selectedIndex
		end,
		SetSelectionIndex = function(_, index)
			selectedIndex = index
			table.insert(controls.enablerCalls, index)
			table.insert(controls.showingDuringChange, controls.follower:isShowing())
		end,
	}
	controls.slider = {
		GetValue = function()
			return sliderValue
		end,
		SetValue = function(_, value)
			sliderValue = value
			table.insert(controls.sliderCalls, value)
			table.insert(controls.showingDuringChange, controls.follower:isShowing())
		end,
	}
	controls.follower = SavedQualityFollower.new(controls.enabler, controls.slider)
	return controls
end

describe("SavedQualityFollower", function()
	it("moves both controls to a manual saved quality while showing it", function()
		local controls = makeControls(1, 5)

		controls.follower:show(Enum.SavedQualitySetting.QualityLevel3)

		expect(controls.enablerCalls).toEqual({ 2 })
		expect(controls.sliderCalls).toEqual({ 3 })
		expect(controls.showingDuringChange).toEqual({ true, true })
	end)

	it("moves only the selector to Automatic", function()
		local controls = makeControls(2, 7)

		controls.follower:show(Enum.SavedQualitySetting.Automatic)

		expect(controls.enablerCalls).toEqual({ 1 })
		expect(controls.sliderCalls).toEqual({})
	end)

	it("moves only the slider when the selector is already Manual", function()
		local controls = makeControls(2, 7)

		controls.follower:show(Enum.SavedQualitySetting.QualityLevel9)

		expect(controls.enablerCalls).toEqual({})
		expect(controls.sliderCalls).toEqual({ 9 })
	end)

	it("stops showing once the deferred control events have run", function()
		local controls = makeControls(1, 5)

		controls.follower:show(Enum.SavedQualitySetting.QualityLevel3)
		expect(controls.follower:isShowing()).toBe(true)

		task.wait()
		expect(controls.follower:isShowing()).toBe(false)
	end)

	it("keeps showing until the cleanup of the latest show runs", function()
		local controls = makeControls(1, 5)
		local showingBetweenCleanups = nil

		controls.follower:show(Enum.SavedQualitySetting.QualityLevel3)
		task.defer(function()
			showingBetweenCleanups = controls.follower:isShowing()
		end)
		controls.follower:show(Enum.SavedQualitySetting.Automatic)

		task.wait()
		expect(showingBetweenCleanups).toBe(true)
		expect(controls.follower:isShowing()).toBe(false)
	end)

	it("leaves the controls and the menu's next change alone when they already show the saved quality", function()
		local controls = makeControls(2, 4)

		controls.follower:show(Enum.SavedQualitySetting.QualityLevel4)

		expect(controls.enablerCalls).toEqual({})
		expect(controls.sliderCalls).toEqual({})
		expect(controls.follower:isShowing()).toBe(false)
	end)
end)
