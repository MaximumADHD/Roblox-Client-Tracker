local Players = game:GetService("Players")

game:DefineFastInt("IGMv1ARFlowRAv1OtherBasisPoints", 0)

return function()
	if not game:GetEngineFeature("ReportAnythingScreenshot") or not game:GetEngineFeature("ReportAnythingScreenshotUploadedSignal") then
		return false
	end

	local localPlayer = Players.LocalPlayer
	if not localPlayer or not localPlayer.UserId then
		return false
	end
	local localPlayer = localPlayer :: Player

	local rolloutBasisPoints = game:GetFastInt("IGMv1ARFlowRAv1OtherBasisPoints")

	-- offset the UserId here before mod so other rollout flags using a similar pattern
	-- to this one are not coincident on the same users.
	return ((localPlayer.UserId + 2719) % 10000) + 1 < rolloutBasisPoints
end
	
