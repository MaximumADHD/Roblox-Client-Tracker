--[[
	Provides a global Plugin object to context.
	The Plugin constructor expects a plugin instance, usually
	accessed from the 'plugin' global in the plugin's main script.

	Functions:
		get():
			Returns the plugin instance which was passed in Plugin.new.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local ContextItem = require(Framework.UI.ContextServices.ContextItem)
return ContextItem:createSimple("Plugin")
