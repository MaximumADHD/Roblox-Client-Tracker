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
       24 NEWTABLE                         R4 0 11
       26 DUPTABLE                         R5 K19 [{["ComponentName"] = "UpdateStatus", ["Type"] = "Component", ["Id"] = "UpdateStatus"}]
       27 DUPTABLE                         R6 K22 [{["ComponentName"] = "CollaboratorRibbon", ["Type"] = "Component", ["Id"] = "SocialPresence"}]
       28 DUPTABLE                         R7 K30 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "PlaceAnnotations", ["Size"] = "Small"}]
       29 DUPTABLE                         R8 K38 [{["PluginId"] = "PlaceAnnotations", ["DataModel"] = "Standalone", ["ItemId"] = "AddAnnotation", ["Category"] = "Actions"}]
       30 SETTABLEKS                       R8 R7 K26 ["Action"]
       32 DUPTABLE                         R8 K41 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "PublishStatus", ["Size"] = "Small", ["FastFlag"]}]
       33 DUPTABLE                         R9 K43 [{["PluginId"] = "Collaboration", ["DataModel"] = "Standalone", ["ItemId"] = "PublishStatus", ["Category"] = "Actions"}]
       34 SETTABLEKS                       R9 R8 K26 ["Action"]
       36 DUPTABLE                         R9 K45 [{"EnableIfAll"}]
       37 NEWTABLE                         R10 0 2
       39 LOADK                            R11 K46 ["AddPublishToRightMezzanine"]
       40 LOADK                            R12 K47 ["StudioUnifiedPublishAction"]
       41 SETLIST                          R10 R11 2 [1]
       43 SETTABLEKS                       R10 R9 K44 ["EnableIfAll"]
       45 SETTABLEKS                       R9 R8 K40 ["FastFlag"]
       47 DUPTABLE                         R9 K49 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "ShareGame", ["Size"] = "Small", ["FastFlag"]}]
       48 DUPTABLE                         R10 K51 [{["PluginId"] = "ShareGame", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       49 SETTABLEKS                       R10 R9 K26 ["Action"]
       51 DUPTABLE                         R10 K53 [{"DisableIfAll"}]
       52 NEWTABLE                         R11 0 2
       54 LOADK                            R12 K46 ["AddPublishToRightMezzanine"]
       55 LOADK                            R13 K47 ["StudioUnifiedPublishAction"]
       56 SETLIST                          R11 R12 2 [1]
       58 SETTABLEKS                       R11 R10 K52 ["DisableIfAll"]
       60 SETTABLEKS                       R10 R9 K40 ["FastFlag"]
       62 DUPTABLE                         R10 K55 [{["Type"] = "Separator"}]
       63 DUPTABLE                         R11 K57 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "AssistantPlugin", ["Size"] = "Small"}]
       64 DUPTABLE                         R12 K58 [{["PluginId"] = "AssistantPlugin", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       65 SETTABLEKS                       R12 R11 K26 ["Action"]
       67 DUPTABLE                         R12 K60 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "ConnectionIndicator", ["Size"] = "Small"}]
       68 DUPTABLE                         R13 K61 [{["PluginId"] = "ConnectionIndicator", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       69 SETTABLEKS                       R13 R12 K26 ["Action"]
       71 DUPTABLE                         R13 K55 [{["Type"] = "Separator"}]
       72 DUPTABLE                         R14 K63 [{["IconOnly"] = True, ["Type"] = "IconButton", ["Action"], ["Id"] = "Notifications", ["Size"] = "Small"}]
       73 DUPTABLE                         R15 K64 [{["PluginId"] = "Notifications", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       74 SETTABLEKS                       R15 R14 K26 ["Action"]
       76 DUPTABLE                         R15 K68 [{["Type"] = "AvatarThumbnail", ["Action"], ["Id"] = "LogoutMenu", ["Size"] = "XSmall"}]
       77 DUPTABLE                         R16 K69 [{["PluginId"] = "LogoutMenu", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       78 SETTABLEKS                       R16 R15 K26 ["Action"]
       80 SETLIST                          R4 R5 11 [1]
       82 SETTABLEKS                       R4 R3 K12 ["Controls"]
       84 MOVE                             R4 R1
       85 MOVE                             R5 R3
       86 CALL                             R4 1 -1
       87 RETURN                           R4 -1
