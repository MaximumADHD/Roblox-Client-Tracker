--!nonstrict
-- Creates the generic "ROBLOX" loading screen on startup
-- Written by ArceusInator & Ben Tkacheff, 2014
-- Updates by 0xBAADF00D, 2017
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui:WaitForChild("Modules")
local CorePackages = game:GetService("CorePackages")

-- Check if engine has passed down place_id as Args or not. If yes, use the place_id for quicker start up.
local PLACE_ID_FROM_ENGINE = game.PlaceId
local numArgs = select("#", ...)
if PLACE_ID_FROM_ENGINE <= 0 and numArgs > 0 then
	PLACE_ID_FROM_ENGINE = select(1, ...)
end

local FFlagEnableExperienceGenericChallengeRenderingOnLoadingScript = game:DefineFastFlag("EnableExperienceGenericChallengeRenderingOnLoadingScript", false)


if FFlagEnableExperienceGenericChallengeRenderingOnLoadingScript then
	-- Initializes the in-experience challenge interceptor, used to handle
	-- rendering challenges such as 2-Step-Verification on suspicious actions e.g. economic actions.
	coroutine.wrap(function()
		local initChallengeInterceptor = require(CorePackages.Workspace.Packages.GenericChallenges).Middleware.InitExperienceChallengeInterceptor
		initChallengeInterceptor()
	end)()
end

-- Currently this is only used by VR, where refresh rate in experiences is set to 90,
-- so that the FRM oscillates somewhere between 72 and 90 instead of dipping below 72.
-- So the actual target FPS should be anything above 72.
local TARGET_EXPERIENCE_REFRESH_RATE = 72

local loadingScript = require(CorePackages.Workspace.Packages.ExperienceLoadingScript).loadingScript
coroutine.wrap(loadingScript)(PLACE_ID_FROM_ENGINE, TARGET_EXPERIENCE_REFRESH_RATE)