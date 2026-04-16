local Foundation = script:FindFirstAncestor("Foundation")

local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
type StudioUri = StudioUri.StudioUri

local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide

export type StudioSideConfig = {
	position: PopoverSide,
	offset: number,
} | PopoverSide

export type StudioAlignConfig = {
	position: PopoverAlign,
	offset: number,
} | PopoverAlign

export type PanelPosition = {
	targetAnchorPoint: Vector2,
	subjectAnchorPoint: Vector2,
	offset: Vector2,
}

export type PanelHandle = {
	container: PluginGui,
	close: () -> (),
	setSizeAsync: (size: Vector2) -> (),
	updateAsync: (newConfig: PanelPosition & { targetWidgetUri: StudioUri }) -> (),
}

export type PanelsContext = {
	registerPopoverAsync: (
		anchorUri: StudioUri,
		position: PanelPosition,
		onClose: () -> ()
	) -> (PanelHandle, () -> ()),
}

return nil
