local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local InputSize = require(Foundation.Enums.InputSize)
local Logger = require(Foundation.Utility.Logger)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local AlertConstants = require(script.Parent.AlertConstants)
local MAX_ACTION_COUNT = AlertConstants.MAX_ACTION_COUNT
type AlertAction = AlertConstants.AlertAction

export type AlertActionsProps = {
	actions: { AlertAction }?,
	tag: Types.Tags?,
	padding: Types.Padding?,
	LayoutOrder: number?,
	testId: string?,
}

local defaultProps = {
	testId = "--foundation-alert-actions",
}

local DEFAULT_TAG = "auto-xy row gap-small"

local function AlertActions(alertActionsProps: AlertActionsProps): React.Node
	local props = withDefaults(alertActionsProps, defaultProps)
	React.useEffect(function()
		if props.actions and #props.actions > MAX_ACTION_COUNT then
			Logger:warning(`Alert components only support up to {MAX_ACTION_COUNT} actions`)
		end
	end, { props.actions } :: { unknown })

	local buttons = React.useMemo(function(): { [string]: React.Node }?
		if props.actions and #props.actions > 0 then
			local result: { [string]: React.Node } = {}
			for i, action in props.actions do
				if i > MAX_ACTION_COUNT then
					break
				end

				local buttonProps = Dash.join(action, {
					LayoutOrder = i,
					size = InputSize.Small,
					testId = `{props.testId}--action-{i}`,
				})
				result["ActionButton" .. i] = React.createElement(Button, buttonProps)
			end
			return result
		end
		return nil
	end, { props.actions, props.testId } :: { unknown })

	if not buttons then
		return nil
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = props.tag or DEFAULT_TAG,
			padding = props.padding,
		}),
		buttons
	)
end

return React.memo(AlertActions)
