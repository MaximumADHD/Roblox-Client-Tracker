local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local Foundation = require(Packages.Foundation)

export type FIXME = any

type PopoverSide = Foundation.PopoverSide
type PopoverAlign = Foundation.PopoverAlign

export type SideConfig = {
	position: PopoverSide,
	offset: number,
} | PopoverSide

export type AlignConfig = {
	position: PopoverAlign,
	offset: number,
} | PopoverAlign

export type ThemeName = "Light" | "Dark"

export type Delay = number | { open: number?, close: number? }

export type PanelPosition = { targetAnchorPoint: Vector2, subjectAnchorPoint: Vector2, offset: Vector2 }

export type PanelHandler = {
	container: PluginGui,
	close: () -> (),
	setSizeAsync: (size: Vector2) -> (),
	updateAsync: (newConfig: PanelPosition & { targetWidgetUri: StudioUri }) -> (),
}

return nil
