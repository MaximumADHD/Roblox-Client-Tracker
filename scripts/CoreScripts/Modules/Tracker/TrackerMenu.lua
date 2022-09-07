local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
type RoactHandle = typeof(Roact.mount(...))

local TrackerPrompt = require(RobloxGui.Modules.Tracker.TrackerPrompt)

type TrackerMenu = {
	trackerPrompt: RoactHandle?,
	showPrompt: (TrackerMenu, string) -> (),
	new: () -> TrackerMenu,
	__index: TrackerMenu,
}

local TrackerMenu: TrackerMenu = {} :: TrackerMenu
TrackerMenu.__index = TrackerMenu

function TrackerMenu:showPrompt(promptType)
	if self.trackerPrompt then
		Roact.update(self.trackerPrompt, Roact.createElement(TrackerPrompt, {
			promptType = promptType,
		}))
	else
		self.trackerPrompt = Roact.mount(Roact.createElement(TrackerPrompt, {
			promptType = promptType,
		}), CoreGui, "RobloxTrackerPromptGui")
	end
end

function TrackerMenu.new(): TrackerMenu
	local obj = { trackerPrompt = nil }
	setmetatable(obj, TrackerMenu)

	return obj :: any
end

return TrackerMenu.new()
