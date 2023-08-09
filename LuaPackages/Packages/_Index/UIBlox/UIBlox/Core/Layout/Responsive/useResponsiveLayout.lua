--!nocheck
--[[
	small hook to easily read a value from the grid config
	reads a single value from context with an optional kind

	-- usage example:
	local columns = useResponsiveLayout("columns", "experiences")
]]

local Responsive = script.Parent
local UIBlox = Responsive.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)

local ResponsiveLayoutContext = require(Responsive.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader = require(Responsive.ResponsiveLayoutConfigReader)

return function(name: string, kind: string?)
	local context = React.useContext(ResponsiveLayoutContext)
	return ResponsiveLayoutConfigReader.getValue({
		config = context.config,
		breakpoint = context.breakpoint,
		kind = kind or context.kind,
	}, name)
end
