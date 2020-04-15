local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ComponentRootApp = require(Plugin.Src.Components.Avatar.RootApp)

local GUI = {}

GUI.RoactHandle = nil

function GUI.create(pluginGui, mouse)
	if nil == GUI.RoactHandle then
		GUI.RoactHandle = Roact.mount(Roact.createElement(ComponentRootApp, { Mouse = mouse }), pluginGui, "Morpher")
	end
end

function GUI.destroy()
	if nil ~= GUI.RoactHandle then
		Roact.unmount(GUI.RoactHandle)
		GUI.RoactHandle = nil
	end
end

return GUI