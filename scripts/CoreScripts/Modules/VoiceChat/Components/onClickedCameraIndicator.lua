local FaceAnimatorService = game:GetService("FaceAnimatorService")

return function()
	FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
	return
end
