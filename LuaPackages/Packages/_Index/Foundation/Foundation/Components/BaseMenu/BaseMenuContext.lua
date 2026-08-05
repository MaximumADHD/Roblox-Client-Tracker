local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
type Bindable<T> = Types.Bindable<T>
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

export type BaseMenuContextType = {
	onActivated: OnItemActivated?,
	onNestedLeafActivated: (() -> ())?,
	size: InputSize,
	hasLeading: boolean?,
	setHasLeading: (() -> ())?,
	-- Centralized submenu state
	hoverOpenPath: { ItemId },
	hoverOpenAtDepth: ((depth: number, id: ItemId, immediate: boolean?) -> ())?,
	hoverCloseAtDepth: ((depth: number) -> ())?,
	hoverReset: (() -> ())?,
	-- Current nesting depth (1-based, root menu items are at depth 1)
	depth: number,
	-- Maximum height after which submenus start scrolling. Inherited from the root menu.
	maxHeight: Bindable<number?>?,
}

local EMPTY_PATH: { ItemId } = {}

local BaseMenuContext = React.createContext({
	onActivated = nil,
	onNestedLeafActivated = nil,
	size = InputSize.Medium,
	hasLeading = nil,
	setHasLeading = nil,
	hoverOpenPath = EMPTY_PATH,
	hoverOpenAtDepth = nil,
	hoverCloseAtDepth = nil,
	hoverReset = nil,
	depth = 1,
	maxHeight = nil,
} :: BaseMenuContextType)

return BaseMenuContext
