local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local DialogActions = require(Foundation.Components.Dialog.Actions)
local DialogSize = require(Foundation.Enums.DialogSize)
local DialogStoryHelpers = require(Foundation.Components.Dialog.DialogStoryHelpers)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local Orientation = require(Foundation.Enums.Orientation)
local View = require(Foundation.Components.View)

local MatrixGrid = MatrixGridShared.MatrixGrid
local matrixLabel = MatrixGridShared.matrixLabel

local LabeledDialogTrigger = DialogStoryHelpers.LabeledDialogTrigger
local RootStory = DialogStoryHelpers.RootStory
local Section = DialogStoryHelpers.Section
local makeDialogChildren = DialogStoryHelpers.makeDialogChildren

type DialogAction = DialogActions.DialogAction
type DialogSize = DialogSize.DialogSize
type Orientation = Orientation.Orientation

local SIZE_ORDER: { DialogSize } = DialogStoryHelpers.SIZE_ORDER
local DEFAULT_SIZE: DialogSize = DialogStoryHelpers.DEFAULT_SIZE
local ORIENTATION_ORDER: { Orientation } = {
	Orientation.Horizontal,
	Orientation.Vertical,
}
local ACTION_COUNTS = { 1, 2, 3 }
local ACTIONS_MATRIX_LABEL_WIDTH = 80
local ACTIONS_MATRIX_CELL_WIDTH = 160
local LONG_ACTIONS_LABEL = "Actions label copy can wrap across multiple lines when the dialog is narrow."

local function makeActions(actionCount: number): { DialogAction }
	if actionCount == 1 then
		return {
			{
				text = "Confirm",
				variant = ButtonVariant.Emphasis,
				onActivated = function() end,
			},
		}
	end

	if actionCount == 2 then
		return DialogStoryHelpers.DEFAULT_ACTIONS
	end

	return {
		{
			text = "Cancel",
			variant = ButtonVariant.Standard,
			onActivated = function() end,
		},
		{
			text = "Maybe",
			variant = ButtonVariant.Standard,
			onActivated = function() end,
		},
		{
			text = "Confirm",
			variant = ButtonVariant.Emphasis,
			onActivated = function() end,
		},
	}
end

local function dialogSizeForOrientation(orientation: Orientation): DialogSize?
	if orientation == Orientation.Vertical then
		return DialogSize.Small
	end

	return nil
end

local function orientationLabel(orientation: Orientation): string
	if orientation == Orientation.Vertical then
		return "Vertical (Small)"
	end

	return "Horizontal"
end

local function Playground(props: {
	controls: {
		rootSize: DialogSize?,
		orientation: Orientation?,
		label: string?,
	},
})
	local label = props.controls.label

	return React.createElement(RootStory, {
		controls = {
			size = props.controls.rootSize or DEFAULT_SIZE,
			hasBackdrop = true,
		},
		children = makeDialogChildren({
			hasActions = true,
			actionsOrientation = props.controls.orientation,
			actionsLabel = if label and label ~= "" then label else nil,
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Size = React.createElement(
			Section,
			{
				layoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledDialogTrigger, {
					label = size,
					layoutOrder = index,
					size = size,
					children = makeDialogChildren({
						hasActions = true,
						actionsOrientation = Orientation.Horizontal,
					}),
				})
			end)
		),
	})
end

local function OrientationStory()
	return React.createElement(
		View,
		{
			tag = "row gap-large align-y-start auto-xy wrap padding-large bg-surface-0",
		},
		Dash.map(ORIENTATION_ORDER, function(orientation, index)
			return React.createElement(LabeledDialogTrigger, {
				label = orientationLabel(orientation),
				layoutOrder = index,
				size = dialogSizeForOrientation(orientation),
				children = makeDialogChildren({
					hasActions = true,
					actionsOrientation = orientation,
				}),
			})
		end)
	)
end

local function ContentStory()
	return React.createElement(View, {
		tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
	}, {
		Label = React.createElement(Section, {
			layoutOrder = 1,
			name = "Label",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = ACTIONS_MATRIX_LABEL_WIDTH,
				columnHeaders = Dash.map(ORIENTATION_ORDER, orientationLabel),
				cellColumnWidth = ACTIONS_MATRIX_CELL_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = {
					{
						label = matrixLabel("With label"),
						cells = Dash.map(ORIENTATION_ORDER, function(orientation)
							return React.createElement(LabeledDialogTrigger, {
								layoutOrder = 1,
								size = dialogSizeForOrientation(orientation),
								children = makeDialogChildren({
									hasActions = true,
									actionsOrientation = orientation,
									actionsLabel = "Choose an option below.",
								}),
							})
						end),
					},
				},
			}),
		}),
		LongLabel = React.createElement(Section, {
			layoutOrder = 2,
			name = "Long label",
		}, {
			Example = React.createElement(LabeledDialogTrigger, {
				layoutOrder = 1,
				children = makeDialogChildren({
					hasActions = true,
					actionsLabel = LONG_ACTIONS_LABEL,
				}),
			}),
		}),
		Buttons = React.createElement(Section, {
			layoutOrder = 3,
			name = "Button count",
			note = "Action count is unbounded; 1–3 are representative examples. Prefer no more than 3.",
			contentTag = "auto-xy",
		}, {
			Matrix = React.createElement(MatrixGrid, {
				labelColumnWidth = ACTIONS_MATRIX_LABEL_WIDTH,
				columnHeaders = Dash.map(ACTION_COUNTS, function(actionCount)
					return if actionCount == 1 then "1 button" else `{actionCount} buttons`
				end),
				cellColumnWidth = ACTIONS_MATRIX_CELL_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = Dash.map(ORIENTATION_ORDER, function(orientation)
					return {
						label = matrixLabel(orientationLabel(orientation)),
						cells = Dash.map(ACTION_COUNTS, function(actionCount)
							return React.createElement(LabeledDialogTrigger, {
								layoutOrder = 1,
								size = dialogSizeForOrientation(orientation),
								children = makeDialogChildren({
									hasActions = true,
									actionsOrientation = orientation,
									actions = makeActions(actionCount),
								}),
							})
						end),
					}
				end),
			}),
		}),
	})
end

return {
	summary = "Renders dialog action buttons and an optional label. Layout follows root size — vertical orientation applies only at Small.",
	stories = {
		{
			name = "Playground",
			story = Playground :: unknown,
		},
		{
			name = "Sizing",
			story = SizingStory,
		},
		{
			name = "Orientation",
			summary = "Vertical layout only works at Small. At Medium (default), DialogActions always renders horizontal regardless of the orientation prop. The Vertical example opens Small so stacked buttons are visible.",
			story = OrientationStory,
		},
		{
			name = "Content",
			story = ContentStory,
		},
	},
	controls = {
		rootSize = Dash.values(DialogSize),
		orientation = Dash.values(Orientation),
		label = "",
	},
}
