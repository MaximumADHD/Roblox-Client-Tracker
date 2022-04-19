--[[
	Window for warning user about promoting to curves

	Props:
		function OnClose = callback for when window has been closed or canceled
		function OnPromote = callback to promote the animation to curves
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local FocusedPrompt = require(Plugin.Src.Components.EditEventsDialog.FocusedPrompt)

local PromoteToCurvesPrompt = Roact.PureComponent:extend("PromoteToCurvesPrompt")

function PromoteToCurvesPrompt:init(): ()
	self.onPromote = function(): ()
		if self.props.OnPromote then
			self.props.OnPromote()
		end
	end

	self.onClose = function(): ()
		if self.props.OnClose then
			self.props.OnClose()
		end
	end
end

function PromoteToCurvesPrompt:render(): (any)
	local localization = self.props.Localization

	return Roact.createElement(FocusedPrompt, {
		PromptText = localization:getText("Dialog", "PromotePrompt"),
		Buttons = {
			{Key = false, Text = localization:getText("Dialog", "Cancel")},
			{Key = true, Text = localization:getText("Dialog", "Confirm"), Style = "Primary"},
		},
		OnButtonClicked = function(didPromote)
			self.onClose()
			if didPromote then
				self.onPromote()
			end
		end,
		OnClose = self.onClose
	})
end

PromoteToCurvesPrompt = withContext({
	Localization = ContextServices.Localization,
})(PromoteToCurvesPrompt)

return PromoteToCurvesPrompt