local CoreGui = game:GetService("CoreGui")
local SafetyService = nil
local CorePackages = game:GetService("CorePackages")
local AvatarIdentification = require(CorePackages.Workspace.Packages.TnSAvatarIdentification).AvatarIdentification

local RunService = game:GetService("RunService")

local TnsModule = script.Parent.Parent
local Hide = require(TnsModule.Actions.Hide)
local Show = require(TnsModule.Actions.Show)
local SetIdentifiedAvatars = require(TnsModule.Actions.SetIdentifiedAvatars)
local ScreenshotHookManager = require(TnsModule.Utility.ScreenshotHookManager)

local getVisibleAvatars = AvatarIdentification.getVisibleAvatars

if game:GetEngineFeature("ReportAnythingScreenshot") then
	SafetyService = game:GetService("SafetyService")
end

-- Trigger screenshot via SafetyService, identify visible avatars and get their
-- bounding boxes while pausing the scene for 1s.
return function()
	return function(store)
		if SafetyService == nil then
			return
		end

		-- TODO(jcarlson): see if we need this coroutine
		coroutine.wrap(function()
			ScreenshotHookManager.doPreScreenshot()
			store:dispatch(Hide())

			local _jobId = SafetyService:TakeScreenshot({registerContent = 1})

			-- expensive computation
			local visibleAvatars, aiStats = getVisibleAvatars()

			for i = 1, 61 do
				RunService.RenderStepped:Wait()
			end
			store:dispatch(Show())
			ScreenshotHookManager.doPostScreenshot()
			-- print("Avatar ID Stats: ", aiStats)
			store:dispatch(SetIdentifiedAvatars(visibleAvatars))
		end)()
	end
end
