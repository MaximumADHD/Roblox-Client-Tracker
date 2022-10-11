local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local Theme = require(Plugin.Src.Util.Theme)

local Cryo = require(Plugin.Packages.Cryo)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local function showDialog(plugin, localization, stylizer, mouse, dialogName, props)
	local handle = nil
	local function closeDialog(props)
		if handle then
			Roact.unmount(handle)
		end
		if props and props.OnClose then
			props.OnClose()
		end
	end

	local function onButtonPressed(key)
		if handle then
			Roact.unmount(handle)
		end
		if props.OnButtonPressed then
			props.OnButtonPressed(key)
		end
	end

	local theme = GetFFlagExtendPluginTheme() and stylizer or stylizer.PluginTheme

	local dialogElement = ContextServices.provide({
		Mouse = mouse,
		Localization = localization,
		Theme(), -- TODO: somehow pass the theme from stylizer (tried Stylizer.PluginTheme)
		Plugin = plugin,
	}, {
		Roact.createElement(
			dialogName,
			Cryo.Dictionary.join(props, {
				OnClose = function()
					closeDialog()
				end,
				OnButtonPressed = function(key)
					onButtonPressed(key)
				end,
			})
		),
	})
	handle = Roact.mount(dialogElement)

	return closeDialog
end

return showDialog
