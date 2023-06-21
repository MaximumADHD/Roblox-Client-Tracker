local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local FTUX = script.Parent.Parent
local FTUXSlideshow = require(FTUX.Components.FTUXSlideshow)
local FTUXConstants = require(FTUX.Resources.FTUXConstants)

local PlatformEnum = require(FTUX.Enums.PlatformEnum)
type Platform = PlatformEnum.Platform

local FIntFTUXPanelXOffset = game:DefineFastInt("FTUXPanelXOffset", 50)

type Props = {
	platform: Platform,
}

local function FTUXPanel(props: Props)
	local style = useStyle()
	local constants = FTUXConstants[props.platform].PanelConstants

	local MAIN_SCREEN_SIZE_WIDTH = constants.MAIN_SCREEN_SIZE_WIDTH
	local MAIN_SCREEN_SIZE_HEIGHT = constants.MAIN_SCREEN_SIZE_HEIGHT
	local SLIDESHOW_FRAME_WIDTH = constants.SLIDESHOW_FRAME_WIDTH
	local SLIDESHOW_FRAME_HEIGHT = constants.SLIDESHOW_FRAME_HEIGHT
	local SLIDESHOW_FRAME_X = constants.SLIDESHOW_FRAME_X
	local SLIDESHOW_FRAME_Y = constants.SLIDESHOW_FRAME_Y

	local theme = style.Theme

	local PANEL_BACKGROUND_COLOR = theme.BackgroundDefault.Color

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, FIntFTUXPanelXOffset, 0, 0),
	}, {
		Slideshow = React.createElement("Frame", {
			BackgroundColor3 = PANEL_BACKGROUND_COLOR,
			BackgroundTransparency = 0,
			Size = UDim2.new(
				SLIDESHOW_FRAME_WIDTH / MAIN_SCREEN_SIZE_WIDTH,
				0,
				SLIDESHOW_FRAME_HEIGHT / MAIN_SCREEN_SIZE_HEIGHT,
				0
			),
			Position = UDim2.new(
				SLIDESHOW_FRAME_X / MAIN_SCREEN_SIZE_WIDTH,
				0,
				SLIDESHOW_FRAME_Y / MAIN_SCREEN_SIZE_HEIGHT,
				0
			),
			BorderSizePixel = 0,
			ClipsDescendants = true,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0.02, 0),
			}),
			Slideshow = React.createElement(FTUXSlideshow, {
				platform = props.platform,
			}, {}),
		}),
	})
end

return FTUXPanel
