PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["ItemsController"]
        2 NAMECALL                         R4 R4 K1 ["getFilters"]
        4 CALL                             R4 1 1
        5 DUPTABLE                         R5 K5 [{"LayoutOrder", "Text", "Items"}]
        6 SETTABLEKS                       R1 R5 K2 ["LayoutOrder"]
        8 SETTABLEKS                       R2 R5 K3 ["Text"]
       10 MOVE                             R6 R3
       11 MOVE                             R7 R4
       12 MOVE                             R8 R0
       13 CALL                             R6 2 1
       14 SETTABLEKS                       R6 R5 K4 ["Items"]
       16 RETURN                           R5 1

PROTO_1:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFNOT                        R3 ; [+9]
        2 LOADB                            R3 1
        3 JUMPIFEQKNIL                     R2 ; [+7]
        5 GETTABLE                         R5 R0 R1
        6 GETTABLE                         R4 R5 R2
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Input"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["UiZone"]
        6 GETTABLEKS                       R2 R3 K2 ["Filters"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["AssetInfoField"]
       11 GETTABLEKS                       R3 R4 K4 ["AssetType"]
       13 GETUPVAL                         R4 2
       14 NAMECALL                         R0 R0 K5 ["handleMouse1Click"]
       16 CALL                             R0 4 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemsController"]
        3 NAMECALL                         R0 R0 K1 ["togglePackagesFilter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemsController"]
        3 NAMECALL                         R0 R0 K1 ["toggleArchivedFilter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Text"]
        2 GETTABLEKS                       R4 R1 K0 ["Text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["asSortedList"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["AssetType"]
        8 CALL                             R3 1 1
        9 MOVE                             R4 R3
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETUPVAL                         R11 0
       14 GETTABLEKS                       R10 R11 K1 ["AssetType"]
       16 GETTABLEKS                       R9 R10 K2 ["Place"]
       18 JUMPIFEQ                         R8 R9 ; [+41]
       20 DUPTABLE                         R11 K6 [{"Text", "OnClick", "Enabled"}]
       21 GETTABLEKS                       R12 R1 K7 ["Localization"]
       23 LOADK                            R14 K1 ["AssetType"]
       24 MOVE                             R15 R8
       25 NAMECALL                         R12 R12 K8 ["getText"]
       27 CALL                             R12 3 1
       28 SETTABLEKS                       R12 R11 K3 ["Text"]
       30 NEWCLOSURE                       R12 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R8
       34 SETTABLEKS                       R12 R11 K4 ["OnClick"]
       36 GETUPVAL                         R15 0
       37 GETTABLEKS                       R14 R15 K9 ["AssetInfoField"]
       39 GETTABLEKS                       R13 R14 K1 ["AssetType"]
       41 GETTABLE                         R12 R0 R13
       42 JUMPIFNOT                        R12 ; [+9]
       43 LOADB                            R12 1
       44 JUMPIFEQKNIL                     R8 ; [+7]
       46 GETTABLE                         R15 R0 R13
       47 GETTABLE                         R14 R15 R8
       48 JUMPIFNOTEQKNIL                  R14 ; [+2]
       50 LOADB                            R12 0 +1
       51 LOADB                            R12 1
       52 SETTABLEKS                       R12 R11 K5 ["Enabled"]
       54 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       56 MOVE                             R10 R2
       57 GETIMPORT                        R9 K12 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R4 2 ; [-48]
       62 DUPTABLE                         R4 K6 [{"Text", "OnClick", "Enabled"}]
       63 GETTABLEKS                       R5 R1 K7 ["Localization"]
       65 LOADK                            R7 K13 ["AssetProperty"]
       66 LOADK                            R8 K14 ["Package"]
       67 NAMECALL                         R5 R5 K8 ["getText"]
       69 CALL                             R5 3 1
       70 SETTABLEKS                       R5 R4 K3 ["Text"]
       72 NEWCLOSURE                       R5 P1
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R5 R4 K4 ["OnClick"]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K9 ["AssetInfoField"]
       79 GETTABLEKS                       R6 R7 K15 ["IsPackage"]
       81 GETTABLE                         R7 R0 R6
       82 ANDK                             R5 R7 K16 [True]
       83 SETTABLEKS                       R5 R4 K5 ["Enabled"]
       85 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       87 MOVE                             R6 R2
       88 MOVE                             R7 R4
       89 GETIMPORT                        R5 K12 [table.insert]
       91 CALL                             R5 2 0
       92 DUPTABLE                         R5 K6 [{"Text", "OnClick", "Enabled"}]
       93 GETTABLEKS                       R6 R1 K7 ["Localization"]
       95 LOADK                            R8 K17 ["Filters"]
       96 LOADK                            R9 K18 ["OnlyArchived"]
       97 NAMECALL                         R6 R6 K8 ["getText"]
       99 CALL                             R6 3 1
      100 SETTABLEKS                       R6 R5 K3 ["Text"]
      102 NEWCLOSURE                       R6 P2
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R6 R5 K4 ["OnClick"]
      106 GETUPVAL                         R9 0
      107 GETTABLEKS                       R8 R9 K9 ["AssetInfoField"]
      109 GETTABLEKS                       R7 R8 K19 ["Archived"]
      111 GETTABLE                         R8 R0 R7
      112 ANDK                             R6 R8 K16 [True]
      113 SETTABLEKS                       R6 R5 K5 ["Enabled"]
      115 FASTCALL2                        TABLE_INSERT R2 R5 ; [+5]
      117 MOVE                             R7 R2
      118 MOVE                             R8 R5
      119 GETIMPORT                        R6 K12 [table.insert]
      121 CALL                             R6 2 0
      122 GETIMPORT                        R6 K21 [table.sort]
      124 MOVE                             R7 R2
      125 DUPCLOSURE                       R8 K22 [PROTO_5]
      126 CALL                             R6 2 0
      127 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemsController"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R3 K2 ["Creator"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["toggleFilter"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R1 K0 ["ItemsController"]
        4 NAMECALL                         R3 R3 K1 ["getCreators"]
        6 CALL                             R3 1 1
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 DUPTABLE                         R11 K5 [{"Text", "OnClick", "Enabled"}]
       12 SETTABLEKS                       R8 R11 K2 ["Text"]
       14 NEWCLOSURE                       R12 P0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R8
       18 SETTABLEKS                       R12 R11 K3 ["OnClick"]
       20 GETUPVAL                         R15 0
       21 GETTABLEKS                       R14 R15 K6 ["AssetInfoField"]
       23 GETTABLEKS                       R13 R14 K7 ["Creator"]
       25 GETTABLE                         R12 R0 R13
       26 JUMPIFNOT                        R12 ; [+9]
       27 LOADB                            R12 1
       28 JUMPIFEQKNIL                     R8 ; [+7]
       30 GETTABLE                         R15 R0 R13
       31 GETTABLE                         R14 R15 R8
       32 JUMPIFNOTEQKNIL                  R14 ; [+2]
       34 LOADB                            R12 0 +1
       35 LOADB                            R12 1
       36 SETTABLEKS                       R12 R11 K4 ["Enabled"]
       38 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       40 MOVE                             R10 R2
       41 GETIMPORT                        R9 K10 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-34]
       46 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ItemsController"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R3 K2 ["Source"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["toggleFilter"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["asSortedList"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["AssetSource"]
        8 CALL                             R3 1 1
        9 MOVE                             R4 R3
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 DUPTABLE                         R11 K5 [{"Text", "OnClick", "Enabled"}]
       14 GETTABLEKS                       R12 R1 K6 ["Localization"]
       16 LOADK                            R14 K1 ["AssetSource"]
       17 MOVE                             R15 R8
       18 NAMECALL                         R12 R12 K7 ["getText"]
       20 CALL                             R12 3 1
       21 SETTABLEKS                       R12 R11 K2 ["Text"]
       23 NEWCLOSURE                       R12 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R8
       27 SETTABLEKS                       R12 R11 K3 ["OnClick"]
       29 GETUPVAL                         R15 0
       30 GETTABLEKS                       R14 R15 K8 ["AssetInfoField"]
       32 GETTABLEKS                       R13 R14 K9 ["Source"]
       34 GETTABLE                         R12 R0 R13
       35 JUMPIFNOT                        R12 ; [+9]
       36 LOADB                            R12 1
       37 JUMPIFEQKNIL                     R8 ; [+7]
       39 GETTABLE                         R15 R0 R13
       40 GETTABLE                         R14 R15 R8
       41 JUMPIFNOTEQKNIL                  R14 ; [+2]
       43 LOADB                            R12 0 +1
       44 LOADB                            R12 1
       45 SETTABLEKS                       R12 R11 K4 ["Enabled"]
       47 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       49 MOVE                             R10 R2
       50 GETIMPORT                        R9 K12 [table.insert]
       52 CALL                             R9 2 0
       53 FORGLOOP                         R4 2 ; [-41]
       55 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_12:
        0 LOADN                            R1 1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R0 K0 ["Localization"]
        7 GETTABLEKS                       R5 R0 K1 ["PluginController"]
        9 NAMECALL                         R5 R5 K2 ["getCurrentScope"]
       11 CALL                             R5 1 1
       12 GETTABLEKS                       R6 R5 K3 ["Type"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K4 ["ScopeType"]
       17 GETTABLEKS                       R7 R8 K5 ["ProjectPlaces"]
       19 JUMPIFEQ                         R6 R7 ; [+38]
       21 GETTABLEKS                       R6 R0 K6 ["SearchController"]
       23 NAMECALL                         R6 R6 K7 ["getShowSearchOptions"]
       25 CALL                             R6 1 1
       26 JUMPIF                           R6 ; [+31]
       27 LOADK                            R8 K8 ["AssetProperty"]
       28 LOADK                            R9 K9 ["AssetType"]
       29 NAMECALL                         R6 R4 K10 ["getText"]
       31 CALL                             R6 3 1
       32 MOVE                             R11 R1
       33 ADDK                             R1 R1 K11 [1]
       34 MOVE                             R10 R11
       35 GETUPVAL                         R11 1
       36 GETTABLEKS                       R12 R0 K12 ["ItemsController"]
       38 NAMECALL                         R12 R12 K13 ["getFilters"]
       40 CALL                             R12 1 1
       41 DUPTABLE                         R9 K17 [{"LayoutOrder", "Text", "Items"}]
       42 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       44 SETTABLEKS                       R6 R9 K15 ["Text"]
       46 MOVE                             R13 R11
       47 MOVE                             R14 R12
       48 MOVE                             R15 R0
       49 CALL                             R13 2 1
       50 SETTABLEKS                       R13 R9 K16 ["Items"]
       52 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       54 MOVE                             R8 R3
       55 GETIMPORT                        R7 K20 [table.insert]
       57 CALL                             R7 2 0
       58 LOADK                            R8 K8 ["AssetProperty"]
       59 LOADK                            R9 K21 ["Source"]
       60 NAMECALL                         R6 R4 K10 ["getText"]
       62 CALL                             R6 3 1
       63 MOVE                             R11 R1
       64 ADDK                             R1 R1 K11 [1]
       65 MOVE                             R10 R11
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R12 R0 K12 ["ItemsController"]
       69 NAMECALL                         R12 R12 K13 ["getFilters"]
       71 CALL                             R12 1 1
       72 DUPTABLE                         R9 K17 [{"LayoutOrder", "Text", "Items"}]
       73 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       75 SETTABLEKS                       R6 R9 K15 ["Text"]
       77 MOVE                             R13 R11
       78 MOVE                             R14 R12
       79 MOVE                             R15 R0
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R9 K16 ["Items"]
       83 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       85 MOVE                             R8 R3
       86 GETIMPORT                        R7 K20 [table.insert]
       88 CALL                             R7 2 0
       89 LOADK                            R9 K8 ["AssetProperty"]
       90 LOADK                            R10 K22 ["Creator"]
       91 NAMECALL                         R7 R4 K10 ["getText"]
       93 CALL                             R7 3 1
       94 MOVE                             R12 R1
       95 ADDK                             R1 R1 K11 [1]
       96 MOVE                             R11 R12
       97 GETUPVAL                         R12 3
       98 GETTABLEKS                       R13 R0 K12 ["ItemsController"]
      100 NAMECALL                         R13 R13 K13 ["getFilters"]
      102 CALL                             R13 1 1
      103 DUPTABLE                         R10 K17 [{"LayoutOrder", "Text", "Items"}]
      104 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
      106 SETTABLEKS                       R7 R10 K15 ["Text"]
      108 MOVE                             R14 R12
      109 MOVE                             R15 R13
      110 MOVE                             R16 R0
      111 CALL                             R14 2 1
      112 SETTABLEKS                       R14 R10 K16 ["Items"]
      114 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
      116 MOVE                             R9 R3
      117 GETIMPORT                        R8 K20 [table.insert]
      119 CALL                             R8 2 0
      120 CLOSEUPVALS                      R1
      121 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["OnSortFilterChanged"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R3 R3 K1 ["Connect"]
       12 CALL                             R3 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R1 K4 [table.insert]
       16 CALL                             R1 -1 0
       17 MOVE                             R2 R0
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R3 R4 K5 ["OnShowSearchOptionsChanged"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 NAMECALL                         R3 R3 K1 ["Connect"]
       27 CALL                             R3 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R1 K4 [table.insert]
       31 CALL                             R1 -1 0
       32 MOVE                             R2 R0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K6 ["OnCreatorsChanged"]
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 NAMECALL                         R3 R3 K1 ["Connect"]
       42 CALL                             R3 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R1 K4 [table.insert]
       46 CALL                             R1 -1 0
       47 MOVE                             R2 R0
       48 GETUPVAL                         R4 5
       49 GETTABLEKS                       R3 R4 K7 ["OnCurrentScopeChanged"]
       51 NEWCLOSURE                       R5 P3
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U3
       55 NAMECALL                         R3 R3 K1 ["Connect"]
       57 CALL                             R3 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R1 K4 [table.insert]
       61 CALL                             R1 -1 0
       62 NEWCLOSURE                       R1 P4
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R0
       65 RETURN                           R1 1

PROTO_19:
        0 DUPTABLE                         R5 K5 [{"Input", "Localization", "PluginController", "ItemsController", "SearchController"}]
        1 SETTABLEKS                       R1 R5 K0 ["Input"]
        3 SETTABLEKS                       R4 R5 K1 ["Localization"]
        5 SETTABLEKS                       R0 R5 K2 ["PluginController"]
        7 SETTABLEKS                       R2 R5 K3 ["ItemsController"]
        9 SETTABLEKS                       R3 R5 K4 ["SearchController"]
       11 GETUPVAL                         R6 0
       12 GETUPVAL                         R7 1
       13 MOVE                             R8 R5
       14 CALL                             R7 1 1
       15 CALL                             R6 1 2
       16 GETUPVAL                         R8 2
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R7
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R5
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 NEWTABLE                         R10 0 0
       27 CALL                             R8 2 0
       28 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["useState"]
       23 GETTABLEKS                       R4 R2 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K6 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Util"]
       31 GETTABLEKS                       R6 R7 K13 ["cleanConnections"]
       33 CALL                             R5 1 1
       34 DUPCLOSURE                       R6 K14 [PROTO_0]
       35 DUPCLOSURE                       R7 K15 [PROTO_1]
       36 DUPCLOSURE                       R8 K16 [PROTO_6]
       37 CAPTURE                          VAL R1
       38 DUPCLOSURE                       R9 K17 [PROTO_8]
       39 CAPTURE                          VAL R1
       40 DUPCLOSURE                       R10 K18 [PROTO_10]
       41 CAPTURE                          VAL R1
       42 DUPCLOSURE                       R11 K19 [PROTO_12]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R9
       47 DUPCLOSURE                       R12 K20 [PROTO_19]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R11
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 RETURN                           R12 1
