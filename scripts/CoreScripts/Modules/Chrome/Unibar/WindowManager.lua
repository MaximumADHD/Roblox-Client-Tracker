local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local useChromeWindowItems = require(script.Parent.Parent.Hooks.useChromeWindowItems)

local WindowHost = require(script.Parent.ComponentHosts.WindowHost)

type Array<T> = { [number]: T }
type Table = { [any]: any }

local _integrations = require(script.Parent.Parent.Integrations)

return function(props)
	-- Tree of window items to display
	local windowItems = useChromeWindowItems()

	local children: Table = {} -- Windows to be rendered

	for k, item in windowItems do
		children[("window" .. k)] = React.createElement(WindowHost, {
			position = item.integration.startingWindowPosition,
			size = item.integration.startingWindowSize,
			integration = item,
		})
	end

	return children
end
