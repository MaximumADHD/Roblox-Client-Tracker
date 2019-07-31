--[[
	Let the user select a universe to write this place into

	Allow the user to go back to publishing a new place
	Allow the user to pick a universe to overwrite a place in

]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Resources.Constants)

local Footer = require(Plugin.Src.Components.Footer)

-- TODO (kstephan) 2019/07/23 Completely rewrite this file because it's just a placeholder
return function(props)
	local onClose = props.OnClose

	return Roact.createElement(Footer, {
		OnClose = onClose,
		CancelActive = true,
		NextScreen = Constants.SCREENS.CREATE_NEW_GAME,
		NextScreenText  = "ButtonCreateNewGame"
	})
end
