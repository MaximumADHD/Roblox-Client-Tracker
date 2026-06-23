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
        0 GETTABLEKS                       R4 R0 K0 ["LayoutController"]
        2 GETTABLEKS                       R5 R0 K1 ["Localization"]
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R5
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 NEWTABLE                         R7 0 2
       13 MOVE                             R8 R6
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R9 R9 K2 ["ViewType"]
       17 GETTABLEKS                       R9 R9 K3 ["List"]
       19 CALL                             R8 1 1
       20 MOVE                             R9 R6
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K2 ["ViewType"]
       24 GETTABLEKS                       R10 R10 K4 ["Grid"]
       26 CALL                             R9 1 1
       27 SETLIST                          R7 R8 2 [1]
       29 NEWTABLE                         R9 0 2
       31 DUPTABLE                         R10 K8 [{"id", "text", "items"}]
       32 MOVE                             R11 R3
       33 CALL                             R11 0 1
       34 SETTABLEKS                       R11 R10 K5 ["id"]
       36 LOADK                            R13 K9 ["HeaderBar"]
       37 LOADK                            R14 K10 ["ViewTypeSelectTooltip"]
       38 NAMECALL                         R11 R5 K11 ["getText"]
       40 CALL                             R11 3 1
       41 SETTABLEKS                       R11 R10 K6 ["text"]
       43 SETTABLEKS                       R7 R10 K7 ["items"]
       45 GETTABLEKS                       R12 R1 K2 ["ViewType"]
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R13 R13 K2 ["ViewType"]
       50 GETTABLEKS                       R13 R13 K4 ["Grid"]
       52 JUMPIFNOTEQ                      R12 R13 ; [+16]
       54 DUPTABLE                         R11 K8 [{"id", "text", "items"}]
       55 MOVE                             R12 R3
       56 CALL                             R12 0 1
       57 SETTABLEKS                       R12 R11 K5 ["id"]
       59 LOADK                            R14 K9 ["HeaderBar"]
       60 LOADK                            R15 K12 ["SortTooltip"]
       61 NAMECALL                         R12 R5 K11 ["getText"]
       63 CALL                             R12 3 1
       64 SETTABLEKS                       R12 R11 K6 ["text"]
       66 SETTABLEKS                       R2 R11 K7 ["items"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R11
       70 SETLIST                          R9 R10 2 [1]
       72 DUPTABLE                         R8 K13 [{"items"}]
       73 SETTABLEKS                       R9 R8 K7 ["items"]
       75 RETURN                           R8 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshAll"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
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
       20 CALL                             R1 0 1
       21 JUMPIF                           R1 ; [+28]
       22 GETIMPORT                        R1 K7 [table.clone]
       24 GETUPVAL                         R2 4
       25 CALL                             R1 1 1
       26 SETUPVAL                         R1 4
       27 GETTABLEKS                       R1 R0 K2 ["Localization"]
       29 LOADK                            R3 K8 ["AssetProperty"]
       30 LOADK                            R4 K9 ["Creator"]
       31 NAMECALL                         R1 R1 K10 ["getText"]
       33 CALL                             R1 3 1
       34 GETUPVAL                         R2 4
       35 LOADNIL                          R3
       36 LOADNIL                          R4
       37 FORGPREP                         R2
       38 GETTABLEKS                       R7 R6 K11 ["Text"]
       40 JUMPIFNOTEQ                      R7 R1 ; [+7]
       42 GETIMPORT                        R7 K13 [table.remove]
       44 GETUPVAL                         R8 4
       45 MOVE                             R9 R5
       46 CALL                             R7 2 0
       47 JUMP                             ; [+2]
       48 FORGLOOP                         R2 2 ; [-11]
       50 GETUPVAL                         R1 5
       51 MOVE                             R2 R0
       52 GETUPVAL                         R3 6
       53 GETUPVAL                         R4 7
       54 GETUPVAL                         R5 4
       55 GETUPVAL                         R6 8
       56 CALL                             R1 5 1
       57 RETURN                           R1 1

PROTO_10:
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
       17 CAPTURE                          UPVAL U8
       18 CAPTURE                          REF R0
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
       32 CLOSEUPVALS                      R0
       33 RETURN                           R6 -1

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
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["LayoutController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K16 ["ItemsController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K6 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K18 ["useFilterTypeTable"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Src"]
       70 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K19 ["useLayoutInfo"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R12 R12 K17 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K20 ["useGridSortOptions"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R13 R13 K17 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K21 ["useSearchInfo"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Src"]
       97 GETTABLEKS                       R14 R14 K22 ["Flags"]
       99 GETTABLEKS                       R14 R14 K23 ["getFFlagAmrCompactEnableCreator"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K24 [PROTO_0]
      103 DUPCLOSURE                       R15 K25 [PROTO_3]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R3
      106 DUPCLOSURE                       R16 K26 [PROTO_4]
      107 DUPCLOSURE                       R17 K27 [PROTO_8]
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R16
      110 DUPCLOSURE                       R18 K28 [PROTO_10]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R17
      121 RETURN                           R18 1
