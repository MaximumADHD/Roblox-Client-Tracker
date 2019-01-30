local paths = require(script.Parent.Parent.Paths)

local GUI = {}

GUI.RoactHandle = nil

function GUI.create(pluginGui, mouse)
	if nil == GUI.RoactHandle then
		GUI.RoactHandle = paths.Roact.mount(paths.Roact.createElement(paths.ComponentRootApp, { Mouse = mouse }), pluginGui, "Morpher") -- mount is first time set-up of ui
	end
end

function GUI.destroy()
	if nil ~= GUI.RoactHandle then
		paths.Roact.unmount(GUI.RoactHandle)
		GUI.RoactHandle = nil
	end
end

return GUI