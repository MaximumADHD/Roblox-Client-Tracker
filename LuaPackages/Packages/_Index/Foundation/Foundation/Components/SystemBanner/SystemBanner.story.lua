local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local SystemBanner = require(Foundation.Components.SystemBanner)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)

return {
	summary = "SystemBanner",
	stories = Dash.map(AlertSeverity, function(severity, severityName)
		return {
			name = severityName,
			story = function(props)
				local actions = {}
				local actionCount = props.controls.actionCount

				for i = 1, actionCount do
					table.insert(actions, {
						text = `Action {i}`,
						variant = if i == actionCount then ButtonVariant.Standard else ButtonVariant.Utility,
						onActivated = function()
							print(`{severityName} Action {i} activated`)
						end,
					})
				end

				return React.createElement(SystemBanner, {
					title = props.controls.title,
					description = if props.controls.description ~= "" then props.controls.description else nil,
					variant = props.controls.variant,
					severity = severity,
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
		title = "Hi, I'm a title",
		description = "I'm a description",
		variant = Dash.values(AlertVariant),
		actionCount = { 0, 1, 2, 3 },
		hasCloseAffordance = true,
	},
}
