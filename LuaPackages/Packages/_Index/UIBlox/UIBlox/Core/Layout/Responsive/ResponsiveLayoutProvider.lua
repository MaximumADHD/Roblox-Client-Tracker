local Responsive = script.Parent
local UIBlox = Responsive.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local ResponsiveLayoutContext = require(Responsive.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader = require(Responsive.ResponsiveLayoutConfigReader)

export type Config = ResponsiveLayoutConfigReader.Config

export type Props = {
	width: number?,
	config: Config?,
	children: { [any]: React.React_Node },
}

local function ResponsiveLayoutProvider(props: Props)
	local width = props.width or 1
	local config = props.config or {}

	local breakpoint, setBreakpoint = React.useState(function()
		return ResponsiveLayoutConfigReader.findBreakpoint(config, width)
	end)

	React.useLayoutEffect(function()
		setBreakpoint(ResponsiveLayoutConfigReader.findBreakpoint(config, width))
	end, { config })

	React.useLayoutEffect(function()
		if breakpoint.min > width or width > breakpoint.max then
			setBreakpoint(ResponsiveLayoutConfigReader.findBreakpoint(config, width))
		end
	end, { width, breakpoint.min, breakpoint.max })

	return React.createElement(ResponsiveLayoutContext.Provider, {
		value = {
			config = config,
			breakpoint = breakpoint.name,
		},
	}, props.children)
end

return ResponsiveLayoutProvider
