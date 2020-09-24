local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local EditPivotEvents = require(Plugin.Src.Utility.EditPivotEvents)
local EditPivotSession = require(Plugin.Src.RoduxComponents.EditPivotSession)

local canAcceptEvents = require(Plugin.Src.Utility.canAcceptEvents)

local ButtonToEventMapping = {
	ClearPivot = "onClearPivot",
	SetGeometry = "onSelectGeometry",
	SetSurface = "onSelectSurface",
	SetPart = "onSelectPart",
	SetModel = "onSelectModel",
}

local EditPivotPlugin = Roact.PureComponent:extend("EditPivotPlugin")

function EditPivotPlugin:init()
	self:setState({
		active = false,
	})

	self.toggleActive = function()
		self:setState({
			active = not self.state.active,
		})
	end

	self._editPivotEvents = EditPivotEvents.new()
end

function EditPivotPlugin:didMount()
	self._deactivatedConnection = self.props.Plugin.plugin.Deactivation:Connect(function()
		self:setState({
			active = false,
		})
	end)
end

function EditPivotPlugin:willUnmount()
	self._deactivatedConnection:Disconnect()
end

function EditPivotPlugin:willUpdate(nextProps, nextState)
	-- Must activate the plugin every time we transition from inactive -> active
	if nextState.active and not self.state.active then
		self.props.Plugin.plugin:Activate(true)
	end
end

function EditPivotPlugin:render()
	return Roact.createFragment({
		Toolbar = Roact.createElement(StudioUI.PluginToolbar, {
			Title = "Pivot",
			RenderButtons = function(toolbar)
				local buttons = {}

				-- Main toggle button
				buttons.MainButton = Roact.createElement(StudioUI.PluginButton, {
					Toolbar = toolbar,
					Title = "EditPivot",
					Tooltip = "",
					Icon = "", -- C++ code is source of truth for Tooltip & Icon
					Active = self.state.active,
					OnClick = self.toggleActive,
				})

				-- Other oneshot buttons
				for buttonIdentifier, eventName in pairs(ButtonToEventMapping) do
					buttons[buttonIdentifier] =
						Roact.createElement(StudioUI.PluginButton, {
							Toolbar = toolbar,
							Title = buttonIdentifier,
							Tooltip = "",
							Icon = "", -- C++ code is source of truth for Tooltip & Icon
							Active = false,
							Enabled = self.state.active and self.props.buttonsEnabled,
							OnClick = function()
								self._editPivotEvents[eventName]:Fire()
							end,
						})
				end
				return buttons
			end,
		}),

		-- The session represents one activation of the plugin
		Session = self.state.active and Roact.createElement(EditPivotSession, {
			Events = self._editPivotEvents,
		}),
	})
end

ContextServices.mapToProps(EditPivotPlugin, {
	Plugin = ContextServices.Plugin,
})

local function mapStateToProps(state, _)
	return {
		buttonsEnabled = canAcceptEvents(state),
	}
end

return RoactRodux.connect(mapStateToProps, nil)(EditPivotPlugin)