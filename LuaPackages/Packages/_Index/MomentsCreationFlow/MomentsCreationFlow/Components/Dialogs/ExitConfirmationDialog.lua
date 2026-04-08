local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local React = require(Packages.React)

local Foundation = require(Packages.Foundation)
local Dialog = Foundation.Dialog

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)

type Props = {
	onCancel: () -> (),
	onConfirm: () -> (),
}

local ExitConfirmationDialog = function(props: Props)
	local creationFlowContext = React.useContext(CreationFlowContext)

	return React.createElement(Dialog.Root, {
		disablePortal = false,
		size = Foundation.Enums.DialogSize.Medium,
		hasBackdrop = true,
	}, {
		DialogTitle = React.createElement(Dialog.Title, {
			text = creationFlowContext.getLocalization(CreationFlowLocalization.LeaveMomentCreationTitle),
			LayoutOrder = 1,
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			DialogText = React.createElement(Dialog.Text, {
				Text = creationFlowContext.getLocalization(CreationFlowLocalization.LeaveMomentCreationBody),
			}),
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = {
				{
					text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaLeave),
					variant = Foundation.Enums.ButtonVariant.Emphasis,
					onActivated = props.onConfirm,
				},
				{
					text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaCancel),
					variant = Foundation.Enums.ButtonVariant.Standard,
					onActivated = props.onCancel,
				},
			},
		}),
	})
end

return ExitConfirmationDialog
