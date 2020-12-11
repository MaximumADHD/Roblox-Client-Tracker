--[[
	A dialog which can appear separate from the main window.
	Used for warnings or errors.

	This Dialog will render its Roact children inside the window.

	Props:
		Plugin plugin = A reference to the Plugin constant, so that
			this component can create the Dialog widget.
		string TitleKey = The localization key for the title of the widget.
		Vector2 Size = An optional override size for the widget.
]]

local DEFAULT_DIALOG_SIZE = Vector2.new(400, 200)
local BORDER_PADDING = 20

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.SrcDeprecated.Util.Constants)

local UILibrary = require(Plugin.UILibrary)
local StyledDialog = UILibrary.Component.StyledDialog

local MainProvider = require(Plugin.SrcDeprecated.Context.MainProvider)
local Theme = require(Plugin.SrcDeprecated.Util.Theme)
local Localization = UILibrary.Studio.Localization
local DevelopmentReferenceTable = Plugin.SrcDeprecated.Resources.DevelopmentReferenceTable
local TranslationReferenceTable = Plugin.SrcDeprecated.Resources.TranslationReferenceTable

local BlockingDialog = Roact.PureComponent:extend("BlockingDialog")

function BlockingDialog:init(initialProps)
	assert(initialProps.plugin ~= nil, "BlockingDialog requires a Plugin.")

	self.theme = Theme.new()

	self.localization = Localization.new({
		pluginName = Constants.PLUGIN_NAME,
		stringResourceTable = DevelopmentReferenceTable,
		translationResourceTable = TranslationReferenceTable,
	})
end

function BlockingDialog:render()
	local props = self.props

	local theme = self.theme
	local localization = self.localization
	local plugin = props.plugin
	local titleKey = props.TitleKey or "Error"

	local newProps = Cryo.Dictionary.join(props, {
		Resizable = false,
		BorderPadding = BORDER_PADDING,
		ButtonPadding = Constants.PROMPT_BUTTON_PADDING,
		ButtonHeight = Constants.PROMPT_BUTTON_SIZE.Y,
		ButtonWidth = Constants.PROMPT_BUTTON_SIZE.X,
		TextSize = theme.values.PluginTheme.dialogTheme.textSize,
		Title = localization:getText("Title", titleKey),
	})
	newProps.Size = newProps.Size or DEFAULT_DIALOG_SIZE
	newProps.Buttons = newProps.Buttons or {
		{Key = true, Text = localization:getText("Dialog", "Ok"), Style = "Primary"},
	}

	return Roact.createElement(MainProvider, {
		theme = theme,
		plugin = plugin,
		localization = localization,
		mouse = plugin:GetMouse(),
		focusGui = {},
	}, {
		Dialog = Roact.createElement(StyledDialog, newProps),
	})
end

return BlockingDialog
