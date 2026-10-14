local ContentEdit = {
	CPC_ID = "CPC::ContentEdit",
	CPC_CALLBACKS = {
		EDIT_INSTANCE_PREFIX = "EditInstance::",
	},
}

function ContentEdit.editInstanceEvent(className)
	return ContentEdit.CPC_CALLBACKS.EDIT_INSTANCE_PREFIX .. className
end

return ContentEdit
