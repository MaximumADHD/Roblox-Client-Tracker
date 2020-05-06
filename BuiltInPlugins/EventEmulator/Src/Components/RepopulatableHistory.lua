local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)

local Components = Plugin.Src.Components
local RepopulatableHistoryItem = require(Components.RepopulatableHistoryItem)

local RepopulatableHistory = Roact.PureComponent:extend("RepopulatableHistory")

-- TODO: Allow RHIs to be stored in a reducer and retrieve them here
-- sworzalla 4/13/20
local getItems = function()
	local items = {
		Roact.createElement(RepopulatableHistoryItem)
	}
	return items
end

function RepopulatableHistory:render()
	local items = getItems()

	return Roact.createFragment(items)
end

ContextServices.mapToProps(RepopulatableHistory,{
	Theme = ContextServices.Theme,
})

return RepopulatableHistory