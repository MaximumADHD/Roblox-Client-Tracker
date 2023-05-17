local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization
local FTUX = script.Parent.Parent.Parent
local slideshowData = require(FTUX.Resources.FTUXSlideshowData)

local PlatformEnum = require(FTUX.Enums.PlatformEnum)

type Platform = PlatformEnum.Platform
type Props = {
	platform: Platform,
	currentIndex: number,
}

local function Title(props: Props)
	local style = useStyle()

	local theme = style.Theme
	local font = style.Font

	local slideshowData = slideshowData[props.platform]
	local title = slideshowData[props.currentIndex].title

	return withLocalization({
		titleText = title,
	})(function(localized)
		return React.createElement(UIBlox.App.Text.StyledTextLabel, {
			text = localized.titleText,
			fontStyle = font.SubHeader1,
			colorStyle = theme.TextEmphasis,
			textXAlignment = Enum.TextXAlignment.Left,
			size = UDim2.new(1, 0, 0.031, 0),
			layoutOrder = 1,
		})
	end)
end

return Title
