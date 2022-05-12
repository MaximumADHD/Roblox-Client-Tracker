--[[
	A prompt to confirm that the user wants to export a non accessory.
]]

local main = script.Parent.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Plugin = ContextServices.Plugin
local Localization = ContextServices.Localization

local PromptExportNonAccessory = Roact.PureComponent:extend("PromptExportNonAccessory")

function PromptExportNonAccessory:init()
	self.onClose = function()
		self.props.onCancel()
	end
end

function PromptExportNonAccessory:render()
	return Roact.createElement(StyledDialog, {
		Title = self.props.Localization:getText("DialogTitle", "ExportNonAccessory"),
		Buttons = {
			{
				Key = "Export",
				Text = self.props.Localization:getText("Dialog", "Export"),
				Style = "RoundPrimary",
			},
			{
				Key = "Cancel",
				Text = self.props.Localization:getText("Dialog", "Cancel"),
				Style = "Round",
			},
		},
		Resizable = false,
		MinContentSize = Vector2.new(0, 0),
		OnButtonPressed = function(key)
			if key == "Export" then
				self.props.onConfirm()
			else
				self.props.onCancel()
			end
		end,
		OnClose = self.props.onCancel,
	})
end

PromptExportNonAccessory = withContext({
	Plugin = Plugin,
	Localization = Localization,
})(PromptExportNonAccessory)

return PromptExportNonAccessory
