local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

export type BaseMenuContextType = {
	onActivated: OnItemActivated?,
	size: InputSize,
	hasLeading: boolean?,
	setHasLeading: (() -> ())?,
}

local BaseMenuContext = React.createContext({
	onActivated = nil,
	size = InputSize.Medium,
	hasLeading = nil,
	setHasLeading = nil,
} :: BaseMenuContextType)

return BaseMenuContext
