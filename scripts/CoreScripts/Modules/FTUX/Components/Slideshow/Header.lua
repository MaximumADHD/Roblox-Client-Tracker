local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization
local FTUX = script.Parent.Parent.Parent
local FTUXConstants = require(FTUX.Resources.FTUXConstants)

local PlatformEnum = require(FTUX.Enums.PlatformEnum)

type Platform = PlatformEnum.Platform
type Props = {
	platform: Platform,
}

local function Header(props: Props)
	local style = useStyle()

	local theme = style.Theme
	local font = style.Font
	local constants = FTUXConstants[props.platform].PanelConstants

	local HEADER_BACKGROUND_COLOR = theme.BackgroundContrast.Color

	local HEADER_HEIGHT_RATIO = constants.HEADER_HEIGHT_RATIO
	local CONTENT_PADDING_RATIO = constants.CONTENT_PADDING / constants.SLIDESHOW_FRAME_WIDTH
	local CONTENT_WIDTH_RATIO = 1 - 2 * CONTENT_PADDING_RATIO

	return withLocalization({
		headerText = "CoreScripts.VRFTUX.Heading.Header",
	})(function(localized)
		return React.createElement("Frame", {
			BackgroundColor3 = HEADER_BACKGROUND_COLOR,
			BackgroundTransparency = 0,
			Size = UDim2.new(1, 0, HEADER_HEIGHT_RATIO, 0),
			LayoutOrder = 1,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0.26, 0),
			}),
			HeaderFrame = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
			}, {
				Box = React.createElement("Frame", {
					Size = UDim2.new(CONTENT_WIDTH_RATIO, 0, 1, 0),
					Position = UDim2.new(CONTENT_PADDING_RATIO, 0, 0, 0),
					BackgroundTransparency = 1,
				}, {
					HeaderText = React.createElement(UIBlox.App.Text.StyledTextLabel, {
						text = localized.headerText,
						fontStyle = font.Header1,
						colorStyle = theme.TextEmphasis,
						textXAlignment = Enum.TextXAlignment.Left,
						size = UDim2.new(1, 0, 1, 0),
						fluidSizing = true,
						automaticSize = Enum.AutomaticSize.XY,
					}),
				}),
			}),
		})
	end)
end

return Header
