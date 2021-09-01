local root = script:FindFirstAncestor("root")

local Roact = require(root.lib.Roact)
local RoactRodux = require(root.lib.RoactRodux)

local constants = require(root.src.constants)

local SetEnabled = require(root.src.Actions.SetEnabled)
local Export = require(root.src.Thunks.Export)
local Test = require(root.src.Thunks.Test)
local Clean = require(root.src.Thunks.Clean)
local FixStiffness = require(root.src.Thunks.FixStiffness)

local DeveloperFramework = root.lib.DeveloperFramework

local ContextServices = require(DeveloperFramework.ContextServices)
local Plugin = ContextServices.Plugin

local StudioUI = require(DeveloperFramework.StudioUI)
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local PluginWrapper = Roact.PureComponent:extend("PluginWrapper")

function PluginWrapper:render()
	local props = self.props

	local plugin = props.Plugin:get()

	return Roact.createElement(PluginToolbar, {
		Title = constants.TITLE,
		RenderButtons = function(toolbar)
			return {
				Import = Roact.createElement(PluginButton, {
					Title = "Import",
					Toolbar = toolbar,
					Active = self.props.enabled,
					OnClick = function()
						self.props.setEnabled(not self.props.enabled)
					end,
				}),
				Export = Roact.createElement(PluginButton, {
					Title = "Export",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						self.props.export(plugin)
					end,
				}),
				Clean = Roact.createElement(PluginButton, {
					Title = "Clean",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						self.props.clean()
					end,
				}),
				Test = Roact.createElement(PluginButton, {
					Title = "Test",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						self.props.test()
					end,
				}),
				FixStiffness = Roact.createElement(PluginButton, {
					Title = "Fix Stiffness",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						self.props.fixStiffness()
					end,
				}),
			}
		end,
	})
end

PluginWrapper = ContextServices.withContext({
	Plugin = Plugin,
})(PluginWrapper)

local function mapStateToProps(state, props)
	state = state or {}
	return {
		enabled = state.plugin.enabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setEnabled = function(enabled)
			dispatch(SetEnabled(enabled))
		end,
		export = function(plugin)
			dispatch(Export(plugin))
		end,
		clean = function()
			dispatch(Clean())
		end,
		test = function()
			dispatch(Test())
		end,
		fixStiffness = function()
			dispatch(FixStiffness())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PluginWrapper)
