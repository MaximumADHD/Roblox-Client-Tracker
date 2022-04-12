--[[
	A wrapper component for the MaterialGrid
    To add MaterialController into props explicitely, and thus, enable getDerivedStateFromProps working correctly
]]--
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Components = Plugin.Src.Components

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)

local MaterialGrid = require(Components.MaterialGrid)

local MaterialGridWrapper = Roact.PureComponent:extend("MaterialGridWrapper")

function MaterialGridWrapper:render()
    return Roact.createElement(MaterialGrid, self.props)
end

MaterialGridWrapper = withContext({
	MaterialController = MaterialController,
})(MaterialGridWrapper)

return MaterialGridWrapper
