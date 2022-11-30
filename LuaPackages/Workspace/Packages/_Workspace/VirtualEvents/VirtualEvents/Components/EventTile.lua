local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local types = require(VirtualEvents.types)
local findFirstImageInMedia = require(VirtualEvents.Common.findFirstImageInMedia)
local useVirtualEventMedia = require(VirtualEvents.Hooks.useVirtualEventMedia)

local useStyle = UIBlox.Core.Style.useStyle
local Interactable = UIBlox.Core.Control.Interactable
local LoadableImage = UIBlox.App.Loading.LoadableImage

local getFFlagEnableVirtualEvents = require(VirtualEvents.Parent.SharedFlags).getFFlagEnableVirtualEvents

local defaultProps = {
	size = UDim2.fromScale(1, 1),
}

export type Props = {
	imageUrl: string,
	context: types.SponsoredEvent | types.VirtualEvent,
	layoutOrder: number?,
	size: UDim2?,
	onActivated: ((context: types.SponsoredEvent | types.VirtualEvent) -> ())?,
}

local function EventTile(props: Props)
	props = Cryo.Dictionary.join(defaultProps, props)

	local style = useStyle()
	local media = if getFFlagEnableVirtualEvents()
		then useVirtualEventMedia(props.context :: types.VirtualEvent)
		else nil
	local firstImage = if media then findFirstImageInMedia(media) else nil

	local onActivated = React.useCallback(function()
		if props.onActivated then
			if getFFlagEnableVirtualEvents() then
				props.onActivated(props.context :: types.VirtualEvent)
			else
				props.onActivated(props.context :: types.SponsoredEvent)
			end
		end
	end, { props.context })

	local onStateChanged = React.useCallback(function()
		-- PlaceHolder. There is currently no states yet.
	end, {})

	return React.createElement(Interactable, {
		onStateChanged = onStateChanged,

		AutoButtonColor = false,
		Size = if getFFlagEnableVirtualEvents() then props.size else UDim2.fromScale(1, 1),
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
			Image = if getFFlagEnableVirtualEvents() then firstImage else props.imageUrl,
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
