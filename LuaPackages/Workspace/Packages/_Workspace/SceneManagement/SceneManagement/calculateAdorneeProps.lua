local DEFAULT_DISTANCE_TO_CAMERA = 6

local function calculateFullScreenAdorneeProps(distanceToCamera: number?): (Vector3, CFrame)
	assert(distanceToCamera == nil or distanceToCamera > 0, "distanceToCamera should be a positive number")
	local disToCam = distanceToCamera or DEFAULT_DISTANCE_TO_CAMERA
	local camera = workspace.CurrentCamera :: Camera
	local aspectRatio = camera.ViewportSize.X / camera.ViewportSize.Y
	local fullScreenHeight = 2 * disToCam * math.tan(math.rad(camera.FieldOfView / 2))
	local fullScrennWidth = fullScreenHeight * aspectRatio
	local fullscreenDims = Vector3.new(fullScrennWidth, fullScreenHeight, 0.01)

	local center = camera.CFrame.Position + disToCam * camera.CFrame.LookVector
	local centerCFrame = CFrame.lookAt(center, camera.CFrame.Position)

	return fullscreenDims, centerCFrame
end

local function calculateTopBarAdorneeProps(heightRatio: number, distanceToCamera: number?): (Vector3, CFrame)
	assert(distanceToCamera == nil or distanceToCamera > 0, "distanceToCamera should be a positive number")
	assert(heightRatio > 0 and heightRatio < 1, "heightRatio should be between 0 and 1")
	local fullscreenDims, centerCFrame = calculateFullScreenAdorneeProps(distanceToCamera)
	local studHeight = fullscreenDims.Y * heightRatio
	local dims = Vector3.new(fullscreenDims.X, studHeight, fullscreenDims.Z)

	local offset = CFrame.new(0, fullscreenDims.Y / 2 - studHeight / 2, 0)

	return dims, centerCFrame * offset
end

local function calculatePageContentAdorneeProps(heightRatio: number, distanceToCamera: number?): (Vector3, CFrame)
	assert(distanceToCamera == nil or distanceToCamera > 0, "distanceToCamera should be a positive number")
	assert(heightRatio > 0 and heightRatio < 1, "heightRatio should be between 0 and 1")
	local fullscreenDims, centerCFrame = calculateFullScreenAdorneeProps(distanceToCamera)
	local studHeight = fullscreenDims.Y * heightRatio
	local dims = Vector3.new(fullscreenDims.X, studHeight, fullscreenDims.Z)

	local offset = CFrame.new(0, studHeight / 2 - fullscreenDims.Y / 2, 0)
	return dims, centerCFrame * offset
end

return {
	calculateFullScreenAdorneeProps = calculateFullScreenAdorneeProps,
	calculateTopBarAdorneeProps = calculateTopBarAdorneeProps,
	calculatePageContentAdorneeProps = calculatePageContentAdorneeProps,
}
