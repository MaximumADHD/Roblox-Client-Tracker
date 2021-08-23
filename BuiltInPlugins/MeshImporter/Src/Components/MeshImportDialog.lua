local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization
local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local Separator = UI.Separator

local StudioUI = Framework.StudioUI
local StyledDialog = StudioUI.StyledDialog

local MeshImporterUI = require(Plugin.Src.Components.MeshImporterUI)

local getFFlagDevFrameworkStyledDialogFullBleed = require(Plugin.Src.Flags.getFFlagDevFrameworkStyledDialogFullBleed)

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
		Style = getFFlagDevFrameworkStyledDialogFullBleed() and "FullBleed" or nil,
	}, {
		Content = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
		}, {
			MeshImporterUI = Roact.createElement(MeshImporterUI, {
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
	}
end

return RoactRodux.connect(mapStateToProps, nil)(MeshImportDialog)
