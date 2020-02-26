--[[
	A dialog which can appear separate from the main window.
	Used for warnings or errors.

	This Dialog will render its Roact children inside the window.

	Props:
		Vector2 Size = An optional override size for the widget.
]]

local DEFAULT_DIALOG_SIZE = Vector2.new(400, 217)
local BORDER_PADDING = 24
local PROMPT_BUTTON_PADDING = 2
local PROMPT_BUTTON_SIZE = Vector2.new(120, 32)
local TEXT_SIZE = 16

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)
local UILibrary = require(Plugin.Packages.UILibrary)
local StyledDialog = UILibrary.Component.StyledDialog
local withLocalization = UILibrary.Localizing.withLocalization

local InstallationDialog = Roact.PureComponent:extend("InstallationDialog")
function InstallationDialog:init()
	self.state = {
		hasDataLoaded = false,
	}

end

function InstallationDialog:didUpdate()
	-- Creating a QWidget yields the current thread, but since we have a RoactRodux connection
	-- we must pass these props from the connection into state.
	local pluginInfo = self.props.info
	local installStatus = pluginInfo.installStatus
	local hasDataLoaded = installStatus ~= PluginInstalledStatus.UNKNOWN
	local dialogNotYetCreated = self.state.hasDataLoaded == false

	if hasDataLoaded and dialogNotYetCreated then
		-- spawn this update to make sure that the creation of the QWidget
		-- does not happen within the bounds of a Rodux NoYield.
		spawn(function()
			self:setState({
				hasDataLoaded = true,
			})
		end)
	end
end

function InstallationDialog:render()
	-- TO DO : convert this branch of code to use Context2
	return withLocalization(function(localization)

		local newProps = Cryo.Dictionary.join(self.props, {
			Resizable = false,
			BorderPadding = BORDER_PADDING,
			ButtonPadding = PROMPT_BUTTON_PADDING,
			ButtonHeight = PROMPT_BUTTON_SIZE.Y,
			ButtonWidth = PROMPT_BUTTON_SIZE.X,
			TextSize = TEXT_SIZE,

			Title = localization:getText("DialogTitle", "InstallPlugin"),

			-- unmentioned included props
			-- OnButtonClicked,
			-- OnClose,

			-- remove unnecessary props
			[Roact.Children] = Cryo.None,
		})
		newProps.Size = newProps.Size or DEFAULT_DIALOG_SIZE
		newProps.Buttons = newProps.Buttons or {
			{
				Key = true,
				Text = localization:getText("Dialog", "Ok"),
				Style = "Primary",
				Active = false,
			},
		}

		-- wait for some information to exist before showing the dialog
		local hasDataLoaded = self.state.hasDataLoaded
		return hasDataLoaded and Roact.createElement(StyledDialog, newProps, self.props[Roact.Children])
	end)
end

return RoactRodux.connect(function(state, props)
	local targetPluginId = props.pluginId
	return {
		info = state.PluginInfo.plugins[targetPluginId],
	}
end)(InstallationDialog)
