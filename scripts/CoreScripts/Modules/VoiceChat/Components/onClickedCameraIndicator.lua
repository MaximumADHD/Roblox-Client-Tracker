local FaceAnimatorService = game:GetService("FaceAnimatorService")

return function()
	-- If FaceAnimatorService in the engine has not initialized yet, camera may not have started.
	if FaceAnimatorService and FaceAnimatorService:IsStarted() then
		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
	end
end
