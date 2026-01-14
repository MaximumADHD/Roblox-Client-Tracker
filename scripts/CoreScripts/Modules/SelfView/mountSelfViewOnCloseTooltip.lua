local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TopBarConstants = require(RobloxGui.Modules.TopBar.Constants)
local UIBlox = require(CorePackages.Packages.UIBlox)
local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local DarkTheme = UIBlox.App.Style.Constants.ThemeName.Dark

local Promise = require(CorePackages.Packages.Promise)

local SelfViewTooltipFTUX = require(script.Parent.SelfViewTooltipFTUX)
local PADDING_TIME = 5

return function(props)
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "SelfViewTooltipOnCloseGui"
	screenGui.DisplayOrder = -1
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.Parent = CoreGui

	local topBarButtonHeight = TopBarConstants.useDisplayScaleState(TopBarConstants.TopBarButtonHeight)
	local screenSideOffset = TopBarConstants.useDisplayScaleState(TopBarConstants.ScreenSideOffset)

	local root = Roact.createElement(AppStyleProvider, {
		style = {
			themeName = DarkTheme,
		},
	}, {
		frame = Roact.createElement("Frame", {
			Position = UDim2.fromOffset(screenSideOffset, -topBarButtonHeight),
			Size = UDim2.fromOffset(topBarButtonHeight, topBarButtonHeight),
			BackgroundTransparency = 0,
			Visible = false,
		}, {
			tooltip = Roact.createElement(SelfViewTooltipFTUX, {
				fallbackText = props.fallbackText,
				translationKey = props.translationKey,
				tooltipLifetime = props.tooltipLifetime,
			}),
		}),
	})

	local instance = Roact.mount(root, screenGui, "SelfViewTooltipOnClose")

	Promise.delay(props.tooltipLifetime + PADDING_TIME):andThen(function()
		pcall(function()
			-- Some time after the tooltip's lifetime, we want to unmount the instance
			Roact.unmount(instance)
		end)
	end)
end
