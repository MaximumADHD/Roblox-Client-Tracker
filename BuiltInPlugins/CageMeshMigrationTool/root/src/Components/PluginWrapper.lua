local root = script:FindFirstAncestor("root")

local Roact = require(root.Packages.Roact)
local RoactRodux = require(root.Packages.RoactRodux)

local constants = require(root.src.constants)

local SetEnabled = require(root.src.Actions.SetEnabled)
local SetCurrentScreen = require(root.src.Actions.SetCurrentScreen)
local SetMode = require(root.src.Actions.SetMode)

local Export = require(root.src.Thunks.Export)
local Test = require(root.src.Thunks.Test)
local Clean = require(root.src.Thunks.Clean)
local FixStiffness = require(root.src.Thunks.FixStiffness)

local Framework = require(root.Packages.Framework)

local ContextServices: any = Framework.ContextServices
local Plugin = ContextServices.Plugin

local UI = Framework.UI
local PluginButton = UI.PluginButton
local PluginToolbar = UI.PluginToolbar

local PluginWrapper = Roact.PureComponent:extend("PluginWrapper")

function PluginWrapper:render()
	local props = self.props

	local plugin = props.Plugin:get()

	return Roact.createElement(PluginToolbar, {
		Title = constants.TITLE,
		RenderButtons = function(toolbar)
			return {
				ImportBundle = Roact.createElement(PluginButton, {
					Title = "Import Bundle",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						props.setEnabled(true)
						props.setMode(constants.MODE.BUNDLE)
						props.setScreen(constants.SCREENS.INPUT_BUNDLE_ID)
					end,
				}),
				ImportHead = Roact.createElement(PluginButton, {
					Title = "Import Head",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						props.setEnabled(true)
						props.setMode(constants.MODE.HEAD)
						props.setScreen(constants.SCREENS.INPUT_HEAD_ID)
					end,
				}),
				ImportAccessory = Roact.createElement(PluginButton, {
					Title = "Import Accessory",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						props.setEnabled(true)
						props.setMode(constants.MODE.ACCESSORY)
						props.setScreen(constants.SCREENS.INPUT_ACCESSORY_ID)
					end,
				}),
				Export = Roact.createElement(PluginButton, {
					Title = "Export",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						props.export(plugin)
					end,
				}),
				Clean = Roact.createElement(PluginButton, {
					Title = "Clean",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						props.clean()
					end,
				}),
				Test = Roact.createElement(PluginButton, {
					Title = "Test",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						props.test()
					end,
				}),
				FixStiffness = Roact.createElement(PluginButton, {
					Title = "Fix Stiffness",
					Toolbar = toolbar,
					Active = false,
					OnClick = function()
						props.fixStiffness()
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
		setScreen = function(screen)
			dispatch(SetCurrentScreen(screen))
		end,
		setEnabled = function(enabled)
			dispatch(SetEnabled(enabled))
		end,
		setMode = function(mode)
			dispatch(SetMode(mode))
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
