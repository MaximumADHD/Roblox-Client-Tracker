--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.

		New Plugin Setup: When creating a plugin, commit this template
		first with /packages in a secondary pull request.

		A common workaround for the large diffs from Packages/_Index is to put
		the Packages/_Index changes into a separate PR like this:
			master <- PR <- Packages PR
		Get people to review *PR*, then after approvals, merge *Packages PR*
		into *PR*, and then *PR* into master.

]]
local main = script.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)

local Framework = require(main.Packages.Framework)
local FrameworkUtil = Framework.Util
local StudioUI = Framework.StudioUI

local Dialog = StudioUI.Dialog

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store

local MainReducer = require(main.Src.Reducers.MainReducer)
local MakeTheme = require(main.Src.Resources.MakeTheme)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local Components = main.Src.Components
local PermissionsView = require(Components.PermissionsView)
local SavetoRobloxView = require(Components.SaveToRobloxView)

local TeamCreateService = game:GetService("TeamCreateService")

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

local Networking = require(main.Src.Networking.Networking)
local GroupMetadataController = require(main.Src.Controllers.GroupMetadataController)
local GroupRolePermissionsController = require(main.Src.Controllers.GroupRolePermissionsController)
local GamePermissionsController = require(main.Src.Controllers.GamePermissionsController)
local GameMetadataController = require(main.Src.Controllers.GameMetadataController)
local SocialController = require(main.Src.Controllers.SocialController)

local ResetStore = require(main.Src.Actions.ResetStore)

function MainPlugin:init(props)
	self.plugin = Plugin.new(props.Plugin)
		
	self.state = {
		enabled = false,
	}

	self.toggleEnabled = function()
		self:setState(function(state)
			return {
				enabled = not state.enabled,
			}
		end)
	end

	self.onClose = function()
		-- Clear the store so that we reload when we open
		self.store:dispatch(ResetStore())

		self:setState({
			enabled = false,
		})
	end

	self.onRestore = function(enabled)	
		self:setState({
			enabled = enabled
		})
	end

	self.onWidgetEnabledChanged = function(widget)
		self:setState({
			enabled = widget.Enabled
		})
	end
	
	local thunkContextItems = {}
	
	local networking = Networking.new()
	local groupMetadataController = GroupMetadataController.new(networking:get())
	local groupRolePermisionsController = GroupRolePermissionsController.new(networking:get())
	local gamePermissionsController = GamePermissionsController.new(networking:get())
	local gameMetadataController = GameMetadataController.new(networking:get())
	local socialController = SocialController.new(networking:get())
	
	thunkContextItems.networking = networking:get()
	thunkContextItems.groupMetadataController = groupMetadataController
	thunkContextItems.groupRolePermisionsController = groupRolePermisionsController
	thunkContextItems.gamePermissionsController = gamePermissionsController
	thunkContextItems.gameMetadataController = gameMetadataController
	thunkContextItems.socialController = socialController
	
	local thunkWithArgsMiddleWare = FrameworkUtil.ThunkWithArgsMiddleware(thunkContextItems)
	local middlewares = { thunkWithArgsMiddleWare }
	
	self.store = Rodux.Store.new(MainReducer, nil, middlewares)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "ManageCollaborators",
	})

	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})

	TeamCreateService.ToggleManageCollaborators:Connect(self.toggleEnabled)
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	
	local enabled = state.enabled
	local isPublishedGame = game.GameId ~= 0
	
	local style = MakeTheme()

	return ContextServices.provide({
		self.plugin,
		Store.new(self.store),
		Mouse.new(props.Plugin:getMouse()),
		style,
		self.localization,
		self.analytics,
	}, {
		Dialog = Roact.createElement(Dialog, {
			CreateWidgetImmediately = true,
			Enabled = enabled,
			Modal = true,
			Title = self.localization:getText("Plugin", "Title"),
			Size = Vector2.new(800, 571),
			OnClose = self.onClose,
		}, {
			PermissionsView = isPublishedGame and Roact.createElement(PermissionsView, {
				CloseWidget = self.onClose,
				Plugin = self.plugin,
				Enabled = enabled
			}) or nil,
			
			SaveToRobloxView = not isPublishedGame and Roact.createElement(SavetoRobloxView, {
				CloseWidget = self.onClose
			})
		})
	})
end

return MainPlugin
