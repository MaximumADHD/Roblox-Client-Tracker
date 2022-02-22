local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Keys = require(Plugin.Core.Util.Keys)

local NetworkProvider = Roact.PureComponent:extend("NetworkProvider")

function NetworkProvider:init(props)
	self._context[Keys.networkInterface] = props.networkInterface
end

function NetworkProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return NetworkProvider
