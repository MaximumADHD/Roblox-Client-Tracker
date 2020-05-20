-- TODO (awarwick) 4/27/2020 Remove with FFlagGameSettingsNetworkRefactor
--[[
	Packs common Settings page features into a higher-order component.
		-Roact-Rodux connection
		-List layout

	Usage:
		local SettingsPage = createSettingsPage(name, loadValuesToProps, dispatchChanges)
		name: The name of the settings page to create.
		loadValuesToProps: returns a table with prop names as keys. Loads settings values.
			A getValue(propName) function is passed, which can be used
			to easily get the value if no special logic is required.
		dispatchChanges: returns a table mapping prop names to dispatch functions.
			A setValue(propName) function is passed and can be used to
			easily set the value if no special logic is required.
			setValue returns function(value) that dispatches {propName = value}
			to the Settings store.

		Once the SettingsPage instance is created, use Roact.createElement(SettingsPage)
		Props:
			ContentHeightChanged = props.ContentHeightChanged, (Required, passed through)
			SetScrollbarEnabled = props.SetScrollbarEnabled, (Required, passed through)
			LayoutOrder = props.LayoutOrder, (Required, passed through)

			function Content = A function which accepts this component as a parameter and returns
				a table of Roact elements, created using this component's props.
			bool AddLayout = Whether or not to add a default UIListLayout to the page contents.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)
local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local ContextServices = require(Plugin.Framework.ContextServices)
local DialogProvider = require(Plugin.Src.Providers.DialogProviderContextItem)

local settingFromState = require(Plugin.Src.Networking.settingFromState)
local AddChange = require(Plugin.Src.Actions.AddChange)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

local function createSettingsPage(name, loadValuesToProps, dispatchChanges)
	local SettingsPage = Roact.Component:extend(name)

	function SettingsPage:init()
		self.setPageScrollingDisabled = function(elementSelected)
			self.props.SetScrollbarEnabled(not elementSelected)
		end
	end

	function SettingsPage:DEPRECATED_render()
		return withLocalization(function(localized)
			return withTheme(function(theme)
				local children = self.props.Content and self.props.Content(self, localized, theme) or {}

				return Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					LayoutOrder = self.props.LayoutOrder,
				}, Cryo.Dictionary.join(children, {
					Layout = self.props.AddLayout and Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, DEPRECATED_Constants.ELEMENT_PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,

						[Roact.Change.AbsoluteContentSize] = function(rbx)
							if self.props.ContentHeightChanged then
								self.props.ContentHeightChanged(rbx.AbsoluteContentSize.y)
							end
						end,
					})
				}))
			end)
		end)
	end

	function SettingsPage:render()
		if not FFlagStudioConvertGameSettingsToDevFramework then
			return self:DEPRECATED_render()
		end

		local props = self.props
		local theme = props.Theme:get("Plugin")
		local localization = props.Localization
		local mouse = props.Mouse

		local children = props.Content and props.Content(self, localization, theme, mouse) or {}

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			LayoutOrder = props.LayoutOrder,
		}, Cryo.Dictionary.join(children, {
			Layout = props.AddLayout and Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, DEPRECATED_Constants.ELEMENT_PADDING),
				SortOrder = Enum.SortOrder.LayoutOrder,

				[Roact.Change.AbsoluteContentSize] = function(rbx)
					if props.ContentHeightChanged then
						props.ContentHeightChanged(rbx.AbsoluteContentSize.y)
					end
				end,
			})
		}))
	end

	if FFlagStudioConvertGameSettingsToDevFramework then
		ContextServices.mapToProps(SettingsPage, {
			Theme = ContextServices.Theme,
			Localization = ContextServices.Localization,
			Mouse = ContextServices.Mouse,
			Dialog = DialogProvider,
		})
	end

	if loadValuesToProps or dispatchChanges then
		SettingsPage = RoactRodux.connect(
			function(state, props)
				if not state then return end

				if loadValuesToProps then
					local getValue = function(propName)
						return settingFromState(state.Settings, propName)
					end

					return loadValuesToProps(getValue, state)
				end
			end,

			function(dispatch)
				if dispatchChanges then
					local setValue = function(propName)
						return function(value)
							dispatch(AddChange(propName, value))
						end
					end

					return dispatchChanges(setValue, dispatch)
				end
			end
		)(SettingsPage)
	end

	return SettingsPage
end

return createSettingsPage