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
       23 DUPTABLE                         R3 K13 [{["Name"] = "RightMezzanine", ["Controls"]}]
       24 NEWTABLE                         R4 0 10
       26 DUPTABLE                         R5 K19 [{["ComponentName"] = "UpdateStatus", ["Type"] = "Component", ["Id"] = "UpdateStatus"}]
       27 DUPTABLE                         R6 K22 [{["ComponentName"] = "CollaboratorRibbon", ["Type"] = "Component", ["Id"] = "SocialPresence"}]
       28 DUPTABLE                         R7 K30 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "PlaceAnnotations", ["Size"] = "Small"}]
       29 DUPTABLE                         R8 K38 [{["PluginId"] = "PlaceAnnotations", ["DataModel"] = "Standalone", ["ItemId"] = "AddAnnotation", ["Category"] = "Actions"}]
       30 SETTABLEKS                       R8 R7 K26 ["Action"]
       32 DUPTABLE                         R8 K40 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "ShareGame", ["Size"] = "Small"}]
       33 DUPTABLE                         R9 K42 [{["PluginId"] = "ShareGame", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       34 SETTABLEKS                       R9 R8 K26 ["Action"]
       36 DUPTABLE                         R9 K44 [{["Type"] = "Separator"}]
       37 DUPTABLE                         R10 K46 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "AssistantPlugin", ["Size"] = "Small"}]
       38 DUPTABLE                         R11 K47 [{["PluginId"] = "AssistantPlugin", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       39 SETTABLEKS                       R11 R10 K26 ["Action"]
       41 DUPTABLE                         R11 K49 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "ConnectionIndicator", ["Size"] = "Small"}]
       42 DUPTABLE                         R12 K50 [{["PluginId"] = "ConnectionIndicator", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       43 SETTABLEKS                       R12 R11 K26 ["Action"]
       45 DUPTABLE                         R12 K44 [{["Type"] = "Separator"}]
       46 DUPTABLE                         R13 K52 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "Notifications", ["Size"] = "Small"}]
       47 DUPTABLE                         R14 K53 [{["PluginId"] = "Notifications", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       48 SETTABLEKS                       R14 R13 K26 ["Action"]
       50 DUPTABLE                         R14 K57 [{["Type"] = "AvatarThumbnail", ["Action"], ["Id"] = "LogoutMenu", ["Size"] = "XSmall"}]
       51 DUPTABLE                         R15 K58 [{["PluginId"] = "LogoutMenu", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       52 SETTABLEKS                       R15 R14 K26 ["Action"]
       54 SETLIST                          R4 R5 10 [1]
       56 SETTABLEKS                       R4 R3 K12 ["Controls"]
       58 MOVE                             R4 R1
       59 MOVE                             R5 R3
       60 CALL                             R4 1 -1
       61 RETURN                           R4 -1
