--!strict
local Grid = script.Parent
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local GridContext = require(Grid.GridContext)
local GridConfigReader = require(Grid.GridConfigReader)

export type Config = GridConfigReader.Config

export type Props = {
	width: number,
	config: Config,
	children: { [any]: React.React_Node },
}

local function GridProvider(props: Props)
	local width = props.width
	local config = props.config

	local breakpoint, setBreakpoint = React.useState(function()
		return GridConfigReader.findBreakpoint(config, width)
	end)

	React.useLayoutEffect(function()
		setBreakpoint(GridConfigReader.findBreakpoint(config, width))
	end, { config })

	React.useLayoutEffect(function()
		if breakpoint.min > width or width > breakpoint.max then
			setBreakpoint(GridConfigReader.findBreakpoint(config, width))
		end
	end, { width, breakpoint.min, breakpoint.max })

	return React.createElement(GridContext.Provider, {
		value = {
			config = config,
			breakpoint = breakpoint.name,
		},
	}, props.children)
end

return GridProvider
