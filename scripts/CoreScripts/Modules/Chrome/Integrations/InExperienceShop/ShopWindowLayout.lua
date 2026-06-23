local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local ChromeService = require(Chrome.Service)
local ViewportUtil = require(Chrome.ChromeShared.Service.ViewportUtil)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local InExperienceShop = require(CorePackages.Workspace.Packages.InExperienceShop)
local FFlagCenterInExperienceShopWindow = InExperienceShop.FFlagCenterInExperienceShopWindow

local MAX_WINDOW_WIDTH = 844
local MAX_WINDOW_HEIGHT = 754

-- Latch survives unmount/remount within a session so reopening the shop
-- after the user drags it keeps their chosen position.
local hasAppliedInitialWindowPosition = false

local function getCenteredShopWindowPosition(): UDim2
	local screenSize = ViewportUtil.screenSize:get()
	local topBarInset = GuiService.TopbarInset.Max.Y
	local availableHeight = screenSize.Y - topBarInset
	local shouldEnableFullScreen = screenSize.X < MAX_WINDOW_WIDTH or availableHeight < MAX_WINDOW_HEIGHT
	local windowWidth = if shouldEnableFullScreen then screenSize.X else math.min(MAX_WINDOW_WIDTH, screenSize.X)
	local windowHeight = if shouldEnableFullScreen
		then availableHeight
		else math.min(MAX_WINDOW_HEIGHT, availableHeight)
	local centerX = (screenSize.X - windowWidth) / 2
	local centerY = topBarInset + (availableHeight - windowHeight) / 2
	return UDim2.fromOffset(centerX, centerY)
end

local function applyInitialWindowPositionIfNeeded()
	if not FFlagCenterInExperienceShopWindow or hasAppliedInitialWindowPosition then
		return
	end
	ChromeService:updateWindowPosition(Constants.IN_EXPERIENCE_SHOP_ID, getCenteredShopWindowPosition())
	hasAppliedInitialWindowPosition = true
end

local function getStartingWindowPosition(): UDim2?
	if FFlagCenterInExperienceShopWindow then
		return getCenteredShopWindowPosition()
	end
	return nil
end

local function toggleInExperienceShopWindow()
	if not ChromeService:isWindowOpen(Constants.IN_EXPERIENCE_SHOP_ID) then
		applyInitialWindowPositionIfNeeded()
	end
	ChromeService:toggleWindow(Constants.IN_EXPERIENCE_SHOP_ID)
end

return {
	MAX_WINDOW_WIDTH = MAX_WINDOW_WIDTH,
	MAX_WINDOW_HEIGHT = MAX_WINDOW_HEIGHT,
	getCenteredShopWindowPosition = getCenteredShopWindowPosition,
	getStartingWindowPosition = getStartingWindowPosition,
	toggleInExperienceShopWindow = toggleInExperienceShopWindow,
}
