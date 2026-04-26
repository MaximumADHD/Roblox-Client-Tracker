local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FeedbackAlert = require(Foundation.Components.FeedbackAlert)

return {
	summary = "FeedbackAlert",
	stories = Dash.map(AlertSeverity, function(severity, severityName)
		return {
			name = severityName,
			story = function(props)
				local actions = {}
				local actionCount = props.controls.actionCount

				for i = 1, actionCount do
					table.insert(actions, {
						text = if i == 1 then "Primary" elseif i == 2 then "Secondary" else "Tertiary",
						variant = if i == 1 then ButtonVariant.Standard else ButtonVariant.Utility,
						onActivated = function()
							print(`{severityName} Action {i} activated`)
						end,
					})
				end

				return React.createElement(FeedbackAlert, {
					title = props.controls.title,
					subtitle = if props.controls.subtitle ~= "" then props.controls.subtitle else nil,
					description = if props.controls.description ~= "" then props.controls.description else nil,
					severity = severity,
					link = if props.controls.linkText ~= ""
						then {
							text = props.controls.linkText,
							onActivated = function()
								print(`{severityName} Link activated`)
							end,
						}
						else nil,
					actions = if #actions > 0 then actions else nil,
					onClose = if props.controls.hasCloseAffordance
						then function()
							print(`{severityName} Close activated`)
						end
						else nil,
				})
			end,
		}
	end),
	controls = {
		title = "Title",
		subtitle = "Description",
		description = "InlineAlerts are displayed in-line with page content. e.g., a form error. It is immediate feedback that's tied to page content.",
		linkText = "Link",
		actionCount = { 0, 1, 2, 3 },
		hasCloseAffordance = true,
	},
}
