--[[
	// FileName: Topbar.lua
	// Written by: SolarCrane
	// Description: Code for lua side Top Menu items in ROBLOX.
]]


--[[ CONSTANTS ]]

local TopbarConstants = {}

TopbarConstants.TOPBAR_THICKNESS = 36
TopbarConstants.USERNAME_CONTAINER_WIDTH = 170
TopbarConstants.COLUMN_WIDTH = 75
TopbarConstants.NAME_LEADERBOARD_SEP_WIDTH = 2

TopbarConstants.ITEM_SPACING = 0
TopbarConstants.VR_ITEM_SPACING = 3

TopbarConstants.FONT_COLOR = Color3.new(1,1,1)
TopbarConstants.TOPBAR_BACKGROUND_COLOR = Color3.fromRGB(31,31,31)
TopbarConstants.TOPBAR_OPAQUE_TRANSPARENCY = 0
TopbarConstants.TOPBAR_TRANSLUCENT_TRANSPARENCY = 0.5

TopbarConstants.HEALTH_BACKGROUND_COLOR = Color3.fromRGB(228, 236, 246)
TopbarConstants.HEALTH_RED_COLOR = Color3.fromRGB(255, 28, 0)
TopbarConstants.HEALTH_YELLOW_COLOR = Color3.fromRGB(250, 235, 0)
TopbarConstants.HEALTH_GREEN_COLOR = Color3.fromRGB(27, 252, 107)

TopbarConstants.HEALTH_PERCANTAGE_FOR_OVERLAY = 5 / 100

TopbarConstants.HURT_OVERLAY_IMAGE = "https://www.roblox.com/asset/?id=34854607"

TopbarConstants.DEBOUNCE_TIME = 0.25

TopbarConstants.TOPBAR_LOCAL_CFRAME_3D = CFrame.new(0, -5, 5) * CFrame.Angles(math.rad(25), 0, 0)

return TopbarConstants