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

local AudioRowInsertButton = Roact.PureComponent:extend("AudioRowInsertButtonMetadata")

type _InteralAudioRowInsertButtonProps = {
	Localization: any,
	Stylizer: any,
}

type AudioRowInsertButtonProps = _InteralAudioRowInsertButtonProps & {
	LayoutOrder: number,
	OnClick: () -> nil,
}

function AudioRowInsertButton:render()
	local props: AudioRowInsertButtonProps = self.props

	local localization = props.Localization
	local layoutOrder = props.LayoutOrder
	local onClick = props.OnClick
	local theme = props.Stylizer.audioRow

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 50, 1, 0),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		Button = Roact.createElement("TextButton", {
			TextColor3 = theme.insertButtonTextColor,
			Font = Constants.FONT,
			TextSize = 15,
			Text = localization:getText("Common", "Insert"),
			Size = UDim2.new(1, 0, 0, 20),
			BackgroundColor3 = theme.insertButtonColor,
			[Roact.Event.MouseButton1Click] = onClick,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),
		}),
	})
end

AudioRowInsertButton = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AudioRowInsertButton)

return AudioRowInsertButton
