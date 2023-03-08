local hasSafetyService = function()
	return game:GetEngineFeature("ReportAnythingScreenshot")
		and game:GetEngineFeature("ReportAnythingScreenshotUploadedSignal")
end

local ScreenshotManager = {}
ScreenshotManager.__index = ScreenshotManager

type UploadedCallback = (string) -> nil
type ContentReadyCallback = (string) -> nil

local uploadedCallbacksByJobId: { [number]: UploadedCallback } = {}
local contentReadyCallbacksByJobId: { [number]: ContentReadyCallback } = {}

local signalListenersRegistered = false

-- only call this when we know we can access safety service (set up lazily)
local registerSignalListeners = function(safetyService)
	safetyService.ScreenshotUploaded:Connect(function(jobId, screenshotId)
		local callback = uploadedCallbacksByJobId[jobId]
		if not callback then
			return
		end

		callback(screenshotId)
		table.remove(uploadedCallbacksByJobId, jobId)
	end)
	safetyService.ScreenshotContentReady:Connect(function(jobId, contentId)
		local callback = contentReadyCallbacksByJobId[jobId]
		if not callback then
			return
		end

		callback(contentId)
		table.remove(contentReadyCallbacksByJobId, jobId)
	end)
	signalListenersRegistered = true
end

-- Take a screenshot and call the provided callbacks:
-- * `uploadCallback` is called with the screenshotId upon upload completion.
-- * `contentReadyCallback`, if provided, is called with the temporary contentId
--   of the screenshot. If this is not provided, a temporary contentId will not
--   be created for the screenshot.
-- return value indicates whether or not a screenshot will be taken. This could
-- be `false` if the FFlags for screenshot functionality are disabled, or if the
-- client's engine version does not support taking safety screenshots. Callbacks
-- will not be called if return value is `false`.

function ScreenshotManager:TakeScreenshotWithCallback(
	uploadedCallback: (
		string --[[ screenshotId ]]
	) -> nil,
	contentReadyCallback: (
		string --[[ contentId ]]
	) -> nil
): boolean
	if not hasSafetyService() then
		return false
	end
	local safetyService = game:GetService("SafetyService")
	local registerContent = (contentReadyCallback ~= nil) and 1 or 0

	local jobId = safetyService:TakeScreenshot({ registerContent = registerContent })
	-- Possible that the screenshot could be taken and the signals fired in
	-- between the above call and the setup of the callbacks. See if we actually need to
	-- worry about this in practice given the async nature of the screenshot
	-- capture.
	uploadedCallbacksByJobId[jobId] = uploadedCallback
	contentReadyCallbacksByJobId[jobId] = contentReadyCallback
	if not signalListenersRegistered then
		registerSignalListeners(safetyService)
	end

	return true
end

return ScreenshotManager
