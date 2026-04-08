local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local useCallback = React.useCallback
local useMemo = React.useMemo

local View = Foundation.View

local TextOverlay = require(MomentsCommon.Components.TextOverlay)

local getCropSize = require(MomentsCommon.Utils.getCropSize)
local getFitSize = require(MomentsCommon.Utils.getFitSize)
local getScale = require(MomentsCommon.Utils.getScale)

local Types = require(MomentsCommon.Types)

export type TextOverlayDisplayProps = {
	draggable: boolean?,
	editable: boolean?,
	itemResolution: Vector2?,
	itemSize: Vector2,
	onTextOverlayActivated: () -> ()?,
	onTextOverlayDragEnd: ({ Types.TextOverlayEdit }?) -> ()?,
	scaleType: Enum.ScaleType,
	textOverlayEdits: { Types.TextOverlayEdit }?,
	zIndex: number?,
}

local function TextOverlayDisplay(props: TextOverlayDisplayProps): React.ReactElement?
	local boundingUIRef = React.useRef(nil)
	local textOverlayContainerRef = React.useRef(nil)

	local textOverlay = props.textOverlayEdits and props.textOverlayEdits[1] or nil

	local size, scale = useMemo(function()
		if not props.itemResolution then
			return UDim2.fromScale(1, 1), 1
		end

		local fitSize = getFitSize(props.itemSize, props.itemResolution)
		local cropSize = getCropSize(props.itemSize, props.itemResolution)
		local itemScale = getScale(props.itemSize, props.itemResolution, props.scaleType)

		if props.scaleType == Enum.ScaleType.Fit then
			return fitSize, itemScale
		else
			return cropSize, itemScale
		end
	end, { props.scaleType, props.itemResolution, props.itemSize })

	local onTextOverlayDragEnd = useCallback(function()
		if not textOverlayContainerRef.current or not props.onTextOverlayDragEnd then
			return
		end
		local newTextOverlayEdit = Dash.joinDeep(textOverlay, {
			position = textOverlayContainerRef.current.Position,
		})
		props.onTextOverlayDragEnd({ newTextOverlayEdit })
	end, { props.onTextOverlayDragEnd, textOverlay })

	local renderTextOverlay = useCallback(function(textOverlayEdit)
		return React.createElement(TextOverlay, {
			additionalScale = scale,
			boundingUI = boundingUIRef.current,
			containerRef = textOverlayContainerRef,
			draggable = props.draggable,
			onActivated = props.onTextOverlayActivated,
			onDragEnd = onTextOverlayDragEnd,
			textOverlayEdit = textOverlayEdit,
		})
	end, { props.draggable, props.onTextOverlayActivated, scale })

	if not props.textOverlayEdits or #props.textOverlayEdits == 0 then
		return nil
	end

	return React.createElement(View, {
		ref = boundingUIRef,
		Size = size,
		tag = "anchor-center-center position-center-center",
		ZIndex = props.zIndex or 1,
	}, {
		TextOverlay = renderTextOverlay(textOverlay),
	})
end

return TextOverlayDisplay
