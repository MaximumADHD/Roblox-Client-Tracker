--[[
	Gets info for all components in the DevFramework.
	Stores this info in the Components reducer.
]]

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local SetComponents = require(Plugin.Src.Actions.SetComponents)

return function()
	return function(store)
		local components, scripts, tests = Framework.Examples.getComponents()

		store:dispatch(SetComponents(components, scripts, tests))
	end
end
