local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local FTUX = script.Parent.Parent.Parent
local slideshowData = require(FTUX.Resources.FTUXSlideshowData)
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization

local PlatformEnum = require(FTUX.Enums.PlatformEnum)
local ButtonEnum = require(FTUX.Enums.ButtonEnum)

type Platform = PlatformEnum.Platform
type Props = {
	platform: Platform,
	currentIndex: number,
	increaseCurrentIndex: (number) -> (),
}

local function Button(props: Props)
	local style = useStyle()

	local font = style.Font

	local slideshowData = slideshowData[props.platform]
	local currentIndex = props.currentIndex
	local increaseCurrentIndex = props.increaseCurrentIndex
	local buttonType = slideshowData[currentIndex].button

	return withLocalization({
		skip = "CoreScripts.VRFTUX.Action.Skip",
		next = "CoreScripts.VRFTUX.Action.Next",
	})(function(localized)
		return (
			buttonType == ButtonEnum.NextButton
				and React.createElement(UIBlox.App.Button.PrimaryContextualButton, {
					text = localized.next,
					fontStyle = font.Body,
					layoutOrder = 4,
					size = UDim2.new(1, 0, 0.6, 0),
					onActivated = increaseCurrentIndex,
				})
			or React.createElement(UIBlox.App.Button.SecondaryButton, {
				text = localized.skip,
				fontStyle = font.Body,
				layoutOrder = 4,
				size = UDim2.new(1, 0, 0.6, 0),
				onActivated = increaseCurrentIndex,
			})
		)
	end)
end

return Button
