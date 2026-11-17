local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local utility = require(script.Parent.Utility)
local FFlagUIScaleEngineOptions = require(CorePackages.Workspace.Packages.SharedFlags).FFlagUIScaleEngineOptions
local FFlagUIScaleSliderImprovements = require(script.Parent.Flags.FFlagUIScaleSliderImprovements)

local STEP_COUNT = 7

local function createSlider(startStep: number)
	local slider = utility:CreateNewSlider(STEP_COUNT, startStep)
	local leftButton = slider.SliderFrame:FindFirstChild("LeftButton", true)
	local rightButton = slider.SliderFrame:FindFirstChild("RightButton", true)
	return slider, leftButton, rightButton
end

describe("Settings slider", function()
	it("keeps the regular slider behavior without enabled steps", function()
		local slider, leftButton, rightButton = createSlider(1)
		slider:SetValue(4)
		expect(slider:GetValue()).toBe(4)
		expect(leftButton.Visible).toBe(true)
		expect(rightButton.Visible).toBe(true)
	end)

	if not FFlagUIScaleEngineOptions then
		it("ignores enabled steps", function()
			local slider, leftButton, rightButton = createSlider(4)
			slider:SetEnabledSteps({ true, true, true, true, false, false, false })
			slider:SetValue(6)
			expect(slider:GetValue()).toBe(6)
			expect(leftButton.Visible).toBe(true)
			expect(rightButton.Visible).toBe(true)
		end)
	end
end)

-- The flag also requires the Responsive Units engine features, so these run only on engines that have them.
if FFlagUIScaleEngineOptions then
	describe("Settings slider enabled steps", function()
		it("shows both arrows when enabled steps lie on both sides", function()
			local slider, leftButton, rightButton = createSlider(4)
			slider:SetEnabledSteps({ true, true, true, true, true, false, false })
			expect(leftButton.Visible).toBe(true)
			expect(rightButton.Visible).toBe(true)
		end)

		it("hides the arrow toward a range of disabled steps", function()
			local slider, leftButton, rightButton = createSlider(4)
			slider:SetEnabledSteps({ true, true, true, true, false, false, false })
			expect(leftButton.Visible).toBe(true)
			expect(rightButton.Visible).toBe(false)
		end)

		it("dims a selected step that is disabled", function()
			local slider = createSlider(1)
			slider:SetEnabledSteps({ true, true, true, true, false, false, false })
			slider:SetValue(7)
			expect(slider.Steps[4].BackgroundTransparency).toBe(0)
			expect(slider.Steps[6].BackgroundTransparency).toBeCloseTo(0.8)
			expect(slider.Steps[7].BackgroundTransparency).toBeCloseTo(
				if FFlagUIScaleSliderImprovements then 0.8 else 0
			)
		end)

		it("keeps a programmatic value on a disabled step", function()
			local slider = createSlider(1)
			slider:SetEnabledSteps({ true, true, false, false, false, false, false })
			slider:SetValue(3)
			expect(slider:GetValue()).toBe(3)
		end)

		if FFlagUIScaleSliderImprovements then
			-- Only a held step press waits for its release; programmatic updates still notify at once.
			it("notifies a programmatic value at once", function()
				local slider = createSlider(1)
				slider:SetEnabledSteps({ true, true, true, true, true, true, true })
				local notified = {}
				slider.ValueChanged:connect(function(value)
					table.insert(notified, value)
				end)
				slider:SetValue(5)
				expect(notified).toEqual({ 5 })
			end)
		end
	end)
end
