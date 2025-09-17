--[[
	Wraps the AvatarSwitcher component to integrate with the Chrome windowing system,
	handling window size constraints and layout orientation.
]]

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local useEventConnection = ReactUtils.useEventConnection
local ChromeService = require(Chrome.Service)
local ViewportUtil = require(Chrome.ChromeShared.Service.ViewportUtil)
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local AvatarSwitcher = require(CorePackages.Workspace.Packages.AvatarSwitcher)
local AvatarSwitcherContainer = AvatarSwitcher.Components.AvatarSwitcherContainer

local VERTICAL_LAYOUT_THRESHOLD = 1.2 -- If the width-to-height ratio is less than this, use vertical layout

local function shouldUseVerticalLayout(size: UDim2)
	return size.X.Offset / size.Y.Offset < VERTICAL_LAYOUT_THRESHOLD
end

export type Props = {
	windowSize: WindowSizeSignal.WindowSizeSignal,
	maxWindowWidth: number,
	maxWindowHeight: number,
}

local function AvatarSwitcherChromeWrapper(props: Props)
	local windowSize = props.windowSize
	local verticalLayout, setVerticalLayout = React.useState(shouldUseVerticalLayout(windowSize:get()))

	-- SettingsHub should not be required at the top of the file due to potential issues with require orders. See https://github.com/Roblox/lua-apps/pull/24897
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

	local updateWindowSize = React.useCallback(function(screenSize: Vector2)
		local topBarInset = GuiService.TopbarInset.Max.Y
		windowSize:requestSize(
			math.min(props.maxWindowWidth, screenSize.X),
			math.min(props.maxWindowHeight, screenSize.Y - topBarInset)
		)
	end, { windowSize, props.maxWindowWidth, props.maxWindowHeight } :: { any })

	useEventConnection(GuiService:GetPropertyChangedSignal("TopbarInset"), function()
		updateWindowSize(ViewportUtil.screenSize:get())
	end)

	React.useEffect(function()
		updateWindowSize(ViewportUtil.screenSize:get())
		local screenSizeConnection = ViewportUtil.screenSize:connect(updateWindowSize)
		local windowSizeConnection = windowSize:connect(function(size)
			setVerticalLayout(shouldUseVerticalLayout(size))
		end)
		return function()
			screenSizeConnection:disconnect()
			windowSizeConnection:disconnect()
		end
	end, { updateWindowSize, setVerticalLayout, shouldUseVerticalLayout } :: { any })

	return React.createElement(AvatarSwitcherContainer, {
		getRespawnBehaviour = SettingsHub.GetRespawnBehaviour,
		toggleWindow = function()
			ChromeService:toggleWindow(Constants.AVATAR_SWITCHER_ID)
		end,
		verticalLayout = verticalLayout,
	})
end

return AvatarSwitcherChromeWrapper
