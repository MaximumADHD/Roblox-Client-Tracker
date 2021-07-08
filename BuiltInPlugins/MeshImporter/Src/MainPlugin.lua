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


	New Plugin Setup: Search for other TODOs to see other tasks to modify this template for
	your needs. All setup TODOs are tagged as New Plugin Setup:
]]

local main = script.Parent.Parent
local _Types = require(main.Src.Types)
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local ContextServices = Framework.ContextServices

local StudioUI = Framework.StudioUI
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local Components = main.Src.Components
local MeshImportDialog = require(Components.MeshImportDialog)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
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
		self:setState({
			enabled = false,
		})
	end

	self.onImport = function(assetSettings)
		self.onClose()
		local result = assetSettings:Import()
		result.Name = assetSettings.Name
		result.Parent = workspace
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
end

function MainPlugin:renderButtons(toolbar)
	local enabled = self.state.enabled

	return {
		Toggle = Roact.createElement(PluginButton, {
			Toolbar = toolbar,
			Active = enabled,
			Title = self.props.Localization:getText("Plugin", "Button"),
			Tooltip = self.props.Localization:getText("Plugin", "Description"),
			Icon = "rbxasset://textures/AssetImport/Import.png",
			OnClick = self.toggleEnabled,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function MainPlugin:render()
	local props = self.props
	local state = self.state
	local enabled = state.enabled

	return ContextServices.provide({
		props.Plugin,
		props.Mouse,
		props.Store,
		props.Theme,
		props.Localization,
		props.Analytics,
	}, {
		Toolbar = Roact.createElement(PluginToolbar, {
			Title = props.Localization:getText("Plugin", "Toolbar"),
			RenderButtons = function(toolbar)
				return self:renderButtons(toolbar)
			end,
		}),

		Dialog = enabled and Roact.createElement(MeshImportDialog, {
			Resizable = true,
			Title = "Import Mesh",
			OnClose = self.onClose,
			OnImport = self.onImport,
		})
	})
end

return MainPlugin
