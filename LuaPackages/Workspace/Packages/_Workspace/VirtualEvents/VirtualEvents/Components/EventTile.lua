local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local types = require(VirtualEvents.types)

local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local LoadableImage = UIBlox.App.Loading.LoadableImage

local defaultProps = {
	size = UDim2.fromScale(1, 1),
}

export type Props = {
	imageUrl: string,
	context: types.SponsoredEvent,
	layoutOrder: number?,
	size: UDim2?,
	onActivated: ((context: types.SponsoredEvent) -> ())?,
}

local function EventTile(props: Props)
	props = Cryo.Dictionary.join(defaultProps, props)

	local style = useStyle()

	local onActivated = React.useCallback(function()
		if props.onActivated then
			props.onActivated(props.context)
		end
	end, { props.context })

	local onStateChanged = React.useCallback(function()
		-- PlaceHolder. There is currently no states yet.
	end, {})

	return React.createElement(Interactable, {
		onStateChanged = onStateChanged,

		AutoButtonColor = false,
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = style.Theme.PlaceHolder.Color,
		BackgroundTransparency = style.Theme.PlaceHolder.Transparency,
		BorderSizePixel = 0,
		[React.Event.Activated] = onActivated,
		-- Luau FIXME: Luau thinks that this is supposed to be a function
		[React.Tag] = "EventTile" :: any,
	}, {
		EventImage = React.createElement(LoadableImage, {
			ZIndex = 1,
			Size = UDim2.fromScale(1, 1),
			Image = props.imageUrl,
			BackgroundTransparency = 1,
			LayoutOrder = props.layoutOrder,
			showFailedStateWhenLoadingFailed = true,
			useShimmerAnimationWhileLoading = true,
			cornerRadius = UDim.new(0, 8),
		}),
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),
	})
end

return EventTile
