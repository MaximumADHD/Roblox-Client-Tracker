--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local FFlagToolboxAudioSearchOptions2 = game:GetFastFlag("ToolboxAudioSearchOptions2")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local AudioPlayer = require(Plugin.Core.Components.AudioPlayer.AudioPlayer)
local AudioRowUnderlinedTextButton = require(Plugin.Core.Components.AudioRow.AudioRowUnderlinedTextButton)

local Images = require(Plugin.Core.Util.Images)

local HomeTypes = require(Plugin.Core.Types.HomeTypes)

local AudioRowMetadata = Roact.PureComponent:extend("AudioRowMetadataMetadata")

type _InteralAudioRowMetadataProps = {
	Stylizer: any,
}

type AudioRowMetadataProps = _InteralAudioRowMetadataProps & {
	HeaderText: string?,
	LayoutOrder: number,
	Text: string?,
	Size: UDim2,
	OnClick: (() -> nil)?,
}

local HEADER_HEIGHT = 20

function AudioRowMetadata:render()
	local props: AudioRowMetadataProps = self.props

	local header = props.HeaderText
	local layoutOrder = props.LayoutOrder
	local text = props.Text
	local theme = props.Stylizer.audioRow
	local size = props.Size
	local onClick = props.OnClick

	return Roact.createElement("Frame", {
		Size = size,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Header = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_SMALL,
			Text = header,
			TextColor3 = theme.headerTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Text = if FFlagToolboxAudioSearchOptions2
			then Roact.createElement(AudioRowUnderlinedTextButton, {
				LayoutOrder = 2,
				OnClick = onClick,
				Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
				Text = text,
				TextSize = Constants.FONT_SIZE_SMALL,
				TextWrapped = true,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
			else Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Text = text,
				TextColor3 = theme.textColor,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_SMALL,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),
	})
end

AudioRowMetadata = withContext({
	Stylizer = ContextServices.Stylizer,
})(AudioRowMetadata)

return AudioRowMetadata
