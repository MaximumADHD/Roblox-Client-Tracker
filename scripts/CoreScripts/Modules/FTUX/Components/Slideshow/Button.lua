local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local Button = UIBlox.App.Button.Button
local ButtonType = UIBlox.App.Button.Enum.ButtonType
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

local function SlideshowButton(props: Props)
	local style = useStyle()

	local font = style.Font

	local slideshowData = slideshowData[props.platform]
	local currentIndex = props.currentIndex
	local increaseCurrentIndex = props.increaseCurrentIndex
	local button = slideshowData[currentIndex].button

	return withLocalization({
		skip = "CoreScripts.VRFTUX.Action.Skip",
		next = "CoreScripts.VRFTUX.Action.Next",
	})(function(localized)
		local buttonType = ButtonType.Secondary
		local text = localized.skip
		if button == ButtonEnum.NextButton then
			buttonType = ButtonType.PrimaryContextual
			text = localized.next
		end

		return React.createElement(Button, {
			buttonType = buttonType,
			text = text,
			fontStyle = font.Body,
			layoutOrder = 4,
			size = UDim2.new(1, 0, 0.6, 0),
			onActivated = increaseCurrentIndex,
		})
	end)
end

return SlideshowButton
