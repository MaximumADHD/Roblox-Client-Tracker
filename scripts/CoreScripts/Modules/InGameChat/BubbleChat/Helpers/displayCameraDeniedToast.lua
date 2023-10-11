local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Packages.Promise)
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TrackerMenu = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)

local FRAMES_PER_SECOND = 60

return function()
	TrackerMenu:showPrompt(TrackerPromptType.None)
	Promise.delay(1/FRAMES_PER_SECOND):andThen(function()
		-- The showPrompt method does not re-render when faded out. Instead, it only re-renders when the prompt type changes.
		-- As a result, we need to manually change the prompt type after a short delay (single frame) if we want to keep re-rendering.
		TrackerMenu:showPrompt(TrackerPromptType.VideoNoPermission)
	end)
end
