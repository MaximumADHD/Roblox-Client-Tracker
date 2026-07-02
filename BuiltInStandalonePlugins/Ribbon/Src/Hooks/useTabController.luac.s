PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"GetTabProps", "OnOverflowMenuAddTab"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["GetTabProps"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["OnOverflowMenuAddTab"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_13:
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
       37 GETUPVAL                         R15 6
       38 DUPTABLE                         R16 K20 [{["Intent"] = "Destructive", ["Title"], ["ToolDialog"] = True, ["Modal"] = True, ["Heading"], ["ActionPrimary"], ["ActionSecondary"]}]
       39 LOADK                            R19 K21 ["Plugin"]
       40 LOADK                            R20 K22 ["DeleteTab_Title"]
       41 NAMECALL                         R17 R2 K23 ["getText"]
       43 CALL                             R17 3 1
       44 SETTABLEKS                       R17 R16 K13 ["Title"]
       46 LOADK                            R19 K21 ["Plugin"]
       47 LOADK                            R20 K24 ["DeleteTab_Text"]
       48 NAMECALL                         R17 R2 K23 ["getText"]
       50 CALL                             R17 3 1
       51 SETTABLEKS                       R17 R16 K17 ["Heading"]
       53 GETUPVAL                         R17 7
       54 GETTABLEKS                       R17 R17 K25 ["join"]
       56 GETUPVAL                         R18 8
       57 GETTABLEKS                       R18 R18 K26 ["OK"]
       59 DUPTABLE                         R19 K28 [{"OnActivated"}]
       60 NEWCLOSURE                       R20 P0
       61 CAPTURE                          VAL R14
       62 CAPTURE                          VAL R9
       63 SETTABLEKS                       R20 R19 K27 ["OnActivated"]
       65 CALL                             R17 2 1
       66 SETTABLEKS                       R17 R16 K18 ["ActionPrimary"]
       68 GETUPVAL                         R17 8
       69 GETTABLEKS                       R17 R17 K29 ["CANCEL"]
       71 SETTABLEKS                       R17 R16 K19 ["ActionSecondary"]
       73 CALL                             R15 1 1
       74 GETUPVAL                         R16 9
       75 CALL                             R16 0 1
       76 GETUPVAL                         R17 10
       77 NEWCLOSURE                       R18 P1
       78 CAPTURE                          VAL R3
       79 CAPTURE                          UPVAL U11
       80 CAPTURE                          VAL R2
       81 CAPTURE                          UPVAL U12
       82 NEWTABLE                         R19 0 1
       84 GETTABLEKS                       R20 R2 K30 ["locale"]
       86 SETLIST                          R19 R20 1 [1]
       88 CALL                             R17 2 1
       89 GETUPVAL                         R18 10
       90 NEWCLOSURE                       R19 P2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          UPVAL U11
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R17
       95 CAPTURE                          UPVAL U12
       96 NEWTABLE                         R20 0 2
       98 GETTABLEKS                       R21 R2 K30 ["locale"]
      100 MOVE                             R22 R17
      101 SETLIST                          R20 R21 2 [1]
      103 CALL                             R18 2 1
      104 GETUPVAL                         R19 13
      105 LOADNIL                          R20
      106 CALL                             R19 1 2
      107 GETUPVAL                         R21 14
      108 NEWCLOSURE                       R22 P3
      109 CAPTURE                          UPVAL U15
      110 CAPTURE                          VAL R13
      111 CAPTURE                          UPVAL U16
      112 CAPTURE                          VAL R20
      113 CAPTURE                          VAL R3
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          UPVAL U17
      116 CAPTURE                          VAL R10
      117 CAPTURE                          UPVAL U18
      118 CAPTURE                          UPVAL U19
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R15
      121 NEWTABLE                         R23 0 5
      123 MOVE                             R24 R13
      124 MOVE                             R25 R20
      125 MOVE                             R26 R10
      126 MOVE                             R27 R9
      127 MOVE                             R28 R15
      128 SETLIST                          R23 R24 5 [1]
      130 CALL                             R21 2 1
      131 GETUPVAL                         R22 14
      132 NEWCLOSURE                       R23 P4
      133 CAPTURE                          UPVAL U16
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R20
      136 NEWTABLE                         R24 0 3
      138 MOVE                             R25 R8
      139 MOVE                             R26 R11
      140 MOVE                             R27 R20
      141 SETLIST                          R24 R25 3 [1]
      143 CALL                             R22 2 1
      144 GETUPVAL                         R23 10
      145 NEWCLOSURE                       R24 P5
      146 CAPTURE                          VAL R7
      147 CAPTURE                          UPVAL U20
      148 NEWTABLE                         R25 0 1
      150 MOVE                             R26 R7
      151 SETLIST                          R25 R26 1 [1]
      153 CALL                             R23 2 1
      154 GETUPVAL                         R24 14
      155 NEWCLOSURE                       R25 P6
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R20
      159 NEWTABLE                         R26 0 3
      161 MOVE                             R27 R8
      162 GETTABLEKS                       R28 R2 K30 ["locale"]
      164 MOVE                             R29 R20
      165 SETLIST                          R26 R27 3 [1]
      167 CALL                             R24 2 1
      168 GETUPVAL                         R25 14
      169 NEWCLOSURE                       R26 P7
      170 CAPTURE                          UPVAL U21
      171 CAPTURE                          VAL R24
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R23
      175 CAPTURE                          UPVAL U20
      176 NEWTABLE                         R27 0 4
      178 MOVE                             R28 R24
      179 MOVE                             R29 R1
      180 MOVE                             R30 R12
      181 MOVE                             R31 R23
      182 SETLIST                          R27 R28 4 [1]
      184 CALL                             R25 2 1
      185 GETUPVAL                         R26 14
      186 NEWCLOSURE                       R27 P8
      187 CAPTURE                          UPVAL U20
      188 CAPTURE                          UPVAL U12
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R19
      191 CAPTURE                          UPVAL U21
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R22
      200 NEWTABLE                         R28 0 9
      202 MOVE                             R29 R0
      203 MOVE                             R30 R19
      204 MOVE                             R31 R16
      205 MOVE                             R32 R4
      206 MOVE                             R33 R17
      207 MOVE                             R34 R18
      208 MOVE                             R35 R25
      209 MOVE                             R36 R21
      210 MOVE                             R37 R22
      211 SETLIST                          R28 R29 9 [1]
      213 CALL                             R26 2 1
      214 GETUPVAL                         R27 10
      215 NEWCLOSURE                       R28 P9
      216 CAPTURE                          UPVAL U11
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R24
      219 NEWTABLE                         R29 0 1
      221 MOVE                             R30 R26
      222 SETLIST                          R29 R30 1 [1]
      224 CALL                             R27 2 1
      225 RETURN                           R27 1

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
       99 GETTABLEKS                       R12 R12 K24 ["useDialog"]
      101 GETTABLEKS                       R13 R1 K13 ["Util"]
      103 GETTABLEKS                       R13 R13 K25 ["DialogAction"]
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R15 R0 K6 ["Packages"]
      109 GETTABLEKS                       R15 R15 K26 ["Dash"]
      111 CALL                             R14 1 1
      112 GETTABLEKS                       R15 R1 K27 ["ContextServices"]
      114 GETTABLEKS                       R15 R15 K28 ["Localization"]
      116 GETTABLEKS                       R16 R1 K27 ["ContextServices"]
      118 GETTABLEKS                       R16 R16 K29 ["Plugin"]
      120 GETTABLEKS                       R17 R7 K30 ["hasToggleableVisibility"]
      122 GETTABLEKS                       R18 R7 K31 ["isAddButton"]
      124 GETTABLEKS                       R19 R7 K32 ["isDeletable"]
      126 GETTABLEKS                       R20 R7 K33 ["isDuplicable"]
      128 GETTABLEKS                       R21 R7 K34 ["isRenamable"]
      130 GETTABLEKS                       R22 R7 K35 ["shouldCopyCustomTools"]
      132 GETTABLEKS                       R23 R2 K36 ["useCallback"]
      134 GETTABLEKS                       R24 R2 K37 ["useContext"]
      136 GETTABLEKS                       R25 R2 K38 ["useMemo"]
      138 GETTABLEKS                       R26 R2 K39 ["useState"]
      140 GETTABLEKS                       R27 R2 K40 ["useRef"]
      142 DUPCLOSURE                       R28 K41 [PROTO_13]
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R27
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R26
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R18
      165 RETURN                           R28 1
