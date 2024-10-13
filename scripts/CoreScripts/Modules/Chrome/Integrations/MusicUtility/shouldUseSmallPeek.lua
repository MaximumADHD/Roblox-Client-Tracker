local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")

local ViewportUtil = require(Chrome.Service.ViewportUtil)

local GetFFlagPeekMobilePortraitResizing =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagPeekMobilePortraitResizing

local function shouldUseSmallPeek()
	if not GetFFlagPeekMobilePortraitResizing() then
		return false
	end

	local isSmallTouchScreen = ViewportUtil.isSmallTouchScreen()
	local isMobileDevice = ViewportUtil.mobileDevice:get()
	local shouldShowSmallPeek = isMobileDevice and isSmallTouchScreen

	return shouldShowSmallPeek
end

return shouldUseSmallPeek
