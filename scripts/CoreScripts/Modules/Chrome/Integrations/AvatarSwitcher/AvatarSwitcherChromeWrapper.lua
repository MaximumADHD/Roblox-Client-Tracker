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
local Foundation = require(CorePackages.Packages.Foundation)
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
	local fullScreen, setFullScreen = React.useState(false)

	-- SettingsHub should not be required at the top of the file due to potential issues with require orders. See https://github.com/Roblox/lua-apps/pull/24897
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

	local onScreenSizeChanged = React.useCallback(function(screenSize: Vector2)
		local topBarInset = GuiService.TopbarInset.Max.Y
		local shouldEnableFullScreen = screenSize.X < props.maxWindowWidth
			or screenSize.Y - topBarInset < props.maxWindowHeight
		if shouldEnableFullScreen then
			windowSize:requestSize(screenSize.X, screenSize.Y - topBarInset)
		else
			windowSize:requestSize(
				math.min(props.maxWindowWidth, screenSize.X),
				math.min(props.maxWindowHeight, screenSize.Y - topBarInset)
			)
		end
		setFullScreen(shouldEnableFullScreen)
	end, { windowSize, props.maxWindowWidth, props.maxWindowHeight, fullScreen } :: { any })

	useEventConnection(GuiService:GetPropertyChangedSignal("TopbarInset"), function()
		onScreenSizeChanged(ViewportUtil.screenSize:get())
	end)

	React.useEffect(function()
		local screenSizeConnection = ViewportUtil.screenSize:connect(onScreenSizeChanged)
		local windowSizeConnection = windowSize:connect(function(size)
			setVerticalLayout(shouldUseVerticalLayout(size))
		end)
		onScreenSizeChanged(ViewportUtil.screenSize:get())
		return function()
			screenSizeConnection:disconnect()
			windowSizeConnection:disconnect()
		end
	end, { onScreenSizeChanged } :: { any })

	return React.createElement(Foundation.View, {
		tag = `size-full {if fullScreen then "padding-x-large padding-top-medium padding-bottom-xlarge" else ""}`,
	}, {
		AvatarSwitcherContainer = React.createElement(AvatarSwitcherContainer, {
			getRespawnBehaviour = SettingsHub.GetRespawnBehaviour,
			respawnBehaviorChangedEvent = SettingsHub.RespawnBehaviourChangedEvent,
			toggleWindow = function()
				ChromeService:toggleWindow(Constants.AVATAR_SWITCHER_ID)
			end,
			verticalLayout = verticalLayout,
		}),
	})
end

return AvatarSwitcherChromeWrapper
