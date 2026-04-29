local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local React = require(CorePackages.Packages.React)

local FIntAbuseReportMenuScreenshotReduceMotionWaitFrames =
	game:DefineFastInt("AbuseReportMenuScreenshotReduceMotionWaitFrames", 20)
local FIntAbuseReportMenuScreenshotWaitFrames = game:DefineFastInt("AbuseReportMenuScreenshotWaitFrames", 10)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMTabFocusNav = SharedFlags.FFlagIEMTabFocusNav

local UserGameSettings = UserSettings():GetService("UserGameSettings")

local getWaitFrames = function()
	if UserGameSettings.ReducedMotion then
		return FIntAbuseReportMenuScreenshotReduceMotionWaitFrames
	end
	return FIntAbuseReportMenuScreenshotWaitFrames
end

local getWaitTime = function()
	if UserGameSettings.ReducedMotion then
		return FIntAbuseReportMenuScreenshotReduceMotionWaitFrames / 60
	end
	return FIntAbuseReportMenuScreenshotWaitFrames / 60
end

local useHideForScreenshot = function(
	shouldcapturescreenshot,
	isReportTabVisible,
	hideReportTab,
	showReportTab,
	onScreenshotHide,
	onUserInitiatedHide
)
	local isHidingForScreenshot, setIsHidingForScreenshot = React.useState(false)
	local lastSelected = if FFlagIEMTabFocusNav then React.useRef(nil :: GuiObject?) else nil :: never
	React.useEffect(function()
		if isReportTabVisible then
			if isHidingForScreenshot then
				if FFlagIEMTabFocusNav and lastSelected.current and lastSelected.current:IsDescendantOf(game) then
					GuiService.SelectedCoreObject = lastSelected.current
					lastSelected.current = nil
				end
				setIsHidingForScreenshot(false)
			elseif shouldcapturescreenshot then
				if FFlagIEMTabFocusNav then
					lastSelected.current = GuiService.SelectedCoreObject
				end
				setIsHidingForScreenshot(true)
				hideReportTab()

				local avatarIDConnection: RBXScriptConnection
				local screenshotWaitCount = 0
				local waitCount = 0
				local waitConnection: RBXScriptConnection

				local waitStart = os.clock()

				avatarIDConnection = RunService.Heartbeat:Connect(function()
					-- wait for 1 frame after hiding so the remaining menu UI goes away
					if screenshotWaitCount == 1 then
						onScreenshotHide()
						avatarIDConnection:Disconnect()
						return
					end

					screenshotWaitCount += 1
				end)

				waitConnection = RunService.Heartbeat:Connect(function()
					-- waiting for too short of a time (frames or seconds)
					-- to re-show can cause the menu to get stuck
					if ((os.clock() - waitStart) >= getWaitTime()) and waitCount >= getWaitFrames() then
						waitConnection:Disconnect()
						showReportTab()
						return
					end

					waitCount += 1
				end)
			end
		else
			if not isHidingForScreenshot then
				onUserInitiatedHide()
			end
		end
		-- only run when isReportTabVisible changes
	end, { isReportTabVisible })
end

return useHideForScreenshot
