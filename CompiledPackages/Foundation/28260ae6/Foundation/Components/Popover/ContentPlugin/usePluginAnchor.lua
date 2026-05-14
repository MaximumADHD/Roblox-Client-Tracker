local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local OverlayContext = require(Foundation.Providers.Overlay.OverlayContext)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useUniqueWidget = require(Foundation.Providers.StudioWidgets.useUniqueWidget)

type PopoverAnchor = Types.PopoverAnchor
type MeasurableObject = Types.MeasurableObject

local function usePluginAnchor(anchor: PopoverAnchor?)
	local overlayContext = React.useContext(OverlayContext)
	local isVirtualAnchor = anchor ~= nil and typeof(anchor) ~= "Instance"

	local instanceAnchorRef = React.useRef(nil :: GuiBase2d?) :: React.RefObject<GuiBase2d>
	if not isVirtualAnchor and typeof(anchor) == "Instance" then
		instanceAnchorRef.current = anchor :: GuiBase2d
	end

	-- Track the virtual anchor View instance via state so that, when the View
	-- mounts in the overlay portal, a re-render is triggered. Without this,
	-- `useWidgetRef`'s effect dependency on `ref.current` is captured at
	-- render time as `nil` and never re-evaluates after attachment, leaving
	-- the widget unregistered and the popover positioned at the screen
	-- origin instead of the virtual anchor location.
	local virtualAnchorInstance, setVirtualAnchorInstance = React.useState(nil :: GuiBase2d?)
	local virtualAnchorRef = React.useRef(nil :: GuiBase2d?) :: React.RefObject<GuiBase2d>
	virtualAnchorRef.current = virtualAnchorInstance

	local virtualAnchorRefCallback = React.useCallback(function(instance: GuiBase2d?)
		setVirtualAnchorInstance(instance :: any)
	end, { setVirtualAnchorInstance })

	local anchorWidget = useUniqueWidget({
		forwardRef = if isVirtualAnchor then virtualAnchorRef else instanceAnchorRef,
	})

	local anchorPosition, setAnchorPosition = React.useState(Vector2.zero)
	local anchorSize, setAnchorSize = React.useState(Vector2.one)
	local overlayOffset, setOverlayOffset = React.useState(Vector2.zero)

	React.useLayoutEffect(function()
		if not isVirtualAnchor or anchor == nil then
			return
		end

		local measurableAnchor = anchor :: MeasurableObject
		local function updateFromAnchor()
			setAnchorPosition(measurableAnchor.AbsolutePosition)
			setAnchorSize(measurableAnchor.AbsoluteSize)
		end

		updateFromAnchor()
		local positionConnection =
			measurableAnchor:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateFromAnchor)
		local sizeConnection = measurableAnchor:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateFromAnchor)

		return function()
			positionConnection:Disconnect()
			sizeConnection:Disconnect()
		end
	end, { anchor, isVirtualAnchor } :: { unknown })

	React.useLayoutEffect(function()
		if isVirtualAnchor then
			overlayContext.requestOverlay()
		end
	end, { overlayContext.requestOverlay, isVirtualAnchor } :: { unknown })

	React.useLayoutEffect(function()
		if not isVirtualAnchor then
			return
		end

		local overlay = overlayContext.instance
		if overlay == nil or not overlay:IsA("GuiObject") then
			setOverlayOffset(Vector2.zero)
			return
		end

		local function updateOffset()
			setOverlayOffset(overlay.AbsolutePosition)
		end

		updateOffset()
		local offsetConnection = overlay:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateOffset)
		return function()
			offsetConnection:Disconnect()
		end
	end, { overlayContext.instance, isVirtualAnchor } :: { unknown })

	local anchorReady = anchor ~= nil and ((not isVirtualAnchor) or overlayContext.instance ~= nil)

	local anchorElement = nil
	if isVirtualAnchor and overlayContext.instance then
		local element = React.createElement(View, {
			Position = UDim2.fromOffset(anchorPosition.X - overlayOffset.X, anchorPosition.Y - overlayOffset.Y),
			Size = UDim2.fromOffset(anchorSize.X, anchorSize.Y),
			Visible = true,
			ref = virtualAnchorRefCallback,
		})

		anchorElement = ReactRoblox.createPortal(element, overlayContext.instance)
	end

	return {
		widget = anchorWidget,
		element = anchorElement,
		isVirtual = isVirtualAnchor,
		isReady = anchorReady,
	}
end

return usePluginAnchor
