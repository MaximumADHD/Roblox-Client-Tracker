--[[
	Footer shown at the bottom of the Game Settings widget.
	Contains the Save and Cancel buttons.

	Props:
		bool SaveActive = Whether or not saving is currently allowed.
			This will enable the Save button if true.
]]

local FOOTER_GRADIENT_SIZE = 3
local FOOTER_GRADIENT_TRANSPARENCY = 0.9

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Promise = require(Plugin.Promise)

local ContextServices = require(Plugin.Framework.ContextServices)
local Dialog = require(Plugin.Src.ContextServices.Dialog)

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local ConfirmAndSaveChanges = require(Plugin.Src.Thunks.ConfirmAndSaveChanges)
local CurrentStatus = require(Plugin.Src.Util.CurrentStatus)

local Footer = Roact.PureComponent:extend("Footer")

function Footer:render()
	local props = self.props
	local theme = props.Theme:get("Plugin")
	local localization = props.Localization
	local dialog = props.Dialog

	local saveActive = props.SaveActive
	local cancelActive = props.CancelActive

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 0,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 2,
	}, {
		Gradient = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 0, FOOTER_GRADIENT_SIZE),
			AnchorPoint = Vector2.new(0, 1),
			Image = DEPRECATED_Constants.GRADIENT_IMAGE,
			ImageRectSize = DEPRECATED_Constants.GRADIENT_RECT_SIZE,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ImageColor3 = theme.footer.gradient,
			ImageTransparency = FOOTER_GRADIENT_TRANSPARENCY,
			ZIndex = 1,
		}),

		SaveSettings = Roact.createElement(ButtonBar, {
			ZIndex = 2,
			Buttons = {
				{Name = localization:getText("General", "ButtonCancel"), Active = cancelActive, Value = false},
				{Name = localization:getText("General", "ButtonSave"), Default = true, Active = saveActive, Value = true},
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			ButtonClicked = function(userPressedSave)
				local resolved = self.props.SaveAllSettings(userPressedSave, localization, dialog):await()
				if resolved then
					self.props.OnClose(userPressedSave)
				end
			end,
		}),
	})
end

ContextServices.mapToProps(Footer,{
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Dialog = Dialog,
})

Footer = RoactRodux.connect(
	function(state, props)
		if not state then return end
		return {
			SaveActive = not isEmpty(state.Settings.Changed)
				and state.Status == CurrentStatus.Open
				and isEmpty(state.Settings.Errors),
			CancelActive = state.Status == CurrentStatus.Open
		}
	end,
	function(dispatch)
		return {
			SaveAllSettings = function(userPressedSave, ...)
				if userPressedSave then
					return dispatch(ConfirmAndSaveChanges(...))
				else
					return Promise.resolve()
				end
			end,
		}
	end
)(Footer)

return Footer
