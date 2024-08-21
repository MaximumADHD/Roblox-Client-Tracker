local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local Types = require(Foundation.Components.Types)
type Padding = Types.Padding

local React = require(Packages.React)

local TileLayoutContext = require(script.Parent.TileLayoutContext)

type TileLayout = {
	fillDirection: Enum.FillDirection,
	fillBehavior: FillBehavior,
	tileSpacing: number?,
	tilePadding: Padding?,
	hasBackground: boolean,
}

local useTileLayout = function(): TileLayout
	return React.useContext(TileLayoutContext)
end

return useTileLayout
