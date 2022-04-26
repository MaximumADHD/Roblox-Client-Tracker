--!strict
local Plugin = script:FindFirstAncestor("Toolbox")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local AudioPlayer = require(Plugin.Core.Components.AudioPlayer.AudioPlayer)

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
}

function AudioRowMetadata:render()
	local props: AudioRowMetadataProps = self.props

	local header = props.HeaderText
	local layoutOrder = props.LayoutOrder
	local text = props.Text
	local theme = props.Stylizer.audioRow
	local size = props.Size

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
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Text = header,
			TextColor3 = theme.headerTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		Text = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, -20),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Text = text,
			TextColor3 = theme.textColor,
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
