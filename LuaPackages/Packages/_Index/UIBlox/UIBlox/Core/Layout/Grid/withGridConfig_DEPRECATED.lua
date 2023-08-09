--[[
	small utility to easily read values from the grid config
	looks for a set of values (with defaults) in the current breakpoint/kind

	-- in a :render() method of a component
	return withGridConfig_DEPRECATED({
		-- the provided default will be used if the value can't be found
		columns = DEFAULT_COLUMNS,
		gutter = DEFAULT_GUTTER,
	})(function(gridConfig)
		-- gridConfig will contain the values at the same keys
		local gridColumns = gridConfig.columns
		...
	end)
]]

local Grid = script.Parent
local Responsive = Grid.Parent.Responsive
local UIBlox = Grid.Parent.Parent.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local ResponsiveLayoutContext = require(Responsive.ResponsiveLayoutContext)
local ResponsiveLayoutConfigReader = require(Responsive.ResponsiveLayoutConfigReader)

return function(requested, kind)
	return function(renderCallback)
		return Roact.createElement(ResponsiveLayoutContext.Consumer, {
			render = function(context)
				local values = {}
				for key, default in pairs(requested) do
					values[key] = ResponsiveLayoutConfigReader.getValue({
						config = context.config,
						breakpoint = context.breakpoint,
						kind = kind or context.kind,
					}, key)
					if values[key] == nil then
						values[key] = default
					end
				end
				return renderCallback(values)
			end,
		})
	end
end
