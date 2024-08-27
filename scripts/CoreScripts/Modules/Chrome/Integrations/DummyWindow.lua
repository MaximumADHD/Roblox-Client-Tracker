local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(script.Parent.Parent.Service)
local CommonIcon = require(script.Parent.CommonIcon)
local Constants = require(script.Parent.Parent.Unibar.Constants)
local WindowSizeSignal = require(script.Parent.Parent.Service.WindowSizeSignal)

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton

local GetFFlagDebugEnableUnibarDummyIntegrations =
	require(script.Parent.Parent.Flags.GetFFlagDebugEnableUnibarDummyIntegrations)

local sizeIcon = Images["icons/navigation/cycleUp"]
local isLargeSize = false
local windowSize = WindowSizeSignal.new(Constants.DEFAULT_WIDTH, Constants.DEFAULT_HEIGHT)
local startingWindowPosition = UDim2.new(1, -95, 0, 165)

ChromeService:updateWindowPosition("dummy_window", startingWindowPosition)

local dummyWindowIntegration = ChromeService:register({
	initialAvailability = if GetFFlagDebugEnableUnibarDummyIntegrations()
		then ChromeService.AvailabilitySignal.Available
		else ChromeService.AvailabilitySignal.Unavailable,
	id = "dummy_window",
	label = "CoreScripts.TopBar.Menu",
	draggable = true,
	cachePosition = true,
	startingWindowPosition = startingWindowPosition,
	windowSize = windowSize,
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/avatar_on")
		end,
		Window = function(props)
			return React.createElement("Frame", {
				BackgroundTransparency = 0,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				Corner = React.createElement("UICorner", {
					CornerRadius = Constants.CORNER_RADIUS,
				}),
				SizeIcon = React.createElement(IconButton, {
					icon = sizeIcon,
					iconSize = Constants.CLOSE_ICON_SIZE,
					anchorPoint = Vector2.new(0.5, 1),
					position = UDim2.new(0.5, 0, 1, 0),
					backgroundTransparency = 0.5,
					onActivated = function()
						if isLargeSize then
							windowSize:requestSize(Constants.DEFAULT_WIDTH, Constants.DEFAULT_HEIGHT)
							isLargeSize = false
						else
							windowSize:requestSize(Constants.DEFAULT_WIDTH_LARGE, Constants.DEFAULT_HEIGHT_LARGE)
							isLargeSize = true
						end
					end,
				}),
			})
		end,
	},
})

return dummyWindowIntegration
