local REIMPORT = {
	CPC_ID = "CPC::Reimport",
	CPC_EVENTS = {
		PROGRESS_CHANGED = "ProgressChanged",
		IMPORT_SUCCEEDED = "Import3dImportSucceeded",
		WATCH_STATUS_CHANGED = "WatchStatusChanged",
	},
	CPC_CALLBACKS = {
		GET_PROGRESS = "GetProgress",
		GET_WATCH_STATUS = "GetWatchStatus",
	},
	ACTION_ID = "Reimport",
	ACTION_EVENTS = {
		REIMPORT = "DoReimport",
		REIMPORT_RELATIVE_TO_THIS = "DoReimportRelativeToThis",
		CONFIGURE = "Configure",
		CLEAR_REIMPORT_CONFIG = "ClearReimportConfig",
		WATCH_INSTANCE_FILE = "WatchInstanceFile",
	},
	ATTRIBUTE_KEY = "RBX_ReimportId",
}
return REIMPORT
