--[[
	useDialogDetailsAction is a hook that creates a Show / Hide Details action
	to be used with the `useDialog` hook.

	It takes the details as a parameter in any of the these forms:
		- A string, from which a TextLabel will automatically be made
		- A React element
		- A table of React elements

	Returns:
		detailsAction: DialogAction.Type
			The action to be passed to `useDialog`, which has a label that
			automatically reflects whether the details are currently shown or
			hidden
		withDetails: (ReactNodes?) -> ReactNodes?
			Wrapper around the contents passed to `useDialog` that appends the
			details if they are currently visible. If called without arguments,
			just passes the details

	Example usage:
		-- Button component that, when clicked, shows a dialog with details that
		-- can be shown and hidden
		local function ButtonThatShowsDialogWithDetails()
			local detailsAction, withDetails = useDialogDetailsAction(
				"These are the details!"
			)
			local show, hide, visible = useDialog({
				Intent = "Confirmation",
				Heading = "Success!",
				Body = "The experience was saved.",
				Contents = withDetails(),
				ActionPrimary = DialogAction.OK,
				ActionTertiary = detailsAction,
			})
			return React.createElement("TextButton", {
				Text = "Show Dialog",
				[React.Event.Activated] = show,
			})
		end
]]
--!strict

local Framework = script:FindFirstAncestor("UI").Parent

local React = require(Framework.Util.React)

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local DialogAction = require(Framework.Util.DialogAction)

-- TODO: When require(React) indirection is removed from DF, actual ReactNode type
type ReactNode = any
type ReactNodes = ReactNode | { [number | string]: ReactNode }

local function useDialogDetailsAction(details: string | ReactNodes)
	local detailsVisible, setDetailsVisible = React.useState(false)

	local detailsAction: DialogAction.Type = React.useMemo(function()
		return table.freeze({
			Label = {
				Project = LOCALIZATION_PROJECT_NAME,
				Scope = "useDialogDetailsAction",
				Key = if detailsVisible then "HideDetails" else "ShowDetails",
			},
			OnActivated = function()
				setDetailsVisible(function(prevDetailsVisible)
					return not prevDetailsVisible
				end)
			end,
		})
	end, { detailsVisible, setDetailsVisible })

	local withDetails = React.useCallback(function(contents: ReactNodes?)
		if not detailsVisible then
			return contents
		end

		return React.createElement(React.Fragment, nil, {
			ContentsBeforeDetails = if contents
				then React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					[React.Tag] = "X-FitY",
				}, contents)
				else nil,
			Details = if typeof(details) == "string"
				then React.createElement("TextLabel", {
					LayoutOrder = 2,
					Text = details,
					[React.Tag] = "X-FitY",
				})
				else React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					[React.Tag] = "X-FitY",
				}, details),
		})
	end, { detailsVisible, details })

	return detailsAction, withDetails :: (ReactNodes?) -> ReactNodes?
end

return useDialogDetailsAction
