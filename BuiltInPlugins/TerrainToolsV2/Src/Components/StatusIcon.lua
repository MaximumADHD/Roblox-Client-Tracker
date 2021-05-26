local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local UI = Framework.UI
local Container = UI.Container
local Tooltip = Framework.UI.Tooltip

local Decoration = UI.Decoration
local Image = Decoration.Image

local function IconWithTooltip(props)
	local message = props.Message
	local icon = props.Icon

	return Roact.createElement(Container, {
		AnchorPoint = props.AnchorPoint,
		Position = props.Position,
		LayoutOrder = props.LayoutOrder,

		Size = UDim2.new(0, 18, 0, 18),
	}, {
		Decoration = Roact.createElement(Image, {
			Style = {
				Image = icon,
			},
		}),

		Tooltip = Roact.createElement(Tooltip, {
			Text = message or "",
			Enabled = message ~= nil,
		}),
	})
end

-- Show the highest priority message from error, warning or info
-- If none are provided, render nothing
local function StatusIcon(props)
	local errorMessage = props.ErrorMessage
	local warningMessage = props.WarningMessage
	local infoMessage = props.InfoMessage

	local icon
	local message
	if errorMessage and #errorMessage > 0 then
		icon = "rbxasset://textures/StudioSharedUI/alert_error@2x.png"
		message = errorMessage
	elseif warningMessage and #warningMessage > 0 then
		icon = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png"
		message = warningMessage
	elseif infoMessage and #infoMessage > 0 then
		icon = "rbxasset://textures/StudioSharedUI/alert_info@2x.png"
		message = infoMessage
	end

	if not icon then
		return nil
	end

	local newProps = Cryo.Dictionary.join(props, {
		Icon = icon,
		Message = message,

		ErrorMessage = Cryo.None,
		WarningMessage = Cryo.None,
		InfoMessage = Cryo.None,
	})
	return Roact.createElement(IconWithTooltip, newProps)
end

return StatusIcon
