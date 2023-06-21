local Tooltip = script.Parent
local Dialog = Tooltip.Parent
local App = Dialog.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local KeyLabel = require(App.Menu.KeyLabelV2)
local StyleTypes = require(App.Style.StyleTypes)

-- props supplied by user
export type TooltipPublicProps = {
	-- tooltip header text
	headerText: string?,
	-- tooltip body text
	bodyText: string?,
	-- alignment for header and body text
	textAlignment: Enum.TextXAlignment?,
	-- props to be passed to button (if present)
	buttonProps: { [string]: any }?,
	-- array of hotkey keycodes to be passed to keyLabel
	hotkeyCodes: { KeyLabel.FlexibleKeyCode }?,
	-- render function to be rendered underneath the text
	renderCustomComponents: ((width: number) -> React.ReactElement)?,
	-- forward a ref to the tooltip box. this is not a real prop, but we include it for typechecking
	ref: React.Ref<GuiObject>?,
	-- if true, use the large 73px dropshadow otherwise use the regular 25px dropshadow
	useLargeDropShadow: boolean?,
	-- background of the CanvasGroup the Tooltip is on, transparent if left empty
	canvasBackground: StyleTypes.ThemeItem?,

	-- padding for the tooltip box (relative padding is not supported due to AutomaticSize)
	PaddingTop: number?,
	PaddingBottom: number?,
	PaddingLeft: number?,
	PaddingRight: number?,
	-- padding between list elements (relative padding is not supported due to AutomaticSize)
	listPadding: number?,
}

-- values controlled by animation
export type AnimationValues = {
	-- additional distance between the triggerpoint and caret/content
	distanceOffset: number,
	-- transparency of tooltip
	transparency: number,
}

-- props supplied by TooltipController
export type TooltipSuppliedProps = {
	-- the actual orientation of the tooltip
	orientation: any,
	-- the center of the trigger point (relative to the tooltip's parent)
	triggerPointCenter: Vector2,
	--  half of the trigger point's size
	triggerPointRadius: Vector2,
	-- offset from the default content position (usually centered on caret)
	contentOffsetVector: Vector2,
	-- callback to call when the content's size changes
	onContentSizeChanged: ((Vector2) -> ())?,
} & AnimationValues

-- all props for Tooltip
export type TooltipProps = TooltipPublicProps & TooltipSuppliedProps

-- options always supplied by user
type TooltipControllerPublicProps = {
	-- a toggle that can be used to switch on or switch off tooltip
	disabled: boolean?,
	-- the name of the trigger point returned by the render function
	triggerPointName: string?,
	-- the orientation that the tooltip will use if there is space
	preferredOrientation: any?,
	-- the Roblox instance under which the controller will create its ScreenGui
	guiTarget: Instance,
	-- the DisplayOrder of the new ScreenGui
	DisplayOrder: number,
	-- if true, the tooltip mounts to guiTarget directly, without creating a ScreenGui
	DEBUG_useTargetDirectly: boolean?,
}

-- options supplied by user or controller
export type TooltipControllerOptions = {
	-- whether the tooltip is currently active (or becoming active)
	active: boolean,
} & TooltipControllerPublicProps

type InstanceCallback = (GuiObject) -> ()

export type RenderFn = (triggerPointChanged: InstanceCallback) -> React.ReactElement

-- all props for TooltipController
export type TooltipControllerProps = {
	-- props to be passed to child tooltip
	tooltipProps: TooltipPublicProps,
	-- render function for trigger point
	renderTriggerPoint: RenderFn,
} & TooltipControllerOptions

-- unfortunately enums from enumerate package don't have types
-- these should be ControlState in particular
type StateChangeCallback = (any, any) -> ()

export type HoverRenderFn = (
	triggerPointChanged: InstanceCallback,
	onStateChanged: StateChangeCallback
) -> React.ReactElement

-- options supplied by user
export type HoverControllerOptions = {
	-- how long the user must hover before the tooltip becomes active
	delayTime: number?,
} & TooltipControllerPublicProps

-- all hover controller props
export type HoverControllerProps = {
	-- props to be passed to child tooltip
	tooltipProps: TooltipPublicProps,
	-- render function for trigger point
	renderTriggerPoint: HoverRenderFn,
} & HoverControllerOptions

return {}
