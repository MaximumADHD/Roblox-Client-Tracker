local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)

local ExperienceTile = UIBlox.App.Tile.ExperienceTile
local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

local HEADER_TEXT = "Description"
local TILE_WIDTH_PX = 150
local PADDING_PX = 32

export type Props = {
	description: string?,
	experienceName: string?,
	experienceThumbnail: string?,
	onExperienceTileActivated: (() -> ())?,
}

local function EventDescription(props: Props)
	local style = useStyle()

	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, PADDING_PX),
		}),

		DescriptionHeader = React.createElement(StyledTextLabel, {
			layoutOrder = 0,
			text = HEADER_TEXT,
			automaticSize = Enum.AutomaticSize.XY,
			fontStyle = style.Font.Header1,
			colorStyle = style.Theme.TextEmphasis,
		}),

		Description = if props.description
			then React.createElement(StyledTextLabel, {
				layoutOrder = 1,
				text = props.description,
				automaticSize = Enum.AutomaticSize.XY,
				fontStyle = style.Font.Body,
				colorStyle = style.Theme.TextDefault,
			})
			else React.createElement(ShimmerPanel, {
				Size = UDim2.new(1, 0, 0, style.Font.BaseSize),
			}),

		ExperienceTileWrapper = React.createElement("Frame", {
			LayoutOrder = 2,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromOffset(TILE_WIDTH_PX, 0),
			BackgroundTransparency = 1,
		}, {
			ExperienceTile = React.createElement(ExperienceTile, {
				experienceName = props.experienceName,
				thumbnail = props.experienceThumbnail,
				onActivated = props.onExperienceTileActivated,
			}),
		}),
	})
end

return EventDescription
