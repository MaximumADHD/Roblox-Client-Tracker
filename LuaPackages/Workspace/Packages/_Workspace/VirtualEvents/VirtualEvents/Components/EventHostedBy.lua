local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local EventHostName = require(VirtualEvents.Components.EventHostName)
local types = require(VirtualEvents.types)

local Cell = UIBlox.App.Table.Cell
local CellHeadDetail = UIBlox.App.Table.CellHeadDetail
local CellTailDescription = UIBlox.App.Table.CellTailDescription
local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	host: types.Host,
	size: UDim2?,
	onActivated: ((host: types.Host) -> ())?,
}

local defaultProps = {
	size = UDim2.new(1, 0, 0, 52),
}

type InternalProps = Props & typeof(defaultProps)

local function EventHostedBy(props: Props)
	props = Cryo.Dictionary.join(defaultProps, props) :: InternalProps

	local style = useStyle()
	local text = useLocalization({
		hostedBy = "Feature.VirtualEvents.HostedByLabel",
	})

	local onActivated = React.useCallback(function()
		if props.onActivated then
			props.onActivated(props.host)
		end
	end, { props })

	return React.createElement(Cell, {
		size = props.size,
		userInteractionEnabled = true,
		horizontalPadding = 0,
		onActivated = onActivated,
		head = React.createElement(CellHeadDetail, {
			labelText = text.hostedBy,
			labelTextColor = style.Theme.TextDefault,
			labelTextFont = style.Font.Body,
		}),
		tail = React.createElement(CellTailDescription, {
			text = "",
			renderTextOverride = function()
				return React.createElement(EventHostName, {
					host = props.host,
				})
			end,
			showArrow = true,
		}),
	})
end

return EventHostedBy
