local Modules = script.Parent

local Device = require(Modules.Device)

local DialogInfo = {}

DialogInfo.Intent = {
	ConversationHub = "ConversationHub",
	Conversation = "Conversation",
	GroupDetail = "GroupDetail",
	NewChatGroup = "NewChatGroup",
	EditChatGroup = "EditChatGroup",
	EditGroupName = "EditGroupName",
	ParticipantOptions = "ParticipantOptions",
	RemoveUser = "RemoveUser",
	LeaveGroup = "LeaveGroup",
	DefaultScreen = "DefaultScreen",
	GenericDialog = "GenericDialog",
	GameShare = "GameShare",
}

DialogInfo.DialogType = {
	Centered = "Centered",
	Left = "Left",
	Right = "Right",
	Modal = "Modal",
	Popup = "Popup",
}

DialogInfo.DialogTypeMap = {
	[Device.FormFactor.PHONE] = {
		[DialogInfo.Intent.ConversationHub] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.Conversation] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.GroupDetail] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.NewChatGroup] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.EditChatGroup] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.EditGroupName] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.ParticipantOptions] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.RemoveUser] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.LeaveGroup] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.DefaultScreen] = DialogInfo.DialogType.Centered,
		[DialogInfo.Intent.GenericDialog] = DialogInfo.DialogType.Popup,
		[DialogInfo.Intent.GameShare] = DialogInfo.DialogType.Popup,
	},
	[Device.FormFactor.TABLET] = {
		[DialogInfo.Intent.ConversationHub] = DialogInfo.DialogType.Left,
		[DialogInfo.Intent.Conversation] = DialogInfo.DialogType.Right,
		[DialogInfo.Intent.GroupDetail] = DialogInfo.DialogType.Right,
		[DialogInfo.Intent.NewChatGroup] = DialogInfo.DialogType.Modal,
		[DialogInfo.Intent.EditChatGroup] = DialogInfo.DialogType.Modal,
		[DialogInfo.Intent.EditGroupName] = DialogInfo.DialogType.Right,
		[DialogInfo.Intent.ParticipantOptions] = DialogInfo.DialogType.Right,
		[DialogInfo.Intent.RemoveUser] = DialogInfo.DialogType.Right,
		[DialogInfo.Intent.LeaveGroup] = DialogInfo.DialogType.Right,
		[DialogInfo.Intent.DefaultScreen] = DialogInfo.DialogType.Right,
		[DialogInfo.Intent.GenericDialog] = DialogInfo.DialogType.Popup,
		[DialogInfo.Intent.GameShare] = DialogInfo.DialogType.Popup,
	},
}

function DialogInfo.GetTypeBasedOnIntent(formFactor, intent)
	local formFactorTypeMap = DialogInfo.DialogTypeMap[formFactor]
	local dialogType = formFactorTypeMap[intent]

	if not dialogType then
		return DialogInfo.DialogType.Centered
	end

	return dialogType
end

return DialogInfo
