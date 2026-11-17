local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local InExperienceCloudPlay = CorePackages.Workspace.Packages.InExperienceCloudPlay
local FFlagEnableRestyleTopBar = require(InExperienceCloudPlay.FFlagEnableRestyleTopBar)
local mountsRestyleTimer = FFlagEnableRestyleTopBar
	and require(CorePackages.Workspace.Packages.SharedFlags).FFlagUseUIOverlayForCloudPlay
local mockRestyleTimer, mockRestyleTimerFn = jest.fn()
jest.mock(InExperienceCloudPlay.RestyleTimer, function()
	return mockRestyleTimerFn
end)
local renderTopBarApp = require(script.Parent.Parent.TestHelpers.renderTopBarApp)
local TopBarApp = require(script.Parent.TopBarApp)

local Constants = require(script.Parent.Parent.Constants)

local MOCK_RESTYLE_TIMER_TAG = "mock-restyle-timer"

describe("TopBarApp", function()
	afterEach(function()
		mockRestyleTimer.mockReset()
	end)

	it("should create and destroy without errors, mounting the Restyle timer only when its flags are on", function()
		local instance = renderTopBarApp(TopBarApp)
		if mountsRestyleTimer then
			expect(mockRestyleTimer).toHaveBeenCalled()
		else
			expect(mockRestyleTimer).never.toHaveBeenCalled()
		end
		Roact.unmount(instance)
	end)

	if mountsRestyleTimer then
		it("leaves a TopBarPadding gap to the left of the Restyle timer", function()
			mockRestyleTimer.mockImplementation(function()
				return React.createElement("Frame", { [React.Tag] = MOCK_RESTYLE_TIMER_TAG })
			end)
			local container = Instance.new("Folder")
			local instance = renderTopBarApp(TopBarApp, container)

			local timer: Instance? = nil
			for _, descendant in container:GetDescendants() do
				if descendant:HasTag(MOCK_RESTYLE_TIMER_TAG) then
					timer = descendant
				end
			end
			assert(timer and timer.Parent, "the Restyle timer should be mounted")
			local padding = timer.Parent:FindFirstChildWhichIsA("UIPadding")
			assert(padding, "the Restyle timer's wrapper should have a UIPadding")
			expect(padding.PaddingLeft).toEqual(UDim.new(0, Constants.ApplyDisplayScale(Constants.TopBarPadding)))

			Roact.unmount(instance)
			container:Destroy()
		end)
	end
end)
