local Foundation = script:FindFirstAncestor("Foundation")

local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
type StudioUri = StudioUri.StudioUri

local WidgetManager = require(script.Parent.WidgetManager)
export type WidgetManager = WidgetManager.WidgetManager

export type WidgetsContext = {
	register: (uri: StudioUri, gui: GuiBase2d) -> (),
	deregister: (uri: StudioUri, gui: GuiBase2d?) -> (),
	nextId: () -> string,
}

return nil
