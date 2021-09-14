local FFlagPluginManagementWithContext = game:GetFastFlag("PluginManagementWithContext")
local Plugin = script.Parent.Parent.Parent.Parent

local PermissionsService = game:GetService("PermissionsService")

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local FitFrame = require(Plugin.Packages.FitFrame)
local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local UI = require(Plugin.Packages.Framework).UI

local SetPluginPermission = require(Plugin.Src.Thunks.SetPluginPermission)
local FluidFitTextLabel = require(Plugin.Src.Components.FluidFitTextLabel)

local PluginAPI2 = require(Plugin.Src.ContextServices.PluginAPI2)

local FitFrameVertical = FitFrame.FitFrameVertical
local Constants = require(Plugin.Src.Util.Constants)

local ScriptInjectionHolder = Roact.Component:extend("ScriptInjectionHolder")
local ToggleButton = UI.ToggleButton

local THEME_REFACTOR = require(Plugin.Packages.Framework).Util.RefactorFlags.THEME_REFACTOR

local CHECKBOX_PADDING = 8
local CHECKBOX_WIDTH = 16
local CONTENT_PADDING = 20

ScriptInjectionHolder.defaultProps = {
	scriptInjectionPermissions = {},
}

function ScriptInjectionHolder:init()
	self.frameRef = Roact.createRef()

	self.state = {
		frameWidth = 0,
	}

	self.onCheckboxActivated = function(permission)
		local apiImpl = self.props.API:get()
		local assetId = self.props.assetId
		return self.props.setPluginPermission(apiImpl, assetId, permission)
	end

	self.resizeFrame = function()
		local frameRef = self.frameRef.current
		if not frameRef then
			return
		end
		if self.state.frameWidth ~= frameRef.AbsoluteSize.X then
			self:setState({
				frameWidth = frameRef.AbsoluteSize.X,
			})
		end
	end
end

function ScriptInjectionHolder:didMount()
	self.resizeFrame()
end

function ScriptInjectionHolder:renderCheckbox(theme, index, permission)
	local isChecked = permission.allowed

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, CHECKBOX_WIDTH),
		LayoutOrder = index,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 8),
		}),

		ToggleButton = THEME_REFACTOR and Roact.createElement(ToggleButton, {
			Disabled = false,
			LayoutOrder = 1,
			OnClick = function()
				self.onCheckboxActivated(permission)
			end,
			Selected = isChecked,
			Size = UDim2.new(0, Constants.TOGGLE_BUTTON_WIDTH, 0, Constants.TOGGLE_BUTTON_HEIGHT),
		})
		or Roact.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0, 0.5),
			LayoutOrder = 1,
			Size = UDim2.new(0, Constants.TOGGLE_BUTTON_WIDTH, 0, Constants.TOGGLE_BUTTON_HEIGHT),
			Image = isChecked and theme.Toggle.On or theme.Toggle.Off,
			BackgroundTransparency = 1,
			[Roact.Event.Activated] = function()
				self.onCheckboxActivated(permission)
			end,
		}),
	})
end

function ScriptInjectionHolder:render()
	local localization = self.props.Localization
	local scriptInjectionPermissions = self.props.scriptInjectionPermissions
	local layoutOrder = self.props.LayoutOrder

	local theme
	if THEME_REFACTOR then
		theme = self.props.Stylizer
	else
		theme = self.props.Theme:get("Plugin")
	end

	local checkboxItems = {}
	for index, permission in pairs(scriptInjectionPermissions) do
		table.insert(checkboxItems, self:renderCheckbox(theme, index, permission))
	end

	return Roact.createElement(FitFrameVertical, {
		BackgroundTransparency = 1,
		contentPadding = UDim.new(0, CONTENT_PADDING),
		LayoutOrder = layoutOrder,
		width = UDim.new(1, 0),
		[Roact.Ref] = self.frameRef,
		[Roact.Change.AbsoluteSize] = self.resizeFrame,
	}, {
		Checkboxes = Roact.createElement(FitFrameVertical, {
			BackgroundTransparency = 1,
			contentPadding = UDim.new(0, CHECKBOX_PADDING),
			LayoutOrder = 0,
			width = UDim.new(1, 0)
		}, checkboxItems ),

		InfoText = Roact.createElement(FluidFitTextLabel, {
			BackgroundTransparency = 1,
			Font = theme.Font,
			LayoutOrder = 1,
			TextSize = 16,
			Text = localization:getText("Details", "ScriptInjectionInfo"),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextColor3 = theme.InfoTextColor,
		}),
	})
end

if FFlagPluginManagementWithContext then
	ScriptInjectionHolder = withContext({
		API = PluginAPI2,
		Localization = ContextServices.Localization,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(ScriptInjectionHolder)
else
	ContextServices.mapToProps(ScriptInjectionHolder, {
		API = PluginAPI2,
		Localization = ContextServices.Localization,
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setPluginPermission = function(apiImpl, assetId, permission)
			dispatch(SetPluginPermission(PermissionsService, apiImpl, assetId, permission))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(ScriptInjectionHolder)
