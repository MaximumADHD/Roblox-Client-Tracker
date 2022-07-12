local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local Stylizer = Framework.Style.Stylizer
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Cryo = require(Plugin.Packages.Cryo)

local Util = Framework.Util

local StyleModifier = Util.StyleModifier

local ButtonBar = require(Plugin.Src.Components.ButtonBar)
local Constants = require(Plugin.Src.Util.Constants)

local GetHasCollaborators = require(Plugin.Src.Selectors.GetHasCollaborators)

local Footer = Roact.PureComponent:extend("Footer")

function Footer:render()
	local props = self.props
	local theme = props.Stylizer

	local localization = props.Localization
	
	local isTeamCreateEnabled = props.IsTeamCreateEnabled
	local hasUnsavedChanges = props.HasUnsavedChanges
	local hasCollaborators = props.HasCollaborators
	
	-- if there are collaborators and TC is off, we allow save to be pressed to enable TeamCreate
	local saveActive = hasUnsavedChanges or (not isTeamCreateEnabled and hasCollaborators)
		
	local onSavePressed = props.OnSavePressed
	local onCancelPressed = props.OnCancelPressed
	
	local CancelButtonTable = {
		Name = localization:getText("Buttons", "Cancel"), 
		OnPressed = function()
			onCancelPressed(hasUnsavedChanges)
		end,
		Style = "Cancel"
	}
	
	local SaveButtonTable = {
		Name = localization:getText("Buttons", "Save"), 
		Default = true, 
		OnPressed = function()
			if saveActive then
				onSavePressed()
			end
		end,
		Style = if saveActive then "Active" else "Passive",
		StyleModifier = if not saveActive then StyleModifier.Disabled else nil
	}
		
	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.backgroundColor,
		BorderSizePixel = 1,
		Size = UDim2.fromScale(1, 1),
		ZIndex = 2,
		BorderColor3 = theme.footer.border
	}, {
		Gradient = Roact.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 0, theme.footer.gradientSize),
			AnchorPoint = Vector2.new(0, 1),
			Image = Constants.GRADIENT_IMAGE,
			ImageRectSize = Constants.GRADIENT_RECT_SIZE,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			ImageColor3 = theme.footer.gradient,
			ImageTransparency = theme.footer.gradientTransparency,
			ZIndex = 1,
		}),
		
		ButtonBar = Roact.createElement(ButtonBar, {
			ZIndex = 2,
			Buttons = {
				CancelButtonTable,
				SaveButtonTable,
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
		})
	})
end

Footer = withContext({
	Stylizer = Stylizer,
	Localization = Localization
})(Footer)

Footer = RoactRodux.connect(
	function(state, props)
		return {
			HasUnsavedChanges = if state.Permissions.NewPermissions then not Cryo.isEmpty(state.Permissions.NewPermissions) else false,
			HasCollaborators = GetHasCollaborators(state),
		}
	end,
	function(dispatch)
		
	end
)(Footer)

return Footer
