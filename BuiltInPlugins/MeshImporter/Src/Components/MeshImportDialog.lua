local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local MeshImporterUI = require(Plugin.Src.Components.MeshImporterUI)

local MeshImportDialog = Roact.PureComponent:extend("MeshImportDialog")

function MeshImportDialog:init()

	self.onButtonPressed = function(key)
		if key == "Cancel" then
			self.props.OnClose()
		elseif key == "Import" then
			self.props.OnImport(self.props.AssetSettings)
		end
	end
end

function MeshImportDialog:render()
	local props = self.props

	local dialogWidth = 600
	local dialogHeight = 500

	return Roact.createElement(StyledDialog, {
		Enabled = true,
		MinContentSize = Vector2.new(dialogWidth, dialogHeight),
		Modal = false,
		Resizable = true,
		Title = props.Title,
		Buttons = {
			{ Key = "Cancel", Text = "Cancel" },
			{ Key = "Import", Text = "Import", Style = "RoundPrimary" },
		},
		OnClose = props.OnClose,
		OnButtonPressed = self.onButtonPressed,
	}, {
		Content = Roact.createElement(MeshImporterUI),
	})
end

MeshImportDialog = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(MeshImportDialog)

local function mapStateToProps(state)
	return {
		AssetSettings = state.assetSettings,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(MeshImportDialog)
