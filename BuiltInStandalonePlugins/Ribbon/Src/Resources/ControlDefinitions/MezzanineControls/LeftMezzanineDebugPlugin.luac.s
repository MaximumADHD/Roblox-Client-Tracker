MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepFreeze"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K13 [{["Name"] = "LeftMezzanineDebugPlugin", ["Controls"]}]
       24 NEWTABLE                         R4 0 6
       26 DUPTABLE                         R5 K19 [{["Id"] = "TestMode_DebugPlugin", ["Type"] = "SelectInput", ["Setting"]}]
       27 DUPTABLE                         R6 K28 [{["Category"] = "Settings", ["DataModel"] = "Standalone", ["ItemId"] = "TestMode", ["PluginId"] = "RunTools"}]
       28 SETTABLEKS                       R6 R5 K18 ["Setting"]
       30 DUPTABLE                         R6 K36 [{["Id"] = "ResumeScripts_DebugPlugin", ["Type"] = "IconButton", ["Action"], ["IconOnly"] = True, ["Size"] = "Small"}]
       31 DUPTABLE                         R7 K39 [{["Category"] = "Actions", ["DataModel"] = "Standalone", ["ItemId"] = "Resume", ["PluginId"] = "RunTools"}]
       32 SETTABLEKS                       R7 R6 K31 ["Action"]
       34 DUPTABLE                         R7 K41 [{["Type"] = "Separator"}]
       35 DUPTABLE                         R8 K43 [{["Id"] = "StepInto_DebugPlugin", ["Type"] = "IconButton", ["Action"], ["IconOnly"] = True, ["Size"] = "Small"}]
       36 DUPTABLE                         R9 K46 [{["Category"] = "Actions", ["DataModel"] = "Standalone", ["ItemId"] = "StepInto", ["PluginId"] = "ScriptTools"}]
       37 SETTABLEKS                       R9 R8 K31 ["Action"]
       39 DUPTABLE                         R9 K48 [{["Id"] = "StepOver_DebugPlugin", ["Type"] = "IconButton", ["Action"], ["IconOnly"] = True, ["Size"] = "Small"}]
       40 DUPTABLE                         R10 K50 [{["Category"] = "Actions", ["DataModel"] = "Standalone", ["ItemId"] = "StepOver", ["PluginId"] = "ScriptTools"}]
       41 SETTABLEKS                       R10 R9 K31 ["Action"]
       43 DUPTABLE                         R10 K52 [{["Id"] = "StepOut_DebugPlugin", ["Type"] = "IconButton", ["Action"], ["IconOnly"] = True, ["Size"] = "Small"}]
       44 DUPTABLE                         R11 K54 [{["Category"] = "Actions", ["DataModel"] = "Standalone", ["ItemId"] = "StepOut", ["PluginId"] = "ScriptTools"}]
       45 SETTABLEKS                       R11 R10 K31 ["Action"]
       47 SETLIST                          R4 R5 6 [1]
       49 SETTABLEKS                       R4 R3 K12 ["Controls"]
       51 MOVE                             R4 R1
       52 MOVE                             R5 R3
       53 CALL                             R4 1 -1
       54 RETURN                           R4 -1
