PROTO_0:
        0 DUPTABLE                         R1 K1 [{"items"}]
        1 SETTABLEKS                       R0 R1 K0 ["items"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K0 ["setBrowserLayout"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ViewType"]
        3 GETTABLEKS                       R2 R2 K1 ["Grid"]
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R2 1
       11 LOADK                            R4 K2 ["HeaderBar"]
       12 LOADK                            R5 K3 ["ViewTypeSelectGrid"]
       13 NAMECALL                         R2 R2 K4 ["getText"]
       15 CALL                             R2 3 1
       16 JUMP                             ; [+6]
       17 GETUPVAL                         R2 1
       18 LOADK                            R4 K2 ["HeaderBar"]
       19 LOADK                            R5 K5 ["ViewTypeSelectList"]
       20 NAMECALL                         R2 R2 K4 ["getText"]
       22 CALL                             R2 3 1
       23 JUMPIFNOT                        R1 ; [+8]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["Enums"]
       27 GETTABLEKS                       R3 R3 K7 ["IconName"]
       29 GETTABLEKS                       R3 R3 K1 ["Grid"]
       31 JUMP                             ; [+7]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K6 ["Enums"]
       35 GETTABLEKS                       R3 R3 K7 ["IconName"]
       37 GETTABLEKS                       R3 R3 K8 ["ListBulleted"]
       39 DUPTABLE                         R4 K14 [{"id", "icon", "isChecked", "text", "onActivated"}]
       40 GETUPVAL                         R5 3
       41 CALL                             R5 0 1
       42 SETTABLEKS                       R5 R4 K9 ["id"]
       44 SETTABLEKS                       R3 R4 K10 ["icon"]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K0 ["ViewType"]
       49 JUMPIFEQ                         R6 R0 ; [+2]
       51 LOADB                            R5 0 +1
       52 LOADB                            R5 1
       53 SETTABLEKS                       R5 R4 K11 ["isChecked"]
       55 SETTABLEKS                       R2 R4 K12 ["text"]
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R5 R4 K13 ["onActivated"]
       62 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ViewType"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ViewType"]
        6 GETTABLEKS                       R1 R1 K1 ["Grid"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+7]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R2 3
       12 NAMECALL                         R0 R0 K2 ["setBrowserLayout"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 2
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 GETUPVAL                         R4 4
       20 NAMECALL                         R0 R0 K2 ["setBrowserLayout"]
       22 CALL                             R0 4 0
       23 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R3 K4 [{"id", "isChecked", "text", "onActivated"}]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 SETTABLEKS                       R4 R3 K0 ["id"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K5 ["ViewType"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K5 ["ViewType"]
       11 GETTABLEKS                       R6 R6 K6 ["Grid"]
       13 JUMPIFNOTEQ                      R5 R6 ; [+9]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K7 ["GridSize"]
       18 JUMPIFEQ                         R5 R1 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K8 ["ListRowHeight"]
       26 JUMPIFEQ                         R5 R2 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 SETTABLEKS                       R4 R3 K1 ["isChecked"]
       32 GETUPVAL                         R4 3
       33 LOADK                            R6 K9 ["CompactOptions"]
       34 LOADK                            R7 K10 ["ViewSize%*"]
       35 MOVE                             R9 R0
       36 NAMECALL                         R7 R7 K11 ["format"]
       38 CALL                             R7 2 1
       39 NAMECALL                         R4 R4 K12 ["getText"]
       41 CALL                             R4 3 1
       42 SETTABLEKS                       R4 R3 K2 ["text"]
       44 NEWCLOSURE                       R4 P0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       52 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["LayoutController"]
        2 GETTABLEKS                       R5 R0 K1 ["Localization"]
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R5
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 NEWCLOSURE                       R7 P1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R4
       17 NEWTABLE                         R8 0 2
       19 NEWTABLE                         R10 0 2
       21 MOVE                             R11 R6
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R12 R12 K2 ["ViewType"]
       25 GETTABLEKS                       R12 R12 K3 ["List"]
       27 CALL                             R11 1 1
       28 MOVE                             R12 R6
       29 GETUPVAL                         R13 0
       30 GETTABLEKS                       R13 R13 K2 ["ViewType"]
       32 GETTABLEKS                       R13 R13 K4 ["Grid"]
       34 CALL                             R12 1 1
       35 SETLIST                          R10 R11 2 [1]
       37 DUPTABLE                         R9 K6 [{"items"}]
       38 SETTABLEKS                       R10 R9 K5 ["items"]
       40 NEWTABLE                         R11 0 3
       42 MOVE                             R12 R7
       43 LOADK                            R13 K7 ["Small"]
       44 GETUPVAL                         R14 2
       45 GETTABLEKS                       R14 R14 K8 ["GridCellSizeSmall"]
       47 GETUPVAL                         R15 2
       48 GETTABLEKS                       R15 R15 K9 ["ListRowHeightSmall"]
       50 CALL                             R12 3 1
       51 MOVE                             R13 R7
       52 LOADK                            R14 K10 ["Medium"]
       53 GETUPVAL                         R15 2
       54 GETTABLEKS                       R15 R15 K11 ["GridCellSizeMedium"]
       56 GETUPVAL                         R16 2
       57 GETTABLEKS                       R16 R16 K12 ["ListRowHeightMedium"]
       59 CALL                             R13 3 1
       60 MOVE                             R14 R7
       61 LOADK                            R15 K13 ["Large"]
       62 GETUPVAL                         R16 2
       63 GETTABLEKS                       R16 R16 K14 ["GridCellSizeLarge"]
       65 GETUPVAL                         R17 2
       66 GETTABLEKS                       R17 R17 K15 ["ListRowHeightLarge"]
       68 CALL                             R14 3 1
       69 SETLIST                          R11 R12 3 [1]
       71 DUPTABLE                         R10 K6 [{"items"}]
       72 SETTABLEKS                       R11 R10 K5 ["items"]
       74 SETLIST                          R8 R9 2 [1]
       76 NEWTABLE                         R10 0 2
       78 DUPTABLE                         R11 K18 [{"id", "text", "items"}]
       79 MOVE                             R12 R3
       80 CALL                             R12 0 1
       81 SETTABLEKS                       R12 R11 K16 ["id"]
       83 LOADK                            R14 K19 ["HeaderBar"]
       84 LOADK                            R15 K20 ["ViewTypeSelectTooltip"]
       85 NAMECALL                         R12 R5 K21 ["getText"]
       87 CALL                             R12 3 1
       88 SETTABLEKS                       R12 R11 K17 ["text"]
       90 SETTABLEKS                       R8 R11 K5 ["items"]
       92 GETTABLEKS                       R13 R1 K2 ["ViewType"]
       94 GETUPVAL                         R14 0
       95 GETTABLEKS                       R14 R14 K2 ["ViewType"]
       97 GETTABLEKS                       R14 R14 K4 ["Grid"]
       99 JUMPIFNOTEQ                      R13 R14 ; [+16]
      101 DUPTABLE                         R12 K18 [{"id", "text", "items"}]
      102 MOVE                             R13 R3
      103 CALL                             R13 0 1
      104 SETTABLEKS                       R13 R12 K16 ["id"]
      106 LOADK                            R15 K19 ["HeaderBar"]
      107 LOADK                            R16 K22 ["SortTooltip"]
      108 NAMECALL                         R13 R5 K21 ["getText"]
      110 CALL                             R13 3 1
      111 SETTABLEKS                       R13 R12 K17 ["text"]
      113 SETTABLEKS                       R2 R12 K5 ["items"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R12
      117 SETLIST                          R10 R11 2 [1]
      119 DUPTABLE                         R9 K6 [{"items"}]
      120 SETTABLEKS                       R10 R9 K5 ["items"]
      122 RETURN                           R9 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshAll"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["context"]
        2 GETTABLEKS                       R2 R1 K1 ["ItemsController"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 NEWTABLE                         R4 0 0
        8 LOADN                            R5 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          REF R5
       11 GETTABLEKS                       R7 R0 K3 ["isCompact"]
       13 JUMPIFNOT                        R7 ; [+34]
       14 GETTABLEKS                       R7 R0 K4 ["isSearch"]
       16 JUMPIF                           R7 ; [+31]
       17 NEWTABLE                         R8 0 1
       19 DUPTABLE                         R9 K8 [{"id", "text", "onActivated"}]
       20 MOVE                             R11 R5
       21 ADDK                             R5 R5 K9 [1]
       22 MOVE                             R10 R11
       23 SETTABLEKS                       R10 R9 K5 ["id"]
       25 LOADK                            R12 K10 ["Tooltip"]
       26 LOADK                            R13 K11 ["Refresh"]
       27 NAMECALL                         R10 R3 K12 ["getText"]
       29 CALL                             R10 3 1
       30 SETTABLEKS                       R10 R9 K6 ["text"]
       32 NEWCLOSURE                       R10 P1
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R10 R9 K7 ["onActivated"]
       36 SETLIST                          R8 R9 1 [1]
       38 DUPTABLE                         R7 K14 [{"items"}]
       39 SETTABLEKS                       R8 R7 K13 ["items"]
       41 FASTCALL2                        TABLE_INSERT R4 R7 ; [+5]
       43 MOVE                             R9 R4
       44 MOVE                             R10 R7
       45 GETIMPORT                        R8 K17 [table.insert]
       47 CALL                             R8 2 0
       48 GETTABLEKS                       R7 R0 K3 ["isCompact"]
       50 JUMPIFNOT                        R7 ; [+14]
       51 GETUPVAL                         R9 0
       52 MOVE                             R10 R1
       53 GETTABLEKS                       R11 R0 K18 ["layoutInfo"]
       55 GETTABLEKS                       R12 R0 K19 ["sortOptions"]
       57 MOVE                             R13 R6
       58 CALL                             R9 4 1
       59 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
       61 MOVE                             R8 R4
       62 GETIMPORT                        R7 K17 [table.insert]
       64 CALL                             R7 2 0
       65 GETTABLEKS                       R7 R0 K4 ["isSearch"]
       67 JUMPIFNOT                        R7 ; [+3]
       68 GETTABLEKS                       R7 R0 K20 ["isOmnisearchEnabled"]
       70 JUMPIFNOT                        R7 ; [+10]
       71 MOVE                             R8 R4
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R10 R0 K21 ["filterTypes"]
       75 MOVE                             R11 R6
       76 CALL                             R9 2 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R7 K17 [table.insert]
       80 CALL                             R7 -1 0
       81 CLOSEUPVALS                      R5
       82 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshAll"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R6 R0 K0 ["ItemsController"]
        2 GETTABLEKS                       R7 R0 K1 ["Localization"]
        4 NEWTABLE                         R8 0 0
        6 LOADN                            R9 1
        7 NEWCLOSURE                       R10 P0
        8 CAPTURE                          REF R9
        9 JUMPIF                           R4 ; [+30]
       10 NEWTABLE                         R14 0 1
       12 DUPTABLE                         R15 K5 [{"id", "text", "onActivated"}]
       13 MOVE                             R17 R9
       14 ADDK                             R9 R9 K6 [1]
       15 MOVE                             R16 R17
       16 SETTABLEKS                       R16 R15 K2 ["id"]
       18 LOADK                            R18 K7 ["Tooltip"]
       19 LOADK                            R19 K8 ["Refresh"]
       20 NAMECALL                         R16 R7 K9 ["getText"]
       22 CALL                             R16 3 1
       23 SETTABLEKS                       R16 R15 K3 ["text"]
       25 NEWCLOSURE                       R16 P1
       26 CAPTURE                          VAL R6
       27 SETTABLEKS                       R16 R15 K4 ["onActivated"]
       29 SETLIST                          R14 R15 1 [1]
       31 DUPTABLE                         R13 K11 [{"items"}]
       32 SETTABLEKS                       R14 R13 K10 ["items"]
       34 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
       36 MOVE                             R12 R8
       37 GETIMPORT                        R11 K14 [table.insert]
       39 CALL                             R11 2 0
       40 GETUPVAL                         R13 0
       41 MOVE                             R14 R0
       42 MOVE                             R15 R1
       43 MOVE                             R16 R2
       44 MOVE                             R17 R10
       45 CALL                             R13 4 1
       46 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
       48 MOVE                             R12 R8
       49 GETIMPORT                        R11 K14 [table.insert]
       51 CALL                             R11 2 0
       52 JUMPIFNOT                        R4 ; [+1]
       53 JUMPIFNOT                        R5 ; [+39]
       54 MOVE                             R12 R8
       55 GETUPVAL                         R13 1
       56 MOVE                             R14 R3
       57 MOVE                             R15 R10
       58 CALL                             R13 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R11 K14 [table.insert]
       62 CALL                             R11 -1 0
       63 NEWTABLE                         R14 0 1
       65 DUPTABLE                         R15 K5 [{"id", "text", "onActivated"}]
       66 MOVE                             R17 R9
       67 ADDK                             R9 R9 K6 [1]
       68 MOVE                             R16 R17
       69 SETTABLEKS                       R16 R15 K2 ["id"]
       71 LOADK                            R18 K15 ["Filters"]
       72 LOADK                            R19 K16 ["ResetFilters"]
       73 NAMECALL                         R16 R7 K9 ["getText"]
       75 CALL                             R16 3 1
       76 SETTABLEKS                       R16 R15 K3 ["text"]
       78 NEWCLOSURE                       R16 P2
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R16 R15 K4 ["onActivated"]
       82 SETLIST                          R14 R15 1 [1]
       84 DUPTABLE                         R13 K11 [{"items"}]
       85 SETTABLEKS                       R14 R13 K10 ["items"]
       87 FASTCALL2                        TABLE_INSERT R8 R13 ; [+4]
       89 MOVE                             R12 R8
       90 GETIMPORT                        R11 K14 [table.insert]
       92 CALL                             R11 2 0
       93 CLOSEUPVALS                      R9
       94 RETURN                           R8 1

PROTO_13:
        0 DUPTABLE                         R0 K3 [{"LayoutController", "ItemsController", "Localization"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["use"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["LayoutController"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K4 ["use"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["ItemsController"]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K4 ["use"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K2 ["Localization"]
       19 GETUPVAL                         R1 3
       20 JUMPIFNOT                        R1 ; [+24]
       21 GETUPVAL                         R1 4
       22 DUPTABLE                         R2 K12 [{"context", "layoutInfo", "sortOptions", "filterTypes", "isCompact", "isSearch", "isOmnisearchEnabled"}]
       23 SETTABLEKS                       R0 R2 K5 ["context"]
       25 GETUPVAL                         R3 5
       26 SETTABLEKS                       R3 R2 K6 ["layoutInfo"]
       28 GETUPVAL                         R3 6
       29 SETTABLEKS                       R3 R2 K7 ["sortOptions"]
       31 GETUPVAL                         R3 7
       32 SETTABLEKS                       R3 R2 K8 ["filterTypes"]
       34 GETUPVAL                         R3 8
       35 SETTABLEKS                       R3 R2 K9 ["isCompact"]
       37 GETUPVAL                         R3 9
       38 SETTABLEKS                       R3 R2 K10 ["isSearch"]
       40 GETUPVAL                         R3 10
       41 SETTABLEKS                       R3 R2 K11 ["isOmnisearchEnabled"]
       43 CALL                             R1 1 1
       44 RETURN                           R1 1
       45 GETUPVAL                         R1 11
       46 MOVE                             R2 R0
       47 GETUPVAL                         R3 5
       48 GETUPVAL                         R4 6
       49 GETUPVAL                         R5 7
       50 GETUPVAL                         R6 9
       51 GETUPVAL                         R7 10
       52 CALL                             R1 6 1
       53 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 2
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 CALL                             R5 0 1
       10 GETUPVAL                         R7 5
       11 GETUPVAL                         R8 6
       12 GETTABLEKS                       R8 R8 K0 ["IxpVariable"]
       14 GETTABLEKS                       R8 R8 K1 ["Omnisearch"]
       16 CALL                             R7 1 1
       17 GETUPVAL                         R8 6
       18 GETTABLEKS                       R8 R8 K2 ["IxpValue"]
       20 GETTABLEKS                       R8 R8 K3 ["Experiment"]
       22 JUMPIFEQ                         R7 R8 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 GETUPVAL                         R7 7
       27 CALL                             R7 0 1
       28 GETTABLEKS                       R8 R5 K4 ["IsSearchRequested"]
       30 GETUPVAL                         R9 8
       31 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       33 NEWCLOSURE                       R10 P0
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          VAL R7
       38 CAPTURE                          UPVAL U12
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R6
       45 CAPTURE                          UPVAL U13
       46 NEWTABLE                         R11 0 7
       48 MOVE                             R12 R1
       49 MOVE                             R13 R3
       50 MOVE                             R14 R0
       51 MOVE                             R15 R4
       52 MOVE                             R16 R7
       53 MOVE                             R17 R8
       54 MOVE                             R18 R6
       55 SETLIST                          R11 R12 7 [1]
       57 CALL                             R9 2 -1
       58 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Resources"]
       41 GETTABLEKS                       R6 R6 K13 ["StyleConstants"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["Framework"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K15 ["ContextServices"]
       53 GETTABLEKS                       R8 R7 K16 ["Localization"]
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K8 ["Src"]
       59 GETTABLEKS                       R10 R10 K17 ["Controllers"]
       61 GETTABLEKS                       R10 R10 K18 ["LayoutController"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K8 ["Src"]
       68 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       70 GETTABLEKS                       R11 R11 K19 ["ItemsController"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K8 ["Src"]
       77 GETTABLEKS                       R12 R12 K20 ["Flags"]
       79 GETTABLEKS                       R12 R12 K21 ["getFFlagAmrEnableSearchableMenu"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K8 ["Src"]
       86 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K23 ["useFilterTypeTable"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K8 ["Src"]
       95 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K24 ["useGridSortOptions"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K8 ["Src"]
      104 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K25 ["useIsCompact"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K8 ["Src"]
      113 GETTABLEKS                       R16 R16 K22 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K26 ["useIxpValue"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K8 ["Src"]
      122 GETTABLEKS                       R17 R17 K22 ["Hooks"]
      124 GETTABLEKS                       R17 R17 K27 ["useLayoutInfo"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R18 R0 K8 ["Src"]
      131 GETTABLEKS                       R18 R18 K22 ["Hooks"]
      133 GETTABLEKS                       R18 R18 K28 ["useSearchInfo"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R0 K8 ["Src"]
      140 GETTABLEKS                       R19 R19 K29 ["Util"]
      142 GETTABLEKS                       R19 R19 K30 ["createFilterMenuItems"]
      144 CALL                             R18 1 1
      145 DUPCLOSURE                       R19 K31 [PROTO_0]
      146 DUPCLOSURE                       R20 K32 [PROTO_5]
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R5
      150 DUPCLOSURE                       R21 K33 [PROTO_8]
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R18
      153 DUPCLOSURE                       R22 K34 [PROTO_12]
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R18
      156 DUPCLOSURE                       R23 K35 [PROTO_14]
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R22
      171 RETURN                           R23 1
