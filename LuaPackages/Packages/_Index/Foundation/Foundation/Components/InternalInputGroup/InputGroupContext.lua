local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)

type InputPlacement = InputPlacement.InputPlacement
type InputSize = InputSize.InputSize

export type InputGroupConfiguration = {
	size: InputSize?,
	placement: InputPlacement?,
}

local InputGroupContext = React.createContext<<InputGroupConfiguration>>({
	size = nil,
	placement = nil,
})

return InputGroupContext
