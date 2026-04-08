local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local React = require(Packages.React)

local Foundation = require(Packages.Foundation)
local Dialog = Foundation.Dialog

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)

type Props = {
	onConfirm: () -> (),
}

local TextFilteredDialog = function(props: Props)
	local creationFlowContext = React.useContext(CreationFlowContext)

	return React.createElement(Dialog.Root, {
		size = Foundation.Enums.DialogSize.Medium,
		hasBackdrop = true,
	}, {
		DialogTitle = React.createElement(Dialog.Title, {
			text = creationFlowContext.getLocalization(CreationFlowLocalization.StayFriendlyModeration),
			LayoutOrder = 1,
		}),
		DialogContent = React.createElement(Dialog.Content, {
			LayoutOrder = 2,
		}, {
			DialogText = React.createElement(Dialog.Text, {
				Text = creationFlowContext.getLocalization(CreationFlowLocalization.CommunityStandardsText),
			}),
		}),
		DialogActions = React.createElement(Dialog.Actions, {
			LayoutOrder = 3,
			actions = {
				{
					text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaOk),
					variant = Foundation.Enums.ButtonVariant.Emphasis,
					onActivated = props.onConfirm,
				},
			},
		}),
	})
end

return TextFilteredDialog
