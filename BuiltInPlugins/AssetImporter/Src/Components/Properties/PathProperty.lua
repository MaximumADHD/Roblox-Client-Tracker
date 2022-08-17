local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Images = require(Plugin.Src.Utility.Images)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Stylizer = ContextServices.Stylizer

local UI = Framework.UI
local TextInput2 = UI.TextInput2
local Tooltip = UI.Tooltip
local TruncatedTextLabel = UI.TruncatedTextLabel
local ThemeSwitcher = Framework.Style.ThemeSwitcher
local Decoration = UI.Decoration
local Button = UI.Button
local Pane = UI.Pane

local getFFlagEnableTexturePicker = require(Plugin.Src.Flags.getFFlagEnableTexturePicker)
local PickTextureFileWithPrompt = require(Plugin.Src.Thunks.PickTextureFileWithPrompt)

local PathProperty = Roact.PureComponent:extend("PathProperty")

local function getFilePickerImage()
	local theme = ThemeSwitcher.getThemeName()
	if theme == "Dark" or theme == "Default" then
		return Images.FILE_PICKER_DARK
	else
		return Images.FILE_PICKER_LIGHT
	end
end

function PathProperty:init()
	self.onTextureFilePickerButtonClicked = function()
		self.props.pickTextureFileWithPrompt(self.props.Instance, self.props.Name)
	end
end

function PathProperty:render()
	local props = self.props
	local path = props.Value
	local style = props.Stylizer
	local iconSize = style.PropertyView.IconSize
	local spacing = style.PropertyView.Spacing
	local labelOffset = iconSize + spacing
	return Roact.createElement(Pane, {
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
	}, {
		PathField = if props.Editable ~= nil and not props.Editable then Roact.createElement(TruncatedTextLabel, {
			Size = UDim2.new(1, -labelOffset, 1, 0),
			SuffixLength = 20,
			Text = if path ~= "" then path else props.Localization:getText("Properties", "NoFilePath"),
			TextXAlignment = Enum.TextXAlignment.Left,
		}, {
			Tooltip = Roact.createElement(Tooltip, {
				Text = props.Value,
			})
		}) else Roact.createElement(TextInput2, {
			OnTextChanged = props.OnSetItem,
			Size = UDim2.new(1, -labelOffset, 1, 0),
			Text = props.Value,
		}),
		TextureFilePickerButton = if getFFlagEnableTexturePicker() and props.AllowPickFile and path ~= "" then Roact.createElement(Button, {
			OnClick = self.onTextureFilePickerButtonClicked,
			LayoutOrder = props.LayoutOrder+1,
			Size = UDim2.new(0, labelOffset, 1, 0),
		}, {
			Icon = Roact.createElement(Decoration.Image, {
				Image = getFilePickerImage(),
			}),
		}) else nil,
	})
end

PathProperty = withContext({
	Stylizer = Stylizer,
})(PathProperty)

local function mapDispatchToProps(dispatch)
	return {
		pickTextureFileWithPrompt = function(settingsInstance, propertyName)
			dispatch(PickTextureFileWithPrompt(settingsInstance, propertyName))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(PathProperty)
