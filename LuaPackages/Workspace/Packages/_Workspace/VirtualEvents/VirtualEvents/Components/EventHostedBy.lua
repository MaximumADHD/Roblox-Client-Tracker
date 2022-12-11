local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local types = require(VirtualEvents.types)
local EventHostName = require(script.Parent.EventHostName)

local useStyle = UIBlox.Core.Style.useStyle
local Cell = UIBlox.App.Table.Cell
local CellHeadDetail = UIBlox.App.Table.CellHeadDetail
local CellTailDescription = UIBlox.App.Table.CellTailDescription

export type Props = {
	host: types.Host,
	size: UDim2,
}

local function EventHostedBy(props: Props)
	local style = useStyle()
	local theme = style.Theme

	return React.createElement("Frame", {
		Size = props.size,
		BackgroundTransparency = 1,
	}, {
		Divider = React.createElement("Frame", {
			BackgroundTransparency = theme.Divider.Transparency,
			BackgroundColor3 = theme.Divider.Color,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 1),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, 0),
			ZIndex = 2,
		}),
		Username = React.createElement(Cell, {
			size = UDim2.new(1, 0, 0, 56),
			head = React.createElement(CellHeadDetail, {
				labelText = "Hosted By",
				labelTextColor = theme.TextDefault,
			}),
			tail = React.createElement(CellTailDescription, {
				text = "not overridden",
				textColor = theme.TextEmphasis,
				renderTextOverride = function()
					return React.createElement(EventHostName, {
						hostId = props.host.hostId,
						hasVerifiedBadge = props.host.hasVerifiedBadge,
						position = UDim2.fromScale(0.5, 0.5),
					})
				end,
				showArrow = true,
			}),
		}),
	})
end

return EventHostedBy
