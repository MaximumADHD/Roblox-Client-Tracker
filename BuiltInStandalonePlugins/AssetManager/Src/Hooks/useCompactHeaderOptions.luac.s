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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 6
       24 GETUPVAL                         R6 7
       25 GETUPVAL                         R7 8
       26 CALL                             R1 6 1
       27 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 2
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R6 4
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R7 R7 K0 ["IxpVariable"]
       12 GETTABLEKS                       R7 R7 K1 ["Omnisearch"]
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 5
       16 GETTABLEKS                       R7 R7 K2 ["IxpValue"]
       18 GETTABLEKS                       R7 R7 K3 ["Experiment"]
       20 JUMPIFEQ                         R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 GETTABLEKS                       R6 R4 K4 ["IsSearchRequested"]
       26 GETUPVAL                         R7 6
       27 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R9 0 5
       41 MOVE                             R10 R1
       42 MOVE                             R11 R3
       43 MOVE                             R12 R0
       44 MOVE                             R13 R6
       45 MOVE                             R14 R5
       46 SETLIST                          R9 R10 5 [1]
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1

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
       77 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       79 GETTABLEKS                       R12 R12 K21 ["useFilterTypeTable"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K8 ["Src"]
       86 GETTABLEKS                       R13 R13 K20 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K22 ["useIxpValue"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K8 ["Src"]
       95 GETTABLEKS                       R14 R14 K20 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K23 ["useLayoutInfo"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K8 ["Src"]
      104 GETTABLEKS                       R15 R15 K20 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K24 ["useGridSortOptions"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K8 ["Src"]
      113 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K25 ["useSearchInfo"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K8 ["Src"]
      122 GETTABLEKS                       R17 R17 K26 ["Util"]
      124 GETTABLEKS                       R17 R17 K27 ["createFilterMenuItems"]
      126 CALL                             R16 1 1
      127 DUPCLOSURE                       R17 K28 [PROTO_0]
      128 DUPCLOSURE                       R18 K29 [PROTO_5]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R5
      132 DUPCLOSURE                       R19 K30 [PROTO_9]
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R16
      135 DUPCLOSURE                       R20 K31 [PROTO_11]
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R19
      147 RETURN                           R20 1
