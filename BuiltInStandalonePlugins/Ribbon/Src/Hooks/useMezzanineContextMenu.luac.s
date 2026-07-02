PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["join"]
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R4 K9 [{["Category"] = "Widgets", ["ItemId"] = "Mezzanine"}]
       12 CALL                             R2 2 1
       13 NEWTABLE                         R3 0 5
       15 DUPTABLE                         R4 K17 [{["Id"] = "ManageTabs", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["join"]
       19 GETUPVAL                         R6 1
       20 DUPTABLE                         R7 K19 [{["Category"] = "Actions", ["ItemId"] = "ManageTabs"}]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K14 ["Action"]
       24 DUPTABLE                         R5 K21 [{["Type"] = "Separator"}]
       25 DUPTABLE                         R6 K23 [{["Id"] = "DockUndockRibbon", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K4 ["join"]
       29 GETUPVAL                         R8 1
       30 DUPTABLE                         R9 K24 [{["Category"] = "Actions", ["ItemId"] = "DockUndockRibbon"}]
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R6 K14 ["Action"]
       34 DUPTABLE                         R7 K26 [{["Id"] = "CompactDensity", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K4 ["join"]
       38 GETUPVAL                         R9 1
       39 DUPTABLE                         R10 K27 [{["Category"] = "Actions", ["ItemId"] = "CompactDensity"}]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K14 ["Action"]
       43 DUPTABLE                         R8 K29 [{["Id"] = "ShowHideLabels", ["Type"] = "Option", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K4 ["join"]
       47 GETUPVAL                         R10 1
       48 DUPTABLE                         R11 K30 [{["Category"] = "Actions", ["ItemId"] = "ShowHideLabels"}]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K14 ["Action"]
       52 SETLIST                          R3 R4 5 [1]
       54 DUPTABLE                         R4 K33 [{["Type"] = "Column", ["Children"]}]
       55 SETTABLEKS                       R3 R4 K32 ["Children"]
       57 GETUPVAL                         R5 2
       58 NEWTABLE                         R6 0 1
       60 MOVE                             R7 R4
       61 SETLIST                          R6 R7 1 [1]
       63 MOVE                             R7 R2
       64 DUPTABLE                         R8 K37 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
       65 GETIMPORT                        R9 K40 [Vector2.new]
       67 LOADN                            R10 0
       68 LOADN                            R11 0
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K34 ["SubjectAnchorPoint"]
       72 GETIMPORT                        R9 K40 [Vector2.new]
       74 LOADN                            R10 0
       75 LOADN                            R11 0
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K35 ["TargetAnchorPoint"]
       79 GETIMPORT                        R9 K40 [Vector2.new]
       81 GETTABLEKS                       R10 R1 K41 ["Position"]
       83 GETTABLEKS                       R10 R10 K42 ["X"]
       85 GETTABLEKS                       R11 R1 K41 ["Position"]
       87 GETTABLEKS                       R11 R11 K43 ["Y"]
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K36 ["Offset"]
       92 CALL                             R5 3 0
       93 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 2
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 SETLIST                          R4 R5 2 [1]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Types"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K12 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["ControlsView"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K12 ["Src"]
       47 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       49 GETTABLEKS                       R8 R8 K17 ["useMenu"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K18 [PROTO_1]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 RETURN                           R8 1
