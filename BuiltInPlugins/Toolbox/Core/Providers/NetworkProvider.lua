local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local networkInterfaceKey = require(Plugin.Core.Keys.networkInterfaceKey)

local NetworkProvider = Roact.PureComponent:extend("NetworkProvider")

function NetworkProvider:init(props)
	self._context[networkInterfaceKey] = props.networkInterface
end

function NetworkProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return NetworkProvider
