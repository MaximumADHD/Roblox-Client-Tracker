--[[
	A Roact wrapper for the PluginMenu API.

	Props:
		table Actions = The set of actions to send to MakePluginMenu.
		function OnMenuOpened() = A callback for when the context menu has successfully opened.
]]
local FFlagAnimationClipEditorWithContext = game:GetFastFlag("AnimationClipEditorWithContext")

-- HttpService is included for GenerateGUID
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local MakePluginMenu = require(Plugin.Src.Util.MakePluginMenu)
local MakePluginMenuDeprecated = require(Plugin.Src.Util.MakePluginMenu_deprecated)

local GetFFlagRefactorMenus = require(Plugin.LuaFlags.GetFFlagRefactorMenus)

local ContextMenu = Roact.PureComponent:extend("ContextMenu")

function ContextMenu:showMenu()
	local props = self.props
	local actions = props.Actions
	local plugin = props.Plugin:get()

	props.OnMenuOpened()
	if GetFFlagRefactorMenus() then
		MakePluginMenu(plugin, actions)
	else
		MakePluginMenuDeprecated(plugin, HttpService:GenerateGUID(), actions)
	end
end

function ContextMenu:didMount()
	self:showMenu()
end

function ContextMenu:didUpdate()
	self:showMenu()
end

function ContextMenu:render()
	return nil
end

if FFlagAnimationClipEditorWithContext then
	ContextMenu = withContext({
		Plugin = ContextServices.Plugin,
	})(ContextMenu)
else
	ContextServices.mapToProps(ContextMenu, {
		Plugin = ContextServices.Plugin,
	})
end


return ContextMenu