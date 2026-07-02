MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{[1] = "CPC::Reimport", ["CPC_EVENTS"], ["CPC_CALLBACKS"], ["ACTION_ID"] = "Reimport", ["ACTION_EVENTS"], ["ATTRIBUTE_KEY"] = "RBX_ReimportId", ["getFFlagReimportFileWatchIcon"]}]
        2 DUPTABLE                         R1 K17 [{["PROGRESS_CHANGED"] = "ProgressChanged", ["IMPORT_SUCCEEDED"] = "Import3dImportSucceeded", ["WATCH_STATUS_CHANGED"] = "WatchStatusChanged"}]
        3 SETTABLEKS                       R1 R0 K2 ["CPC_EVENTS"]
        5 DUPTABLE                         R1 K22 [{["GET_PROGRESS"] = "GetProgress", ["GET_WATCH_STATUS"] = "GetWatchStatus"}]
        6 SETTABLEKS                       R1 R0 K3 ["CPC_CALLBACKS"]
        8 DUPTABLE                         R1 K33 [{["REIMPORT"] = "DoReimport", ["REIMPORT_RELATIVE_TO_THIS"] = "DoReimportRelativeToThis", ["CONFIGURE"] = "Configure", ["CLEAR_REIMPORT_CONFIG"] = "ClearReimportConfig", ["WATCH_INSTANCE_FILE"] = "WatchInstanceFile"}]
        9 SETTABLEKS                       R1 R0 K6 ["ACTION_EVENTS"]
       11 GETIMPORT                        R1 K35 [require]
       13 GETIMPORT                        R2 K37 [script]
       15 GETTABLEKS                       R2 R2 K38 ["Parent"]
       17 GETTABLEKS                       R2 R2 K38 ["Parent"]
       19 GETTABLEKS                       R2 R2 K39 ["flags"]
       21 GETTABLEKS                       R2 R2 K9 ["getFFlagReimportFileWatchIcon"]
       23 CALL                             R1 1 1
       24 SETTABLEKS                       R1 R0 K9 ["getFFlagReimportFileWatchIcon"]
       26 RETURN                           R0 1
