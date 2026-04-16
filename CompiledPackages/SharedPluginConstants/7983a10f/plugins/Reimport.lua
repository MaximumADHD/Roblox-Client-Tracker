local REIMPORT = {
	CPC_ID = "CPC::Reimport",
	CPC_EVENTS = {
		STATUS_CHANGED = "StatusChanged",
	},
	ACTION_ID = "Reimport",
	ACTION_EVENTS = {
		REIMPORT = "DoReimport",
		REIMPORT_RELATIVE_TO_THIS = "DoReimportRelativeToThis",
		CONFIGURE = "Configure",
	},
	ATTRIBUTE_KEY = "RBX_ReimportId",
}
return REIMPORT
