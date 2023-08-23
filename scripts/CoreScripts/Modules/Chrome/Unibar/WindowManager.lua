local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local useChromeWindowItems = require(script.Parent.Parent.Hooks.useChromeWindowItems)
local WindowHost = require(script.Parent.ComponentHosts.WindowHost)

type Array<T> = { [number]: T }
type Table = { [any]: any }

return function(props)
	-- Tree of window items to display
	local windowItems = useChromeWindowItems()

	local children: Table = {} -- Windows to be rendered

	for k, item in windowItems do
		children[("window_" .. item.integration.id)] = React.createElement(WindowHost, {
			position = item.integration.startingWindowPosition,
			integration = item,
		})
	end

	return children
end
