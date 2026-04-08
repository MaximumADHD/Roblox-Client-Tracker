local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local Foundation = require(Packages.Foundation)
local React = require(Packages.React)
local View = Foundation.View

local useCallback = React.useCallback

local Types = require(MomentsCommon.Types)

local MAX_TEXT_OVERLAY_WIDTH = 300

export type TextOverlayProps = {
	additionalScale: number?,
	boundingUI: GuiObject?,
	containerRef: React.RefObject<GuiObject>?,
	draggable: boolean?,
	editable: boolean?,
	onActivated: (() -> ())?,
	onDragEnd: (() -> ())?,
	onTextChanged: ((instance: TextBox) -> ())?,
	size: UDim2?,
	textOverlayEdit: Types.TextOverlayEdit,
	textBoxRef: React.RefObject<TextBox>?,
}

local function TextOverlay(props: TextOverlayProps): React.ReactElement?
	local dragDetectorRef = React.useRef(nil)
	local dragStartPositionRef = React.useRef(nil :: Vector2?)

	local onDragStart = useCallback(function(_rbx: InputObject, position: Vector2)
		if props.containerRef and props.containerRef.current then
			dragStartPositionRef.current = position
		end
	end, { props.containerRef })

	local onDragEnd = useCallback(function(_rbx: InputObject, position: Vector2)
		if dragStartPositionRef.current == position and props.onActivated then
			props.onActivated()
		end

		if props.onDragEnd then
			props.onDragEnd()
		end
	end, { props.onActivated, props.onDragEnd })

	local dragDetector = React.useMemo(function()
		if not props.draggable then
			return nil
		end

		return React.createElement("UIDragDetector", {
			BoundingBehavior = Enum.UIDragDetectorBoundingBehavior.EntireObject,
			BoundingUI = props.boundingUI,
			DragStyle = Enum.UIDragDetectorDragStyle.TranslatePlane,
			ref = dragDetectorRef,
			ReferenceUIInstance = props.boundingUI,
			ResponseStyle = Enum.UIDragDetectorResponseStyle.Scale,
			[React.Event.DragStart] = onDragStart,
			[React.Event.DragEnd] = onDragEnd,
		})
	end, { props.boundingUI, props.draggable, onDragStart, onDragEnd })

	return React.createElement(View, {
		ref = props.containerRef,
		onActivated = props.onActivated,
		Position = props.textOverlayEdit.position,
		Rotation = props.textOverlayEdit.rotation,
		scale = props.textOverlayEdit.scale * (props.additionalScale or 1),
		sizeConstraint = {
			MaxSize = Vector2.new(MAX_TEXT_OVERLAY_WIDTH, math.huge),
		},
		stateLayer = { affordance = Foundation.Enums.StateLayerAffordance.None },
		tag = "auto-xy anchor-center-center bg-contrast padding-medium position-center-center radius-medium",
		ZIndex = props.textOverlayEdit.zIndex,
	}, {
		UIDragDetector = dragDetector,

		TextInput = React.createElement("TextBox", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			ClearTextOnFocus = false,
			ClipsDescendants = true,
			Font = props.textOverlayEdit.textOverlayStyle.font,
			Interactable = props.editable == true,
			Text = props.textOverlayEdit.text,
			TextColor3 = props.textOverlayEdit.textOverlayStyle.fontColor,
			TextSize = props.textOverlayEdit.textOverlayStyle.fontSize,
			TextXAlignment = props.textOverlayEdit.textOverlayStyle.textXAlignment,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextWrapped = true,
			Size = props.size,
			ZIndex = props.textOverlayEdit.zIndex,
			ref = props.textBoxRef,
			[React.Change.Text] = props.onTextChanged,
		}),
	})
end

return TextOverlay
