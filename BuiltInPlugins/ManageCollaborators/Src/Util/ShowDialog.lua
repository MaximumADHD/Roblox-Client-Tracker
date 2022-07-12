local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices

local function showDialog(plugin, localization, dialog, props, children)
	local handle = nil
	local function closeDialog(props)
		if handle then
			Roact.unmount(handle)
		end
		if props.OnClose then
			props.OnClose()
		end
	end

	local dialogElement = ContextServices.provide({
		localization,
		MakeTheme(),
		plugin
	},{
		Roact.createElement(dialog, Cryo.Dictionary.join(props,{
			OnClose = function()
				closeDialog(props)
			end,
			OnButtonPressed = function(key)
				props.OnButtonPressed(key)
				closeDialog(props)
			end,
		}), children)
	})
	local parent = nil

	handle = Roact.mount(dialogElement,parent)

	return closeDialog
end

return showDialog