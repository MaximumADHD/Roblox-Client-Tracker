local PAGE_LOAD = "pageLoad"
local FORM_INTERACTION = "formInteraction"

type EventData = {
	Type: string,
	Args: {
		[string]: string,
	},
}

local events: {
	[string]: EventData,
} = {
	ModalOpened = {
		Type = PAGE_LOAD,
		Args = {},
	},
	SendInvite = {
		Type = FORM_INTERACTION,
		Args = {
			btn = "inviteFriend",
			aType = "click",
		},
	},
	CancelInvite = {
		Type = FORM_INTERACTION,
		Args = {
			btn = "cancelInvite",
			aType = "click",
		},
	},
	ErrorShown = {
		Type = FORM_INTERACTION,
		Args = {
			field = "inviteFailed",
			aType = "shown",
		},
	},
	CustomTextShown = {
		Type = FORM_INTERACTION,
		Args = {
			field = "customText",
			aType = "shown",
		},
	},
}

return events
