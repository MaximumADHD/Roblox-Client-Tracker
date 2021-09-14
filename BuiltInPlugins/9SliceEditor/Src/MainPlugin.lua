--[[
	The main plugin component.
	Consists of the PluginWidget, SliceEditor
	(container for all 9SliceEditor components), and Roact tree.

	Props:
		pixelDimensions (Vector2) -- dimensions of the image in pixels
		resetPlugHandle -- callback to set mainPlugin handle to nil when closed
		selectedObject -- selected object either an image label or an image button
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
local StudioUI = Framework.StudioUI
local Dialog = StudioUI.Dialog

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	-- initializes states for MainPlugin
	local selectedObject = props.selectedObject

	self:setState({
		enabled = true,
	})

	self.onClose = function()
		self:setState({
			enabled = false,
		})
		props.resetPluginHandle()
	end

	selectedObject.AncestryChanged:Connect(function()
		-- if the image object has been deleted, close the plugin window
		if not selectedObject:FindFirstAncestorOfClass("DataModel") then
			self.onClose()
		end
	end)

	self.localization = ContextServices.Localization.new({
		stringResourceTable = TranslationDevelopmentTable,
		translationResourceTable = TranslationReferenceTable,
		pluginName = "9SliceEditor",
	})

	self.analytics = ContextServices.Analytics.new(function()
		return {}
	end, {})
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
				pixelDimensions = props.pixelDimensions,
				selectedObject = props.selectedObject,
			}),
		}),
	})
end

return MainPlugin
