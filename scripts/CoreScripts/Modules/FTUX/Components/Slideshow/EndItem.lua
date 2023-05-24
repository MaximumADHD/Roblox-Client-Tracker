local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization
local FTUX = script.Parent.Parent.Parent
local slideshowData = require(FTUX.Resources.FTUXSlideshowData)
local Button = require(FTUX.Components.Slideshow.Button)

local PlatformEnum = require(FTUX.Enums.PlatformEnum)

type Platform = PlatformEnum.Platform
type Props = {
	platform: Platform,
	currentIndex: number,
	increaseCurrentIndex: (number) -> (),
}

local function EndItem(props: Props)
	local style = useStyle()

	local theme = style.Theme
	local font = style.Font

	local slideshowData = slideshowData[props.platform :: Platform]

	return withLocalization({
		footerText = "CoreScripts.VRFTUX.Label.Footer",
	})(function(localized)
		return (
			props.currentIndex ~= #slideshowData
				and React.createElement(Button, {
					platform = props.platform :: Platform,
					currentIndex = props.currentIndex,
					increaseCurrentIndex = props.increaseCurrentIndex,
				})
			or React.createElement(UIBlox.App.Text.StyledTextLabel, {
				text = localized.footerText,
				fontStyle = font.CaptionHeader,
				colorStyle = theme.TextEmphasis,
				textXAlignment = Enum.TextXAlignment.Center,
				textYAlignment = Enum.TextYAlignment.Center,
				size = UDim2.new(1, 0, 1, 0),
				layoutOrder = 2,
			})
		)
	end)
end

return EndItem
