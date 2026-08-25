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
       34 LOADK                            R8 K10 ["ViewSize%*"]
       35 MOVE                             R10 R0
       36 NAMECALL                         R8 R8 K11 ["format"]
       38 CALL                             R8 2 1
       39 MOVE                             R7 R8
       40 NAMECALL                         R4 R4 K12 ["getText"]
       42 CALL                             R4 3 1
       43 SETTABLEKS                       R4 R3 K2 ["text"]
       45 NEWCLOSURE                       R4 P0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       53 RETURN                           R3 1

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
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 NEWTABLE                         R8 0 0
        8 GETTABLEKS                       R9 R7 K0 ["Items"]
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 FORGPREP                         R9
       13 DUPTABLE                         R16 K5 [{"id", "text", "isChecked", "onActivated"}]
       14 MOVE                             R17 R1
       15 CALL                             R17 0 1
       16 SETTABLEKS                       R17 R16 K1 ["id"]
       18 GETTABLEKS                       R17 R13 K6 ["Text"]
       20 SETTABLEKS                       R17 R16 K2 ["text"]
       22 GETTABLEKS                       R17 R13 K7 ["Enabled"]
       24 SETTABLEKS                       R17 R16 K3 ["isChecked"]
       26 GETTABLEKS                       R17 R13 K8 ["OnClick"]
       28 SETTABLEKS                       R17 R16 K4 ["onActivated"]
       30 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       32 MOVE                             R15 R8
       33 GETIMPORT                        R14 K11 [table.insert]
       35 CALL                             R14 2 0
       36 FORGLOOP                         R9 2 ; [-24]
       38 DUPTABLE                         R11 K13 [{"id", "text", "items"}]
       39 MOVE                             R12 R1
       40 CALL                             R12 0 1
       41 SETTABLEKS                       R12 R11 K1 ["id"]
       43 GETTABLEKS                       R12 R7 K6 ["Text"]
       45 SETTABLEKS                       R12 R11 K2 ["text"]
       47 SETTABLEKS                       R8 R11 K12 ["items"]
       49 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       51 MOVE                             R10 R2
       52 GETIMPORT                        R9 K11 [table.insert]
       54 CALL                             R9 2 0
       55 FORGLOOP                         R3 2 ; [-50]
       57 DUPTABLE                         R3 K14 [{"items"}]
       58 SETTABLEKS                       R2 R3 K12 ["items"]
       60 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshAll"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R5 R0 K0 ["ItemsController"]
        2 GETTABLEKS                       R6 R0 K1 ["Localization"]
        4 NEWTABLE                         R7 0 0
        6 LOADN                            R8 1
        7 NEWCLOSURE                       R9 P0
        8 CAPTURE                          REF R8
        9 JUMPIF                           R4 ; [+30]
       10 NEWTABLE                         R13 0 1
       12 DUPTABLE                         R14 K5 [{"id", "text", "onActivated"}]
       13 MOVE                             R16 R8
       14 ADDK                             R8 R8 K6 [1]
       15 MOVE                             R15 R16
       16 SETTABLEKS                       R15 R14 K2 ["id"]
       18 LOADK                            R17 K7 ["Tooltip"]
       19 LOADK                            R18 K8 ["Refresh"]
       20 NAMECALL                         R15 R6 K9 ["getText"]
       22 CALL                             R15 3 1
       23 SETTABLEKS                       R15 R14 K3 ["text"]
       25 NEWCLOSURE                       R15 P1
       26 CAPTURE                          VAL R5
       27 SETTABLEKS                       R15 R14 K4 ["onActivated"]
       29 SETLIST                          R13 R14 1 [1]
       31 DUPTABLE                         R12 K11 [{"items"}]
       32 SETTABLEKS                       R13 R12 K10 ["items"]
       34 FASTCALL2                        TABLE_INSERT R7 R12 ; [+4]
       36 MOVE                             R11 R7
       37 GETIMPORT                        R10 K14 [table.insert]
       39 CALL                             R10 2 0
       40 GETUPVAL                         R12 0
       41 MOVE                             R13 R0
       42 MOVE                             R14 R1
       43 MOVE                             R15 R2
       44 MOVE                             R16 R9
       45 CALL                             R12 4 1
       46 FASTCALL2                        TABLE_INSERT R7 R12 ; [+4]
       48 MOVE                             R11 R7
       49 GETIMPORT                        R10 K14 [table.insert]
       51 CALL                             R10 2 0
       52 JUMPIF                           R4 ; [+40]
       53 GETUPVAL                         R12 1
       54 MOVE                             R13 R3
       55 MOVE                             R14 R9
       56 CALL                             R12 2 1
       57 FASTCALL2                        TABLE_INSERT R7 R12 ; [+4]
       59 MOVE                             R11 R7
       60 GETIMPORT                        R10 K14 [table.insert]
       62 CALL                             R10 2 0
       63 NEWTABLE                         R13 0 1
       65 DUPTABLE                         R14 K5 [{"id", "text", "onActivated"}]
       66 MOVE                             R16 R8
       67 ADDK                             R8 R8 K6 [1]
       68 MOVE                             R15 R16
       69 SETTABLEKS                       R15 R14 K2 ["id"]
       71 LOADK                            R17 K15 ["Filters"]
       72 LOADK                            R18 K16 ["ResetFilters"]
       73 NAMECALL                         R15 R6 K9 ["getText"]
       75 CALL                             R15 3 1
       76 SETTABLEKS                       R15 R14 K3 ["text"]
       78 NEWCLOSURE                       R15 P2
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R15 R14 K4 ["onActivated"]
       82 SETLIST                          R13 R14 1 [1]
       84 DUPTABLE                         R12 K11 [{"items"}]
       85 SETTABLEKS                       R13 R12 K10 ["items"]
       87 FASTCALL2                        TABLE_INSERT R7 R12 ; [+4]
       89 MOVE                             R11 R7
       90 GETIMPORT                        R10 K14 [table.insert]
       92 CALL                             R10 2 0
       93 CLOSEUPVALS                      R8
       94 RETURN                           R7 1

