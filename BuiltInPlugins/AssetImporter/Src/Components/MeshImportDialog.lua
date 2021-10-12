local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local Util = Framework.Util
local StyleModifier = Util.StyleModifier

local UI = Framework.UI
local Pane = UI.Pane
local Separator = UI.Separator

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local AssetImporterUI = require(Plugin.Src.Components.AssetImporterUI)

local getFFlagDevFrameworkStyledDialogFullBleed = require(Plugin.Src.Flags.getFFlagDevFrameworkStyledDialogFullBleed)

local MeshImportDialog = Roact.PureComponent:extend("MeshImportDialog")

function MeshImportDialog:init()
	self.onButtonPressed = function(key)
		if key == "Cancel" then
			self.props.OnClose()
		elseif key == "Import" then
			local importEnabled = self.props.SettingsCheckedCount ~= 0
			if importEnabled then
				self.props.OnImport(self.props.AssetSettings)
			end
		end
	end
end

function MeshImportDialog:render()
	local props = self.props
	local localization = props.Localization

	local dialogWidth = 600
	local dialogHeight = 500

	local importEnabled = props.SettingsCheckedCount ~= 0

	return Roact.createElement(StyledDialog, {
		Enabled = true,
		MinContentSize = Vector2.new(dialogWidth, dialogHeight),
		Modal = false,
		Resizable = true,
		Title = props.Title,
		Buttons = {
			{ Key = "Cancel", Text = localization:getText("Plugin", "Cancel") },
			{ Key = "Import", Text = localization:getText("Plugin", "Import"), Style = "RoundPrimary",
				StyleModifier = not importEnabled and StyleModifier.Disabled or nil},
		},
		OnClose = props.OnClose,
		OnButtonPressed = self.onButtonPressed,
		Style = getFFlagDevFrameworkStyledDialogFullBleed() and "FullBleed" or nil,
	}, {
		Content = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
		}, {
			AssetImporterUI = Roact.createElement(AssetImporterUI, {
				LayoutOrder = 1,
			}),
			Separator = Roact.createElement(Separator, {
				DominantAxis = Enum.DominantAxis.Width,
				LayoutOrder = 2,
			}),
		})
	})
end

MeshImportDialog = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(MeshImportDialog)

local function mapStateToProps(state)
	return {
		AssetSettings = state.assetSettings,
		SettingsCheckedCount = state.settingsCheckedCount
	}
end

return RoactRodux.connect(mapStateToProps, nil)(MeshImportDialog)
