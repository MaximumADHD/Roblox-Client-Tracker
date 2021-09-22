--[[
	The main plugin component.
	Consists of the PluginWidget, SliceEditor
	(container for all 9SliceEditor components), and Roact tree.

	Props:
		Plugin: plugin -- The plugin DataModel
]]

local main = script.Parent.Parent
local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)
local Constants = require(main.Src.Util.Constants)

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse
local MakeTheme = require(main.Src.Resources.MakeTheme)

local TranslationDevelopmentTable = main.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = main.Src.Resources.Localization.TranslationReferenceTable

local SliceEditor = require(main.Src.Components.SliceEditorMain)
local AlertDialog = require(main.Src.Components.AlertDialog)

local StudioUI = Framework.StudioUI
local Dialog = StudioUI.Dialog

local GuiService = game:GetService("GuiService")

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	-- initializes states for MainPlugin

	self.state = {
		-- Main 9-Slice Editor window visible
		enabled = false,

		-- String if we should show an alert, otherwise nil
		showingAlertTitleKey = nil,
		showingAlertMessageKey = nil,
	}

	self.showAlertDialog = function(title, message, messageReplacements)
		self:setState({
			showingAlertTitleKey = title,
			showingAlertMessageKey = message,
			showingAlertMessageReplacements = messageReplacements,
		})
	end

	self.closeAlertDialog = function()
		self:setState({
			showingAlertTitleKey = Roact.None,
			showingAlertMessageKey = Roact.None,
			showingAlertMessageReplacements = Roact.None,
		})
	end

	self.onClose = function()
		self:setState({
			enabled = false,
		})
	end

	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "9SliceEditor",
	})

	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})

	self.onSliceCenterEditButtonClicked = function(selectedInstance)
		if not (selectedInstance:IsA("ImageLabel") or selectedInstance:IsA("ImageButton")) then
			self.showAlertDialog("ErrorMessageTitle", "InvalidInstanceErrorMessage")
			return
		end
	
		if not selectedInstance.IsLoaded then
			self.showAlertDialog("ErrorMessageTitle", "ImageLoadedErrorMessage", {
				contentId = selectedInstance.Image,
			})
			return
		end

		local pixelSize = selectedInstance.ContentImageSize
		if not pixelSize or pixelSize == Vector2.new(0, 0) then
			self.showAlertDialog("ErrorMessageTitle", "ImageContentDimensionsErrorMessage")
			return
		end

		if self.state.enabled then
			-- If the editor window is already open, do nothing.
			return
		end

		self:setState({
			selectedInstance = selectedInstance,
			pixelDimensions = pixelSize,
			enabled = true,
		})
	end

	self.onOpen9SliceEditorConnection = GuiService.Open9SliceEditor:Connect(self.onSliceCenterEditButtonClicked)
end

function MainPlugin:willUnmount()
	if self.onOpen9SliceEditorConnection then
		self.onOpen9SliceEditorConnection:Disconnect()
		self.onOpen9SliceEditorConnection = nil
	end
end

function MainPlugin:render()
	-- Renders the MainPlugin as a Dialog with SliceEditor container
	local props = self.props
	local state = self.state
	local plugin = props.Plugin
	local enabled = state.enabled

	return ContextServices.provide({
		Plugin.new(plugin),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
		self.analytics,
	}, {
		MainWidget = enabled and Roact.createElement(Dialog, {
			Enabled = enabled,
			Title = self.localization:getText("Plugin", "Name"),
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Size = Constants.DIALOG_SIZE,
			Resizable = false,
			OnClose = self.onClose,
		}, {
			SliceEditor = enabled and Roact.createElement(SliceEditor, {
				onClose = self.onClose,
				pixelDimensions = state.pixelDimensions,
				selectedObject = state.selectedInstance,
			}),
		}),

		AlertDialog = state.showingAlertTitleKey and Roact.createElement(AlertDialog, {
			Enabled = true,
			TitleKey = state.showingAlertTitleKey,
			MessageKey = state.showingAlertMessageKey,
			MessageKeyFormatTable = state.showingAlertMessageReplacements,
			OnClose = self.closeAlertDialog, 
		}),
	})
end

return MainPlugin
