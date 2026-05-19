local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local React = require(CorePackages.Packages.React)
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local useEventConnection = ReactUtils.useEventConnection
local ChromeService = require(Chrome.Service)
local ViewportUtil = require(Chrome.ChromeShared.Service.ViewportUtil)
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)

local Shop = require(CorePackages.Workspace.Packages.InExperienceShop)
local ShopContainer = Shop.ShopContainer

export type Props = {
	windowSize: WindowSizeSignal.WindowSizeSignal,
	maxWindowWidth: number,
	maxWindowHeight: number,
}

local function ShopChromeWrapper(props: Props)
	local windowSize = props.windowSize
	local fullScreen, setFullScreen = React.useState(false)

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
	end, { windowSize, props.maxWindowWidth, props.maxWindowHeight } :: { any })

	useEventConnection(GuiService:GetPropertyChangedSignal("TopbarInset"), function()
		onScreenSizeChanged(ViewportUtil.screenSize:get())
	end)

	React.useEffect(function()
		local screenSizeConnection = ViewportUtil.screenSize:connect(onScreenSizeChanged)
		onScreenSizeChanged(ViewportUtil.screenSize:get())
		return function()
			screenSizeConnection:disconnect()
		end
	end, { onScreenSizeChanged } :: { any })

	local toggleWindow = React.useCallback(function()
		ChromeService:toggleWindow(Constants.IN_EXPERIENCE_SHOP_ID)
	end, {})

	return React.createElement(ShopContainer, {
		fullScreen = fullScreen,
		toggleWindow = toggleWindow,
	})
end

return ShopChromeWrapper