PROTO_11:
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
       19 GETIMPORT                        R1 K7 [table.clone]
       21 GETUPVAL                         R2 3
       22 CALL                             R1 1 1
       23 GETUPVAL                         R2 4
       24 CALL                             R2 0 1
       25 JUMPIF                           R2 ; [+23]
       26 GETTABLEKS                       R2 R0 K2 ["Localization"]
       28 LOADK                            R4 K8 ["AssetProperty"]
       29 LOADK                            R5 K9 ["Creator"]
       30 NAMECALL                         R2 R2 K10 ["getText"]
       32 CALL                             R2 3 1
       33 MOVE                             R3 R1
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 GETTABLEKS                       R8 R7 K11 ["Text"]
       39 JUMPIFNOTEQ                      R8 R2 ; [+7]
       41 GETIMPORT                        R8 K13 [table.remove]
       43 MOVE                             R9 R1
       44 MOVE                             R10 R6
       45 CALL                             R8 2 0
       46 JUMP                             ; [+2]
       47 FORGLOOP                         R3 2 ; [-11]
       49 GETUPVAL                         R2 5
       50 MOVE                             R3 R0
       51 GETUPVAL                         R4 6
       52 GETUPVAL                         R5 7
       53 MOVE                             R6 R1
       54 GETUPVAL                         R7 8
       55 CALL                             R2 5 1
       56 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 2
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETTABLEKS                       R5 R4 K0 ["ShowSearchOptions"]
       10 GETUPVAL                         R6 4
       11 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U8
       19 CAPTURE                          UPVAL U9
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R8 0 4
       25 MOVE                             R9 R1
       26 MOVE                             R10 R3
       27 MOVE                             R11 R0
       28 MOVE                             R12 R5
       29 SETLIST                          R8 R9 4 [1]
       31 CALL                             R6 2 -1
       32 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["StyleConstants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       46 GETTABLEKS                       R7 R6 K15 ["Localization"]
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K17 ["LayoutController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K6 ["Src"]
       61 GETTABLEKS                       R10 R10 K16 ["Controllers"]
       63 GETTABLEKS                       R10 R10 K18 ["ItemsController"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K20 ["useFilterTypeTable"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K21 ["useLayoutInfo"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R13 R13 K19 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K22 ["useGridSortOptions"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Src"]
       97 GETTABLEKS                       R14 R14 K19 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K23 ["useSearchInfo"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K6 ["Src"]
      106 GETTABLEKS                       R15 R15 K24 ["Flags"]
      108 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrCompactEnableCreator"]
      110 CALL                             R14 1 1
      111 DUPCLOSURE                       R15 K26 [PROTO_0]
      112 DUPCLOSURE                       R16 K27 [PROTO_5]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R4
      116 DUPCLOSURE                       R17 K28 [PROTO_6]
      117 DUPCLOSURE                       R18 K29 [PROTO_10]
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R17
      120 DUPCLOSURE                       R19 K30 [PROTO_12]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R18
      131 RETURN                           R19 1
