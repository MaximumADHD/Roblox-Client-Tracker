local root = script:FindFirstAncestor("root")

local Roact = require(root.Packages.Roact)
local RoactRodux = require(root.Packages.RoactRodux)

local constants = require(root.src.constants)

local SetEnabled = require(root.src.Actions.SetEnabled)

local ScreenSelect = require(root.src.Components.ScreenSelect)

local Framework = require(root.Packages.Framework)

local UI = Framework.UI
local DockWidget = UI.DockWidget

local PluginBase = Roact.PureComponent:extend("PluginBase")

function PluginBase:render()
	local props = self.props

	return Roact.createElement(DockWidget, {
		Id = "CageMeshMigration",
		Title = constants.TITLE,
		Enabled = props.enabled,
		Size = constants.WINDOW_SIZE,
		MinSize = constants.WINDOW_SIZE,
		InitialDockState = Enum.InitialDockState.Float,
		ShouldRestore = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		OnClose = self.props.onClose,
		[Roact.Change.Enabled] = self.props.onClose,
	}, {
		ScreenSelect = Roact.createElement(ScreenSelect, {}),
	})
end

local function mapStateToProps(state, props)
	state = state or {}
	return {
		enabled = state.plugin.enabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		onClose = function()
			dispatch(SetEnabled(false))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PluginBase)
