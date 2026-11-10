MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1] = "CPC::Reimport", ["CPC_EVENTS"], ["CPC_CALLBACKS"], ["ACTION_ID"] = "Reimport", ["ACTION_EVENTS"], ["ATTRIBUTE_KEY"] = "RBX_ReimportId"}]
        2 DUPTABLE                         R1 K16 [{["PROGRESS_CHANGED"] = "ProgressChanged", ["IMPORT_SUCCEEDED"] = "Import3dImportSucceeded", ["WATCH_STATUS_CHANGED"] = "WatchStatusChanged"}]
        3 SETTABLEKS                       R1 R0 K2 ["CPC_EVENTS"]
        5 DUPTABLE                         R1 K21 [{["GET_PROGRESS"] = "GetProgress", ["GET_WATCH_STATUS"] = "GetWatchStatus"}]
        6 SETTABLEKS                       R1 R0 K3 ["CPC_CALLBACKS"]
        8 DUPTABLE                         R1 K32 [{["REIMPORT"] = "DoReimport", ["REIMPORT_RELATIVE_TO_THIS"] = "DoReimportRelativeToThis", ["CONFIGURE"] = "Configure", ["CLEAR_REIMPORT_CONFIG"] = "ClearReimportConfig", ["WATCH_INSTANCE_FILE"] = "WatchInstanceFile"}]
        9 SETTABLEKS                       R1 R0 K6 ["ACTION_EVENTS"]
       11 RETURN                           R0 1
