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

local AssetImportService = game:GetService("AssetImportService")

local StudioUI = Framework.StudioUI
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local Components = main.Src.Components
local ImportPrompt = require(Components.ImportPrompt)
local MeshImportDialog = require(Components.MeshImportDialog)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.state = {
		hasImportSettings = false,
		promptRequested = false,
	}

	self.promptClosed = function(succeeded)
		assert(self.state.promptRequested)

		self:setState({
			hasImportSettings = succeeded,
			promptRequested = false,
		})
	end

	self.toggleEnabled = function()
		assert(not self.state.promptRequested, "Import prompt already requested")

		if self.state.hasImportSettings then
			self.onClose()
		else
			self:setState({
				promptRequested = true,
			})
		end
	end

	self.onClose = function()
		self:setState({
			hasImportSettings = false,
			promptRequested = false,
		})
	end

	self.onImport = function(assetSettings)
		self.onClose()
		AssetImportService:UploadCurrentMesh()
	end
end

function MainPlugin:renderButtons(toolbar)
	local active = self.state.hasImportSettings
	local enabled = not self.state.promptRequested

	return {
		Toggle = Roact.createElement(PluginButton, {
			Active = active,
			Enabled = enabled,
			Toolbar = toolbar,
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

	local hasImportSettings = state.hasImportSettings
	local shouldShowPrompt = not state.hasImportSettings and state.promptRequested

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

		Dialog = hasImportSettings and Roact.createElement(MeshImportDialog, {
			Resizable = true,
			Title = "Import Mesh",
			OnClose = self.onClose,
			OnImport = self.onImport,
		}),

		Prompt = shouldShowPrompt and Roact.createElement(ImportPrompt, {
			OnPromptClosed = self.promptClosed,
		}),
	})
end

return MainPlugin