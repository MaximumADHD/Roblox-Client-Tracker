local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Types = require(Foundation.Components.Types)
type Padding = Types.Padding

local React = require(Packages.React)

local TileContext = require(script.Parent.TileContext)

type TileConfiguration = {
	fillDirection: Enum.FillDirection,
	isContained: boolean,
	testId: string?,
}

local useTile = function(): TileConfiguration
	return React.useContext(TileContext)
end

return useTile
