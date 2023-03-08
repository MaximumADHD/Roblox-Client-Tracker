local FaceAnimatorService = game:GetService("FaceAnimatorService")
local CoreGui = game:GetService("CoreGui")
local Modules = CoreGui.RobloxGui.Modules

local Analytics = require(Modules.SelfView.Analytics).new()
local SelfViewAPI = require(Modules.SelfView.publicApi)
local toggleSelfViewSignal = require(Modules.SelfView.toggleSelfViewSignal)

return function()
	-- If FaceAnimatorService in the engine has not initialized yet, camera may not have started.
	if FaceAnimatorService and FaceAnimatorService:IsStarted() then
		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
		Analytics:setLastCtx("bubbleChatToggle")

		-- Turning on the camera should open Self View.
		local selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
		if FaceAnimatorService.VideoAnimationEnabled and not selfViewOpen then
			toggleSelfViewSignal:fire()
		end
	end
end
