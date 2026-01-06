local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local WindowSizeSignal = require(Chrome.ChromeShared.Service.WindowSizeSignal)

local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local IconButton = UIBlox.App.Button.IconButton

local GetFFlagDebugEnableUnibarDummyIntegrations =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagDebugEnableUnibarDummyIntegrations

local sizeIcon = Images["icons/navigation/cycleUp"]
local isLargeSize = false
local windowSize = WindowSizeSignal.new(Constants.DEFAULT_WIDTH, Constants.DEFAULT_HEIGHT)
local startingWindowPosition = UDim2.new(1, -95, 0, 165)

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
	persistWindowState = true,
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
