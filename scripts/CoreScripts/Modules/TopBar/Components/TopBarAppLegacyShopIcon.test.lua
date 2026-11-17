local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local InExperienceCloudPlay = CorePackages.Workspace.Packages.InExperienceCloudPlay
local FFlagEnableRestyleTopBar = require(InExperienceCloudPlay.FFlagEnableRestyleTopBar)
local mountsRestyleTimer = FFlagEnableRestyleTopBar
	and require(CorePackages.Workspace.Packages.SharedFlags).FFlagUseUIOverlayForCloudPlay
local MOCK_RESTYLE_TIMER_TAG = "mock-restyle-timer"
jest.mock(InExperienceCloudPlay.RestyleTimer, function()
	return function()
		return React.createElement("Frame", { [React.Tag] = MOCK_RESTYLE_TIMER_TAG })
	end
end)
-- TopBarApp picks its shop-icon layout once at require time, so the legacy layout needs its own
-- module registry to be reachable while the flags-on suite enables the V2 shop icon.
jest.mock(script.Parent.Parent.Flags.FFlagTopBarShopIconV2, function()
	return false
end)
local renderTopBarApp = require(script.Parent.Parent.TestHelpers.renderTopBarApp)
local TopBarApp = require(script.Parent.TopBarApp)

local Constants = require(script.Parent.Parent.Constants)

local function findRestyleTimer(container: Instance): Instance?
	for _, descendant in container:GetDescendants() do
		if descendant:HasTag(MOCK_RESTYLE_TIMER_TAG) then
			return descendant
		end
	end
	return nil
end

describe("TopBarApp with the legacy shop icon", function()
	if not mountsRestyleTimer then
		it("does not mount the Restyle timer", function()
			local container = Instance.new("Folder")
			local instance = renderTopBarApp(TopBarApp, container)
			expect(findRestyleTimer(container)).toBeNil()
			Roact.unmount(instance)
			container:Destroy()
		end)
	end

	if mountsRestyleTimer then
		it("leaves a TopBarPadding gap to the left of the Restyle timer", function()
			local container = Instance.new("Folder")
			local instance = renderTopBarApp(TopBarApp, container)

			local timer = findRestyleTimer(container)
			assert(timer and timer.Parent, "the Restyle timer should be mounted")
			local padding = timer.Parent:FindFirstChildWhichIsA("UIPadding")
			assert(padding, "the Restyle timer's wrapper should have a UIPadding")
			expect(padding.PaddingLeft).toEqual(UDim.new(0, Constants.ApplyDisplayScale(Constants.TopBarPadding)))

			Roact.unmount(instance)
			container:Destroy()
		end)
	end
end)
