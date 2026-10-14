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
       43 DUPTABLE                         R10 K42 [{["Id"] = "ReportIllegalContent", ["Type"] = "Action", ["Action"], ["Visibility"], ["ShowIcon"] = False}]
       44 DUPTABLE                         R11 K44 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/ReportIllegalContent", ["Category"] = "Actions"}]
       45 SETTABLEKS                       R11 R10 K13 ["Action"]
       47 DUPTABLE                         R11 K46 [{"FastFlag"}]
       48 DUPTABLE                         R12 K48 [{"EnableIfAll"}]
       49 NEWTABLE                         R13 0 1
       51 LOADK                            R14 K49 ["ReportIllegalContentAction"]
       52 SETLIST                          R13 R14 1 [1]
       54 SETTABLEKS                       R13 R12 K47 ["EnableIfAll"]
       56 SETTABLEKS                       R12 R11 K45 ["FastFlag"]
       58 SETTABLEKS                       R11 R10 K41 ["Visibility"]
       60 DUPTABLE                         R11 K35 [{["Type"] = "Separator"}]
       61 DUPTABLE                         R12 K51 [{["Id"] = "OpenLogsFolder", ["Type"] = "Action", ["Action"], ["Visibility"], ["ShowIcon"] = False}]
       62 DUPTABLE                         R13 K52 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "OpenLogsFolder", ["Category"] = "Actions"}]
       63 SETTABLEKS                       R13 R12 K13 ["Action"]
       65 DUPTABLE                         R13 K46 [{"FastFlag"}]
       66 DUPTABLE                         R14 K48 [{"EnableIfAll"}]
       67 NEWTABLE                         R15 0 1
       69 LOADK                            R16 K53 ["StudioOpenLogsAction"]
       70 SETLIST                          R15 R16 1 [1]
       72 SETTABLEKS                       R15 R14 K47 ["EnableIfAll"]
       74 SETTABLEKS                       R14 R13 K45 ["FastFlag"]
       76 SETTABLEKS                       R13 R12 K41 ["Visibility"]
       78 SETLIST                          R3 R4 9 [1]
       80 MOVE                             R4 R1
       81 MOVE                             R5 R3
       82 CALL                             R4 1 -1
       83 RETURN                           R4 -1
