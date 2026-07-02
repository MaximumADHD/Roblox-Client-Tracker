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
       23 NEWTABLE                         R3 0 1
       25 DUPTABLE                         R4 K13 [{["Type"] = "Column", ["Children"]}]
       26 NEWTABLE                         R5 0 9
       28 DUPTABLE                         R6 K20 [{["Id"] = "OpenDocumentationUrl", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       29 DUPTABLE                         R7 K29 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/Documentation", ["Category"] = "Actions"}]
       30 SETTABLEKS                       R7 R6 K17 ["Action"]
       32 DUPTABLE                         R7 K31 [{["Id"] = "OpenTutorialsUrl", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       33 DUPTABLE                         R8 K33 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/Tutorials", ["Category"] = "Actions"}]
       34 SETTABLEKS                       R8 R7 K17 ["Action"]
       36 DUPTABLE                         R8 K35 [{["Id"] = "OpenDeveloperForumUrl", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       37 DUPTABLE                         R9 K37 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/DeveloperForum", ["Category"] = "Actions"}]
       38 SETTABLEKS                       R9 R8 K17 ["Action"]
       40 DUPTABLE                         R9 K39 [{["Type"] = "Separator"}]
       41 DUPTABLE                         R10 K41 [{["Id"] = "StartStudioTour", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       42 DUPTABLE                         R11 K43 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "StudioTour", ["Category"] = "Actions"}]
       43 SETTABLEKS                       R11 R10 K17 ["Action"]
       45 DUPTABLE                         R11 K39 [{["Type"] = "Separator"}]
       46 DUPTABLE                         R12 K47 [{["Id"] = "ReportIllegalContent", ["Type"] = "Option", ["Action"], ["FastFlag"] = "ReportIllegalContentAction", ["TextOnly"] = True}]
       47 DUPTABLE                         R13 K49 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/ReportIllegalContent", ["Category"] = "Actions"}]
       48 SETTABLEKS                       R13 R12 K17 ["Action"]
       50 DUPTABLE                         R13 K39 [{["Type"] = "Separator"}]
       51 DUPTABLE                         R14 K52 [{["Id"] = "OpenLogsFolder", ["Type"] = "Option", ["Action"], ["FastFlag"] = "StudioOpenLogsAction", ["TextOnly"] = True}]
       52 DUPTABLE                         R15 K53 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "OpenLogsFolder", ["Category"] = "Actions"}]
       53 SETTABLEKS                       R15 R14 K17 ["Action"]
       55 SETLIST                          R5 R6 9 [1]
       57 SETTABLEKS                       R5 R4 K12 ["Children"]
       59 SETLIST                          R3 R4 1 [1]
       61 MOVE                             R4 R1
       62 MOVE                             R5 R3
       63 CALL                             R4 1 -1
       64 RETURN                           R4 -1
