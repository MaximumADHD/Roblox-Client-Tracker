local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local EXTERIOR_PADDING = 24
local TOP_PADDING = 12
local HEIGHT = 72

local function GameIconHeader(props)
	return withStyle(function(stylePalette)
		local font = stylePalette.Font
		local theme = stylePalette.Theme
		return Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, HEIGHT),
			LayoutOrder = props.LayoutOrder or 0,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Padding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, EXTERIOR_PADDING),
				PaddingLeft = UDim.new(0, EXTERIOR_PADDING),
				PaddingRight = UDim.new(0, EXTERIOR_PADDING),
				PaddingTop = UDim.new(0, TOP_PADDING),
			}),
			Title = Roact.createElement(StyledTextLabel, {
				layoutOrder = 1,
				fontStyle = font.Header2,
				colorStyle = theme.TextEmphasis,
				size = UDim2.new(1, 0, 0, 20),
				text = props.gameName,
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
			}),
			SubTitle = Roact.createElement(StyledTextLabel, {
				layoutOrder = 2,
				fontStyle = font.CaptionBody,
				colorStyle = theme.TextDefault,
				size = UDim2.new(1, 0, 0, 28),
				text = props.gameCreator,
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Center,
			}),
		})
	end)
end

return RoactRodux.connect(function(state)
	return {
		gameName = state.gameInfo.name,
		gameCreator = state.gameInfo.creator,
	}
end)(GameIconHeader)
