local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local FTUX = script.Parent.Parent.Parent
local slideshowData = require(FTUX.Resources.FTUXSlideshowData)
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local PlatformEnum = require(FTUX.Enums.PlatformEnum)
local withLocalization = require(CorePackages.Workspace.Packages.Localization).withLocalization

type Platform = PlatformEnum.Platform
type Props = {
	platform: Platform,
	currentIndex: number,
}

local function Description(props: Props)
	local style = useStyle()

	local theme = style.Theme
	local font = style.Font

	local slideshowData = slideshowData[props.platform]
	local text = slideshowData[props.currentIndex].text

	return withLocalization(text)(function(localized)
		return React.createElement(
			"Frame",
			{
				Size = UDim2.new(1, 0, 0.4, 0),
				Position = UDim2.new(0, 0, 0, 0),
				LayoutOrder = 2,
				BackgroundTransparency = 1,
			},
			React.createElement("UIListLayout", {
				Padding = UDim.new(0, 0),
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}) :: any,
			LuauPolyfill.Array.map(text, function(item, index)
				return React.createElement(UIBlox.App.Text.StyledTextLabel, {
					text = localized[index],
					fontStyle = font.CaptionBody,
					colorStyle = theme.TextDefault,
					textXAlignment = Enum.TextXAlignment.Left,
					size = UDim2.new(1, 0, 1 / #text, 0),
					layoutOrder = index,
				}) :: any
			end)
		)
	end)
end

return Description
