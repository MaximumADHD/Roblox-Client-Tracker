local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local Constants = require(script.Parent.Parent.Constants)

local GroupCountDisplay = Roact.Component:extend("GroupCountDisplay")

function GroupCountDisplay:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization

	return Roact.createElement(TextLabel, {
		Text = ("%d/%d %s"):format(props.GroupCount, Constants.GroupCountMax, localization:getText("Info", "Groups")),
		Style = "SubText",
		Size = Constants.GroupLabelFixedSize,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
	})
end

GroupCountDisplay = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(GroupCountDisplay)

return GroupCountDisplay
