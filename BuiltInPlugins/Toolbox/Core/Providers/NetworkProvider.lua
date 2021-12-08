local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Keys = require(Plugin.Core.Util.Keys)

local NetworkProvider = Roact.PureComponent:extend("NetworkProvider")

function NetworkProvider:init(props)
	self._context[Keys.networkInterface] = props.networkInterface
end

function NetworkProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return NetworkProvider
