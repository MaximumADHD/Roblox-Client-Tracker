--[[
	small hook to easily read a value from the grid config
	reads a single value from context with an optional kind

	-- usage example:
	local columns = useGridConfig("columns", "experiences")
]]

local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local GridContext = require(Grid.GridContext)
local GridConfigReader = require(Grid.GridConfigReader)

return function(name: string, kind: string?)
	local context = React.useContext(GridContext)
	return GridConfigReader.getValue({
		config = context.config,
		breakpoint = context.breakpoint,
		kind = kind or context.kind,
	}, name)
end
