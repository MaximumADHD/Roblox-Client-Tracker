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

local FFlagPluginManagementRemoveUILibrary = game:GetFastFlag("PluginManagementRemoveUILibrary")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Cryo = require(Plugin.Packages.Cryo)
local PluginInstalledStatus = require(Plugin.Src.Constants.PluginInstalledStatus)
-- Clean up with FFlagPluginManagementRemoveUILibrary
local UILibrary = require(Plugin.Packages.UILibrary)
local StyledDialog = UILibrary.Component.StyledDialog
local withLocalization = UILibrary.Localizing.withLocalization

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local StudioUI = require(Framework.StudioUI)
local Localization = ContextServices.Localization
local FrameworkDialog = StudioUI.StyledDialog


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
	-- wait for some information to exist before showing the dialog
	local hasDataLoaded = self.state.hasDataLoaded

	if FFlagPluginManagementRemoveUILibrary then
		local localization = self.props.Localization
		local onClose = self.props.OnClose
		local onButtonPressed = self.props.OnButtonClicked

		return hasDataLoaded and Roact.createElement(FrameworkDialog, {
			Title = localization:getText("DialogTitle", "InstallPlugin"),
			Buttons = {
				{
					Key = true,
					Text = localization:getText("Dialog", "Ok"),
					Style = "RoundPrimary",
				},
			},
			Resizable = false,
			MinContentSize = Vector2.new(400, 120),
			OnButtonPressed = onButtonPressed,
			OnClose = onClose,
		}, self.props[Roact.Children])
	else
		return withLocalization(function(localization)
			local defaults = {
				Size = DEFAULT_DIALOG_SIZE,
				Buttons = {
					{
						Key = true,
						Text = localization:getText("Dialog", "Ok"),
						Style = "Primary",
						Active = false,
					},
				},
			}

			local newProps = Cryo.Dictionary.join(defaults, self.props, {
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

			return hasDataLoaded and Roact.createElement(StyledDialog, newProps, self.props[Roact.Children])
		end)
	end
end

if FFlagPluginManagementRemoveUILibrary then
	ContextServices.mapToProps(InstallationDialog, {
		Localization = ContextServices.Localization,
	})
end


return RoactRodux.connect(function(state, props)
	local targetPluginId = props.pluginId
	return {
		info = state.PluginInfo.plugins[targetPluginId],
	}
end)(InstallationDialog)
