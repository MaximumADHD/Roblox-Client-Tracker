--[[
	Mirrors the free-trial hamburger slot onto the nine-dot activity indicator.
	isHamburgerBlueDotShowing reads getActiveForSlot("HamburgerBlueDot"), so this
	is the subscription that turns the orchestrator publish into a visible dot.
]]
local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local useNineDotActivityIndicator = require(Chrome.ChromeShared.Hooks.useNineDotActivityIndicator)

local submitFreeTrialBlueDot = require(CorePackages.Workspace.Packages.InExperienceShop.submitFreeTrialBlueDot)

-- The dot is a single pixel Chrome shares across every feature requesting it.
local ACTIVITY_INDICATOR_FEATURE_KEY = "free_trial_blue_dot"

local function useFreeTrialNineDotActivityIndicator()
	local isShowing = SignalsReact.useSignalState(submitFreeTrialBlueDot.isHamburgerBlueDotShowing)

	useNineDotActivityIndicator(ACTIVITY_INDICATOR_FEATURE_KEY, isShowing == true)

	React.useEffect(function()
		if isShowing ~= true then
			return
		end
		submitFreeTrialBlueDot.reportMounted()
		submitFreeTrialBlueDot.reportViewed()
	end, { isShowing } :: { any })
end

return useFreeTrialNineDotActivityIndicator
