MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SystemMenu"]
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
       23 NEWTABLE                         R3 0 9
       25 DUPTABLE                         R4 K16 [{["Id"] = "OpenDocumentationUrl", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       26 DUPTABLE                         R5 K25 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/Documentation", ["Category"] = "Actions"}]
       27 SETTABLEKS                       R5 R4 K13 ["Action"]
       29 DUPTABLE                         R5 K27 [{["Id"] = "OpenTutorialsUrl", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       30 DUPTABLE                         R6 K29 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/Tutorials", ["Category"] = "Actions"}]
       31 SETTABLEKS                       R6 R5 K13 ["Action"]
       33 DUPTABLE                         R6 K31 [{["Id"] = "OpenDeveloperForumUrl", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       34 DUPTABLE                         R7 K33 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/DeveloperForum", ["Category"] = "Actions"}]
       35 SETTABLEKS                       R7 R6 K13 ["Action"]
       37 DUPTABLE                         R7 K35 [{["Type"] = "Separator"}]
       38 DUPTABLE                         R8 K37 [{["Id"] = "StartStudioTour", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       39 DUPTABLE                         R9 K39 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "StudioTour", ["Category"] = "Actions"}]
       40 SETTABLEKS                       R9 R8 K13 ["Action"]
       42 DUPTABLE                         R9 K35 [{["Type"] = "Separator"}]
       43 DUPTABLE                         R10 K41 [{["Id"] = "ReportIllegalContent", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       44 DUPTABLE                         R11 K43 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/ReportIllegalContent", ["Category"] = "Actions"}]
       45 SETTABLEKS                       R11 R10 K13 ["Action"]
       47 DUPTABLE                         R11 K35 [{["Type"] = "Separator"}]
       48 DUPTABLE                         R12 K45 [{["Id"] = "OpenLogsFolder", ["Type"] = "Action", ["Action"], ["ShowIcon"] = False}]
       49 DUPTABLE                         R13 K46 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "OpenLogsFolder", ["Category"] = "Actions"}]
       50 SETTABLEKS                       R13 R12 K13 ["Action"]
       52 SETLIST                          R3 R4 9 [1]
       54 MOVE                             R4 R1
       55 MOVE                             R5 R3
       56 CALL                             R4 1 -1
       57 RETURN                           R4 -1
