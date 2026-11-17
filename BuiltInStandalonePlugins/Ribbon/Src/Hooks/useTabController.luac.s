PROTO_0:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/DeleteTab"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUri"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 8
        7 DUPTABLE                         R3 K6 [{["Id"] = "Hide", ["Text"], ["ReserveCheckmarkSpace"] = True}]
        8 GETUPVAL                         R4 2
        9 LOADK                            R6 K7 ["Plugin"]
       10 LOADK                            R7 K8 ["Tab_Hide"]
       11 NAMECALL                         R4 R4 K9 ["getText"]
       13 CALL                             R4 3 1
       14 SETTABLEKS                       R4 R3 K3 ["Text"]
       16 DUPTABLE                         R4 K11 [{["Id"] = "Duplicate", ["Text"], ["ReserveCheckmarkSpace"] = True}]
       17 GETUPVAL                         R5 2
       18 LOADK                            R7 K7 ["Plugin"]
       19 LOADK                            R8 K12 ["Tab_Duplicate"]
       20 NAMECALL                         R5 R5 K9 ["getText"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R4 K3 ["Text"]
       25 DUPTABLE                         R5 K15 [{["Id"] = "Separator", ["Type"] = "Separator"}]
       26 DUPTABLE                         R6 K18 [{["Id"] = "ManageTabs", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K19 ["join"]
       30 MOVE                             R8 R0
       31 DUPTABLE                         R9 K23 [{["Category"] = "Actions", ["ItemId"] = "ManageTabs"}]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K17 ["Action"]
       35 DUPTABLE                         R7 K15 [{["Id"] = "Separator", ["Type"] = "Separator"}]
       36 DUPTABLE                         R8 K25 [{["Id"] = "DockUndockRibbon", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K19 ["join"]
       40 MOVE                             R10 R0
       41 DUPTABLE                         R11 K26 [{["Category"] = "Actions", ["ItemId"] = "DockUndockRibbon"}]
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K17 ["Action"]
       45 DUPTABLE                         R9 K28 [{["Id"] = "CompactDensity", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K19 ["join"]
       49 MOVE                             R11 R0
       50 DUPTABLE                         R12 K29 [{["Category"] = "Actions", ["ItemId"] = "CompactDensity"}]
       51 CALL                             R10 2 1
       52 SETTABLEKS                       R10 R9 K17 ["Action"]
       54 DUPTABLE                         R10 K31 [{["Id"] = "ShowHideLabels", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K19 ["join"]
       58 MOVE                             R12 R0
       59 DUPTABLE                         R13 K32 [{["Category"] = "Actions", ["ItemId"] = "ShowHideLabels"}]
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K17 ["Action"]
       63 SETLIST                          R2 R3 8 [1]
       65 CALL                             R1 1 -1
       66 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUri"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NEWTABLE                         R2 0 10
        7 DUPTABLE                         R3 K6 [{["Id"] = "Rename", ["Text"], ["ReserveCheckmarkSpace"] = True}]
        8 GETUPVAL                         R4 2
        9 LOADK                            R6 K7 ["Plugin"]
       10 LOADK                            R7 K8 ["Tab_Rename"]
       11 NAMECALL                         R4 R4 K9 ["getText"]
       13 CALL                             R4 3 1
       14 SETTABLEKS                       R4 R3 K3 ["Text"]
       16 GETUPVAL                         R5 3
       17 GETTABLEN                        R4 R5 1
       18 GETUPVAL                         R6 3
       19 GETTABLEN                        R5 R6 2
       20 DUPTABLE                         R6 K11 [{["Id"] = "Delete", ["Text"], ["ReserveCheckmarkSpace"] = True}]
       21 GETUPVAL                         R7 2
       22 LOADK                            R9 K7 ["Plugin"]
       23 LOADK                            R10 K12 ["Tab_Delete"]
       24 NAMECALL                         R7 R7 K9 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K3 ["Text"]
       29 DUPTABLE                         R7 K15 [{["Id"] = "Separator", ["Type"] = "Separator"}]
       30 DUPTABLE                         R8 K18 [{["Id"] = "ManageTabs", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K19 ["join"]
       34 MOVE                             R10 R0
       35 DUPTABLE                         R11 K23 [{["Category"] = "Actions", ["ItemId"] = "ManageTabs"}]
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K17 ["Action"]
       39 DUPTABLE                         R9 K15 [{["Id"] = "Separator", ["Type"] = "Separator"}]
       40 DUPTABLE                         R10 K25 [{["Id"] = "DockUndockRibbon", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K19 ["join"]
       44 MOVE                             R12 R0
       45 DUPTABLE                         R13 K26 [{["Category"] = "Actions", ["ItemId"] = "DockUndockRibbon"}]
       46 CALL                             R11 2 1
       47 SETTABLEKS                       R11 R10 K17 ["Action"]
       49 DUPTABLE                         R11 K28 [{["Id"] = "CompactDensity", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       50 GETUPVAL                         R12 4
       51 GETTABLEKS                       R12 R12 K19 ["join"]
       53 MOVE                             R13 R0
       54 DUPTABLE                         R14 K29 [{["Category"] = "Actions", ["ItemId"] = "CompactDensity"}]
       55 CALL                             R12 2 1
       56 SETTABLEKS                       R12 R11 K17 ["Action"]
       58 DUPTABLE                         R12 K31 [{["Id"] = "ShowHideLabels", ["Action"], ["ReserveCheckmarkSpace"] = True}]
       59 GETUPVAL                         R13 4
       60 GETTABLEKS                       R13 R13 K19 ["join"]
       62 MOVE                             R14 R0
       63 DUPTABLE                         R15 K32 [{["Category"] = "Actions", ["ItemId"] = "ShowHideLabels"}]
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K17 ["Action"]
       67 SETLIST                          R2 R3 10 [1]
       69 CALL                             R1 1 -1
       70 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R3 R2 K0 ["Id"]
        2 JUMPIFNOTEQKS                    R3 K1 ["Hide"] ; [+14]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 JUMPIF                           R3 ; [+5]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R4 K4 ["Cannot toggle visibility of this tab"]
       11 CALL                             R3 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R2 K0 ["Id"]
       19 JUMPIFNOTEQKS                    R3 K5 ["Rename"] ; [+33]
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R0
       23 CALL                             R3 1 1
       24 JUMPIF                           R3 ; [+5]
       25 GETIMPORT                        R3 K3 [warn]
       27 LOADK                            R4 K6 ["Cannot rename this tab"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 3
       31 MOVE                             R4 R0
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 4
       34 NAMECALL                         R3 R3 K7 ["GetUri"]
       36 CALL                             R3 1 1
       37 GETUPVAL                         R4 5
       38 GETTABLEKS                       R4 R4 K8 ["join"]
       40 MOVE                             R5 R3
       41 DUPTABLE                         R6 K13 [{["Category"] = "Panels", ["ItemId"] = "Floating"}]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 4
       44 LOADK                            R7 K10 ["Panels"]
       45 NAMECALL                         R5 R5 K14 ["GetPluginComponent"]
       47 CALL                             R5 2 1
       48 MOVE                             R8 R4
       49 NAMECALL                         R6 R5 K15 ["HideAsync"]
       51 CALL                             R6 2 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R3 R2 K0 ["Id"]
       55 JUMPIFNOTEQKS                    R3 K16 ["Duplicate"] ; [+18]
       57 GETUPVAL                         R3 6
       58 MOVE                             R4 R0
       59 CALL                             R3 1 1
       60 JUMPIF                           R3 ; [+5]
       61 GETIMPORT                        R3 K3 [warn]
       63 LOADK                            R4 K17 ["Cannot duplicate this tab"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R3 7
       67 MOVE                             R4 R0
       68 MOVE                             R5 R1
       69 GETUPVAL                         R6 8
       70 MOVE                             R7 R0
       71 CALL                             R6 1 -1
       72 CALL                             R3 -1 0
       73 RETURN                           R0 0
       74 GETTABLEKS                       R3 R2 K0 ["Id"]
       76 JUMPIFNOTEQKS                    R3 K18 ["Delete"] ; [+15]
       78 GETUPVAL                         R3 9
       79 MOVE                             R4 R0
       80 CALL                             R3 1 1
       81 JUMPIF                           R3 ; [+5]
       82 GETIMPORT                        R3 K3 [warn]
       84 LOADK                            R4 K19 ["Cannot delete this tab"]
       85 CALL                             R3 1 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R3 10
       88 SETTABLEKS                       R0 R3 K20 ["current"]
       90 GETUPVAL                         R3 11
       91 CALL                             R3 0 0
       92 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+5]
        4 GETIMPORT                        R2 K1 [warn]
        6 LOADK                            R3 K2 ["Cannot rename this tab"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 LOADN                            R4 1
       10 LOADN                            R5 30
       11 FASTCALL3                        STRING_SUB R1 R4 R5
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K5 [string.sub]
       16 CALL                             R2 3 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R4 R0 K6 ["Filename"]
       20 MOVE                             R5 R2
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 2
       23 LOADNIL                          R4
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 0
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K0 ["Visible"]
        9 JUMPIFNOT                        R7 ; [+6]
       10 ADDK                             R1 R1 K1 [1]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R8 R6 K2 ["Identifier"]
       14 CALL                             R7 1 1
       15 SETTABLE                         R1 R0 R7
       16 FORGLOOP                         R2 2 ; [-10]
       18 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["Plugin"]
        3 LOADK                            R4 K1 ["Tab_Untitled"]
        4 NAMECALL                         R1 R1 K2 ["getText"]
        6 CALL                             R1 3 -1
        7 CALL                             R0 -1 1
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R3 2
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 3
       14 DUPTABLE                         R4 K2 [{"Identifier", "VisibleTabIndex"}]
       15 SETTABLEKS                       R0 R4 K0 ["Identifier"]
       17 GETUPVAL                         R6 4
       18 GETUPVAL                         R7 5
       19 MOVE                             R8 R0
       20 CALL                             R7 1 1
       21 GETTABLE                         R5 R6 R7
       22 SETTABLEKS                       R5 R4 K1 ["VisibleTabIndex"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["child"]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 LOADB                            R5 0
       12 LOADNIL                          R6
       13 LOADB                            R7 0
       14 GETUPVAL                         R8 3
       15 JUMPIFEQKNIL                     R8 ; [+18]
       17 LOADB                            R7 0
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R8 R8 K1 ["Type"]
       21 GETTABLEKS                       R9 R0 K1 ["Type"]
       23 JUMPIFNOTEQ                      R8 R9 ; [+10]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K2 ["Filename"]
       28 GETTABLEKS                       R9 R0 K2 ["Filename"]
       30 JUMPIFEQ                         R8 R9 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 GETUPVAL                         R8 4
       35 MOVE                             R9 R0
       36 CALL                             R8 1 1
       37 JUMPIFNOT                        R8 ; [+20]
       38 LOADK                            R3 K3 ["+"]
       39 DUPTABLE                         R8 K6 [{"Title", "Text"}]
       40 GETUPVAL                         R9 5
       41 LOADK                            R11 K4 ["Title"]
       42 LOADK                            R12 K7 ["AddNewTab"]
       43 NAMECALL                         R9 R9 K8 ["getText"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K4 ["Title"]
       48 GETUPVAL                         R9 5
       49 LOADK                            R11 K9 ["Tooltip"]
       50 LOADK                            R12 K7 ["AddNewTab"]
       51 NAMECALL                         R9 R9 K8 ["getText"]
       53 CALL                             R9 3 1
       54 SETTABLEKS                       R9 R8 K5 ["Text"]
       56 MOVE                             R4 R8
       57 JUMP                             ; [+31]
       58 GETUPVAL                         R8 6
       59 GETTABLE                         R3 R8 R1
       60 LOADB                            R8 0
       61 GETUPVAL                         R9 7
       62 JUMPIFEQKNIL                     R9 ; [+18]
       64 LOADB                            R8 0
       65 GETUPVAL                         R9 7
       66 GETTABLEKS                       R9 R9 K1 ["Type"]
       68 GETTABLEKS                       R10 R0 K1 ["Type"]
       70 JUMPIFNOTEQ                      R9 R10 ; [+10]
       72 GETUPVAL                         R9 7
       73 GETTABLEKS                       R9 R9 K2 ["Filename"]
       75 GETTABLEKS                       R10 R0 K2 ["Filename"]
       77 JUMPIFEQ                         R9 R10 ; [+2]
       79 LOADB                            R8 0 +1
       80 LOADB                            R8 1
       81 MOVE                             R5 R8
       82 GETTABLEKS                       R8 R0 K1 ["Type"]
       84 JUMPIFNOTEQKS                    R8 K10 ["BuiltIn"] ; [+3]
       86 GETUPVAL                         R6 8
       87 JUMP                             ; [+1]
       88 GETUPVAL                         R6 9
       89 DUPTABLE                         R8 K18 [{"Uri", "Text", "Tooltip", "Selected", "OnSelected", "ContextMenuItems", "OnContextMenuItemSelected", "Editing", "OnEditCommitted"}]
       90 SETTABLEKS                       R2 R8 K11 ["Uri"]
       92 SETTABLEKS                       R3 R8 K5 ["Text"]
       94 SETTABLEKS                       R4 R8 K9 ["Tooltip"]
       96 SETTABLEKS                       R5 R8 K12 ["Selected"]
       98 NEWCLOSURE                       R9 P0
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          VAL R0
      101 SETTABLEKS                       R9 R8 K13 ["OnSelected"]
      103 SETTABLEKS                       R6 R8 K14 ["ContextMenuItems"]
      105 NEWCLOSURE                       R9 P1
      106 CAPTURE                          UPVAL U11
      107 CAPTURE                          VAL R0
      108 CAPTURE                          REF R3
      109 SETTABLEKS                       R9 R8 K15 ["OnContextMenuItemSelected"]
      111 SETTABLEKS                       R7 R8 K16 ["Editing"]
      113 NEWCLOSURE                       R9 P2
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R9 R8 K17 ["OnEditCommitted"]
      118 CLOSEUPVALS                      R3
      119 RETURN                           R8 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"GetTabProps", "OnOverflowMenuAddTab"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["GetTabProps"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["OnOverflowMenuAddTab"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["use"]
        7 CALL                             R3 0 1
        8 NAMECALL                         R3 R3 K1 ["get"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 3
       14 GETUPVAL                         R6 4
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R6 R5 K2 ["Definition"]
       18 GETTABLEKS                       R7 R6 K3 ["Layout"]
       20 GETTABLEKS                       R7 R7 K4 ["TabLayout"]
       22 GETTABLEKS                       R8 R5 K5 ["AddTab"]
       24 GETTABLEKS                       R9 R5 K6 ["DeleteTab"]
       26 GETTABLEKS                       R10 R5 K7 ["DuplicateTab"]
       28 GETTABLEKS                       R11 R5 K8 ["RenameTab"]
       30 GETTABLEKS                       R12 R5 K9 ["SelectTab"]
       32 GETTABLEKS                       R13 R5 K10 ["ToggleTabVisibility"]
       34 GETUPVAL                         R14 5
       35 LOADNIL                          R15
       36 CALL                             R14 1 1
       37 GETUPVAL                         R16 6
       38 JUMPIFNOT                        R16 ; [+12]
       39 GETUPVAL                         R15 7
       40 NEWCLOSURE                       R16 P0
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R17 0 1
       46 MOVE                             R18 R3
       47 SETLIST                          R17 R18 1 [1]
       49 CALL                             R15 2 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R15
       52 GETUPVAL                         R16 10
       53 DUPTABLE                         R17 K21 [{["Intent"] = "Destructive", ["Title"], ["ToolDialog"] = True, ["Modal"] = True, ["Heading"], ["ActionPrimary"], ["ActionSecondary"], ["MigrateToStudioFoundation"]}]
       54 LOADK                            R20 K22 ["Plugin"]
       55 LOADK                            R21 K23 ["DeleteTab_Title"]
       56 NAMECALL                         R18 R2 K24 ["getText"]
       58 CALL                             R18 3 1
       59 SETTABLEKS                       R18 R17 K13 ["Title"]
       61 LOADK                            R20 K22 ["Plugin"]
       62 LOADK                            R21 K25 ["DeleteTab_Text"]
       63 NAMECALL                         R18 R2 K24 ["getText"]
       65 CALL                             R18 3 1
       66 SETTABLEKS                       R18 R17 K17 ["Heading"]
       68 GETUPVAL                         R18 11
       69 GETTABLEKS                       R18 R18 K26 ["join"]
       71 GETUPVAL                         R19 12
       72 GETTABLEKS                       R19 R19 K27 ["OK"]
       74 DUPTABLE                         R20 K29 [{"OnActivated"}]
       75 NEWCLOSURE                       R21 P1
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R21 R20 K28 ["OnActivated"]
       80 CALL                             R18 2 1
       81 SETTABLEKS                       R18 R17 K18 ["ActionPrimary"]
       83 GETUPVAL                         R18 12
       84 GETTABLEKS                       R18 R18 K30 ["CANCEL"]
       86 SETTABLEKS                       R18 R17 K19 ["ActionSecondary"]
       88 SETTABLEKS                       R15 R17 K20 ["MigrateToStudioFoundation"]
       90 CALL                             R16 1 1
       91 GETUPVAL                         R17 13
       92 CALL                             R17 0 1
       93 GETUPVAL                         R18 7
       94 NEWCLOSURE                       R19 P2
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U14
       97 CAPTURE                          VAL R2
       98 CAPTURE                          UPVAL U9
       99 NEWTABLE                         R20 0 1
      101 GETTABLEKS                       R21 R2 K31 ["locale"]
      103 SETLIST                          R20 R21 1 [1]
      105 CALL                             R18 2 1
      106 GETUPVAL                         R19 7
      107 NEWCLOSURE                       R20 P3
      108 CAPTURE                          VAL R3
      109 CAPTURE                          UPVAL U14
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R18
      112 CAPTURE                          UPVAL U9
      113 NEWTABLE                         R21 0 2
      115 GETTABLEKS                       R22 R2 K31 ["locale"]
      117 MOVE                             R23 R18
      118 SETLIST                          R21 R22 2 [1]
      120 CALL                             R19 2 1
      121 GETUPVAL                         R20 15
      122 LOADNIL                          R21
      123 CALL                             R20 1 2
      124 GETUPVAL                         R22 16
      125 NEWCLOSURE                       R23 P4
      126 CAPTURE                          UPVAL U17
      127 CAPTURE                          VAL R13
      128 CAPTURE                          UPVAL U18
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R3
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          UPVAL U19
      133 CAPTURE                          VAL R10
      134 CAPTURE                          UPVAL U20
      135 CAPTURE                          UPVAL U21
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R16
      138 NEWTABLE                         R24 0 5
      140 MOVE                             R25 R13
      141 MOVE                             R26 R21
      142 MOVE                             R27 R10
      143 MOVE                             R28 R9
      144 MOVE                             R29 R16
      145 SETLIST                          R24 R25 5 [1]
      147 CALL                             R22 2 1
      148 GETUPVAL                         R23 16
      149 NEWCLOSURE                       R24 P5
      150 CAPTURE                          UPVAL U18
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R21
      153 NEWTABLE                         R25 0 3
      155 MOVE                             R26 R8
      156 MOVE                             R27 R11
      157 MOVE                             R28 R21
      158 SETLIST                          R25 R26 3 [1]
      160 CALL                             R23 2 1
      161 GETUPVAL                         R24 7
      162 NEWCLOSURE                       R25 P6
      163 CAPTURE                          VAL R7
      164 CAPTURE                          UPVAL U22
      165 NEWTABLE                         R26 0 1
      167 MOVE                             R27 R7
      168 SETLIST                          R26 R27 1 [1]
      170 CALL                             R24 2 1
      171 GETUPVAL                         R25 16
      172 NEWCLOSURE                       R26 P7
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R21
      176 NEWTABLE                         R27 0 3
      178 MOVE                             R28 R8
      179 GETTABLEKS                       R29 R2 K31 ["locale"]
      181 MOVE                             R30 R21
      182 SETLIST                          R27 R28 3 [1]
      184 CALL                             R25 2 1
      185 GETUPVAL                         R26 16
      186 NEWCLOSURE                       R27 P8
      187 CAPTURE                          UPVAL U23
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R24
      192 CAPTURE                          UPVAL U22
      193 NEWTABLE                         R28 0 4
      195 MOVE                             R29 R25
      196 MOVE                             R30 R1
      197 MOVE                             R31 R12
      198 MOVE                             R32 R24
      199 SETLIST                          R28 R29 4 [1]
      201 CALL                             R26 2 1
      202 GETUPVAL                         R27 16
      203 NEWCLOSURE                       R28 P9
      204 CAPTURE                          UPVAL U22
      205 CAPTURE                          UPVAL U9
      206 CAPTURE                          VAL R0
      207 CAPTURE                          VAL R20
      208 CAPTURE                          UPVAL U23
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R26
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R23
      217 NEWTABLE                         R29 0 9
      219 MOVE                             R30 R0
      220 MOVE                             R31 R20
      221 MOVE                             R32 R17
      222 MOVE                             R33 R4
      223 MOVE                             R34 R18
      224 MOVE                             R35 R19
      225 MOVE                             R36 R26
      226 MOVE                             R37 R22
      227 MOVE                             R38 R23
      228 SETLIST                          R29 R30 9 [1]
      230 CALL                             R27 2 1
      231 GETUPVAL                         R28 7
      232 NEWCLOSURE                       R29 P10
      233 CAPTURE                          UPVAL U14
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R25
      236 NEWTABLE                         R30 0 1
      238 MOVE                             R31 R27
      239 SETLIST                          R30 R31 1 [1]
      241 CALL                             R28 2 1
      242 RETURN                           R28 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Components"]
       47 GETTABLEKS                       R7 R7 K16 ["Tab"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R8 K13 ["Util"]
       56 GETTABLEKS                       R8 R8 K17 ["TabTraits"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K9 ["Src"]
       63 GETTABLEKS                       R9 R9 K13 ["Util"]
       65 GETTABLEKS                       R9 R9 K18 ["controlsIdentifierToString"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K9 ["Src"]
       72 GETTABLEKS                       R10 R10 K13 ["Util"]
       74 GETTABLEKS                       R10 R10 K19 ["deepFreeze"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R0 K9 ["Src"]
       81 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       83 GETTABLEKS                       R11 R11 K21 ["useActiveTabIdentifier"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K9 ["Src"]
       90 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       92 GETTABLEKS                       R12 R12 K22 ["useLocalizedTabNames"]
       94 CALL                             R11 1 1
       95 GETTABLEKS                       R12 R1 K23 ["UI"]
       97 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       99 GETTABLEKS                       R12 R12 K24 ["RESTRICTED_useDialog"]
      101 GETTABLEKS                       R13 R1 K13 ["Util"]
      103 GETTABLEKS                       R13 R13 K25 ["DialogAction"]
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R15 R0 K6 ["Packages"]
      109 GETTABLEKS                       R15 R15 K26 ["Dash"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K9 ["Src"]
      116 GETTABLEKS                       R16 R16 K27 ["SharedFlags"]
      118 GETTABLEKS                       R16 R16 K28 ["getFFlagRibbonMigrateUseDialog"]
      120 CALL                             R15 1 1
      121 CALL                             R15 0 1
      122 GETTABLEKS                       R16 R1 K29 ["ContextServices"]
      124 GETTABLEKS                       R16 R16 K30 ["Localization"]
      126 GETTABLEKS                       R17 R1 K29 ["ContextServices"]
      128 GETTABLEKS                       R17 R17 K31 ["Plugin"]
      130 GETTABLEKS                       R18 R4 K15 ["Components"]
      132 GETTABLEKS                       R18 R18 K32 ["Dialog"]
      134 GETTABLEKS                       R19 R7 K33 ["hasToggleableVisibility"]
      136 GETTABLEKS                       R20 R7 K34 ["isAddButton"]
      138 GETTABLEKS                       R21 R7 K35 ["isDeletable"]
      140 GETTABLEKS                       R22 R7 K36 ["isDuplicable"]
      142 GETTABLEKS                       R23 R7 K37 ["isRenamable"]
      144 GETTABLEKS                       R24 R7 K38 ["shouldCopyCustomTools"]
      146 GETTABLEKS                       R25 R2 K39 ["useCallback"]
      148 GETTABLEKS                       R26 R2 K40 ["useContext"]
      150 GETTABLEKS                       R27 R2 K41 ["useMemo"]
      152 GETTABLEKS                       R28 R2 K42 ["useState"]
      154 GETTABLEKS                       R29 R2 K43 ["useRef"]
      156 DUPCLOSURE                       R30 K44 [PROTO_14]
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R26
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R29
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R27
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R28
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R20
      181 RETURN                           R30 1
