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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Input"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["UiZone"]
        6 GETTABLEKS                       R2 R2 K2 ["Filters"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["AssetInfoField"]
       11 GETTABLEKS                       R3 R3 K4 ["AssetType"]
       13 GETUPVAL                         R4 2
       14 NAMECALL                         R0 R0 K5 ["handleMouse1Click"]
       16 CALL                             R0 4 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 NAMECALL                         R0 R0 K1 ["togglePackagesFilter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Text"]
        2 GETTABLEKS                       R4 R1 K0 ["Text"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["asSortedList"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["AssetType"]
        8 CALL                             R3 1 1
        9 MOVE                             R4 R3
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K1 ["AssetType"]
       16 GETTABLEKS                       R9 R9 K2 ["Place"]
       18 JUMPIFEQ                         R8 R9 ; [+51]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K1 ["AssetType"]
       23 GETTABLEKS                       R9 R9 K3 ["TextDocument"]
       25 JUMPIFNOTEQ                      R8 R9 ; [+4]
       27 GETUPVAL                         R9 1
       28 CALL                             R9 0 1
       29 JUMPIFNOT                        R9 ; [+40]
       30 DUPTABLE                         R11 K7 [{"Text", "OnClick", "Enabled"}]
       31 GETTABLEKS                       R12 R1 K8 ["Localization"]
       33 LOADK                            R14 K1 ["AssetType"]
       34 MOVE                             R15 R8
       35 NAMECALL                         R12 R12 K9 ["getText"]
       37 CALL                             R12 3 1
       38 SETTABLEKS                       R12 R11 K4 ["Text"]
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R8
       44 SETTABLEKS                       R12 R11 K5 ["OnClick"]
       46 GETUPVAL                         R13 0
       47 GETTABLEKS                       R13 R13 K10 ["AssetInfoField"]
       49 GETTABLEKS                       R13 R13 K1 ["AssetType"]
       51 GETTABLE                         R12 R0 R13
       52 JUMPIFNOT                        R12 ; [+9]
       53 LOADB                            R12 1
       54 JUMPIFEQKNIL                     R8 ; [+7]
       56 GETTABLE                         R15 R0 R13
       57 GETTABLE                         R14 R15 R8
       58 JUMPIFNOTEQKNIL                  R14 ; [+2]
       60 LOADB                            R12 0 +1
       61 LOADB                            R12 1
       62 SETTABLEKS                       R12 R11 K6 ["Enabled"]
       64 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       66 MOVE                             R10 R2
       67 GETIMPORT                        R9 K13 [table.insert]
       69 CALL                             R9 2 0
       70 FORGLOOP                         R4 2 ; [-58]
       72 DUPTABLE                         R4 K7 [{"Text", "OnClick", "Enabled"}]
       73 GETTABLEKS                       R5 R1 K8 ["Localization"]
       75 LOADK                            R7 K14 ["AssetProperty"]
       76 LOADK                            R8 K15 ["Package"]
       77 NAMECALL                         R5 R5 K9 ["getText"]
       79 CALL                             R5 3 1
       80 SETTABLEKS                       R5 R4 K4 ["Text"]
       82 NEWCLOSURE                       R5 P1
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R5 R4 K5 ["OnClick"]
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R6 R6 K10 ["AssetInfoField"]
       89 GETTABLEKS                       R6 R6 K16 ["IsPackage"]
       91 GETTABLE                         R7 R0 R6
       92 ANDK                             R5 R7 K17 [True]
       93 SETTABLEKS                       R5 R4 K6 ["Enabled"]
       95 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       97 MOVE                             R6 R2
       98 MOVE                             R7 R4
       99 GETIMPORT                        R5 K13 [table.insert]
      101 CALL                             R5 2 0
      102 GETIMPORT                        R5 K19 [table.sort]
      104 MOVE                             R6 R2
      105 DUPCLOSURE                       R7 K20 [PROTO_4]
      106 CALL                             R5 2 0
      107 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R2 K2 ["Source"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["toggleFilter"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["asSortedList"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["AssetSource"]
        8 CALL                             R3 1 1
        9 MOVE                             R4 R3
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K1 ["AssetSource"]
       16 GETTABLEKS                       R9 R9 K2 ["Unknown"]
       18 JUMPIFEQ                         R8 R9 ; [+41]
       20 DUPTABLE                         R11 K6 [{"Text", "OnClick", "Enabled"}]
       21 GETTABLEKS                       R12 R1 K7 ["Localization"]
       23 LOADK                            R14 K1 ["AssetSource"]
       24 MOVE                             R15 R8
       25 NAMECALL                         R12 R12 K8 ["getText"]
       27 CALL                             R12 3 1
       28 SETTABLEKS                       R12 R11 K3 ["Text"]
       30 NEWCLOSURE                       R12 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R8
       34 SETTABLEKS                       R12 R11 K4 ["OnClick"]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K9 ["AssetInfoField"]
       39 GETTABLEKS                       R13 R13 K10 ["Source"]
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
       57 GETIMPORT                        R9 K13 [table.insert]
       59 CALL                             R9 2 0
       60 FORGLOOP                         R4 2 ; [-48]
       62 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R2 K2 ["Creator"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["toggleFilter"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R1 K0 ["ItemsController"]
        6 NAMECALL                         R4 R4 K1 ["getCreators"]
        8 CALL                             R4 1 3
        9 FORGPREP                         R4
       10 LOADB                            R9 1
       11 SETTABLE                         R9 R3 R8
       12 FORGLOOP                         R4 2 ; [-3]
       14 GETTABLEKS                       R4 R1 K2 ["IsOmnisearchEnabled"]
       16 JUMPIFNOT                        R4 ; [+21]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K3 ["AssetInfoField"]
       20 GETTABLEKS                       R5 R5 K4 ["Creator"]
       22 GETTABLE                         R4 R0 R5
       23 JUMPIFNOT                        R4 ; [+14]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K3 ["AssetInfoField"]
       27 GETTABLEKS                       R7 R7 K4 ["Creator"]
       29 GETTABLE                         R4 R0 R7
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 JUMPIFNOT                        R8 ; [+2]
       34 LOADB                            R9 1
       35 SETTABLE                         R9 R3 R7
       36 FORGLOOP                         R4 2 ; [-4]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K5 ["keys"]
       41 MOVE                             R5 R3
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K8 [table.sort]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 0
       47 MOVE                             R5 R4
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 DUPTABLE                         R12 K12 [{"Text", "OnClick", "Enabled"}]
       52 SETTABLEKS                       R9 R12 K9 ["Text"]
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R9
       58 SETTABLEKS                       R13 R12 K10 ["OnClick"]
       60 GETUPVAL                         R14 0
       61 GETTABLEKS                       R14 R14 K3 ["AssetInfoField"]
       63 GETTABLEKS                       R14 R14 K4 ["Creator"]
       65 GETTABLE                         R13 R0 R14
       66 JUMPIFNOT                        R13 ; [+9]
       67 LOADB                            R13 1
       68 JUMPIFEQKNIL                     R9 ; [+7]
       70 GETTABLE                         R16 R0 R14
       71 GETTABLE                         R15 R16 R9
       72 JUMPIFNOTEQKNIL                  R15 ; [+2]
       74 LOADB                            R13 0 +1
       75 LOADB                            R13 1
       76 SETTABLEKS                       R13 R12 K11 ["Enabled"]
       78 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       80 MOVE                             R11 R2
       81 GETIMPORT                        R10 K14 [table.insert]
       83 CALL                             R10 2 0
       84 FORGLOOP                         R5 2 ; [-34]
       86 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 NAMECALL                         R0 R0 K1 ["toggleArchivedFilter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R2 K2 ["ModerationStatus"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["ModerationStatus"]
       11 GETTABLEKS                       R3 R3 K3 ["Rejected"]
       13 NAMECALL                         R0 R0 K4 ["toggleFilter"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R2 K2 ["DraftStatus"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["DraftStatus"]
       11 GETTABLEKS                       R3 R3 K3 ["Draft"]
       13 NAMECALL                         R0 R0 K4 ["toggleFilter"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R2 0 0
        2 DUPTABLE                         R3 K3 [{"Text", "OnClick", "Enabled"}]
        3 GETTABLEKS                       R4 R1 K4 ["Localization"]
        5 LOADK                            R6 K5 ["AssetProperty"]
        6 LOADK                            R7 K6 ["Archived"]
        7 NAMECALL                         R4 R4 K7 ["getText"]
        9 CALL                             R4 3 1
       10 SETTABLEKS                       R4 R3 K0 ["Text"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R4 R3 K1 ["OnClick"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K8 ["AssetInfoField"]
       19 GETTABLEKS                       R5 R5 K6 ["Archived"]
       21 GETTABLE                         R6 R0 R5
       22 ANDK                             R4 R6 K9 [True]
       23 SETTABLEKS                       R4 R3 K2 ["Enabled"]
       25 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       27 MOVE                             R5 R2
       28 MOVE                             R6 R3
       29 GETIMPORT                        R4 K12 [table.insert]
       31 CALL                             R4 2 0
       32 DUPTABLE                         R4 K3 [{"Text", "OnClick", "Enabled"}]
       33 GETTABLEKS                       R5 R1 K4 ["Localization"]
       35 LOADK                            R7 K13 ["Filters"]
       36 LOADK                            R8 K14 ["Restricted"]
       37 NAMECALL                         R5 R5 K7 ["getText"]
       39 CALL                             R5 3 1
       40 SETTABLEKS                       R5 R4 K0 ["Text"]
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U0
       45 SETTABLEKS                       R5 R4 K1 ["OnClick"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K8 ["AssetInfoField"]
       50 GETTABLEKS                       R6 R6 K15 ["ModerationStatus"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K15 ["ModerationStatus"]
       55 GETTABLEKS                       R7 R7 K16 ["Rejected"]
       57 GETTABLE                         R5 R0 R6
       58 JUMPIFNOT                        R5 ; [+9]
       59 LOADB                            R5 1
       60 JUMPIFEQKNIL                     R7 ; [+7]
       62 GETTABLE                         R9 R0 R6
       63 GETTABLE                         R8 R9 R7
       64 JUMPIFNOTEQKNIL                  R8 ; [+2]
       66 LOADB                            R5 0 +1
       67 LOADB                            R5 1
       68 SETTABLEKS                       R5 R4 K2 ["Enabled"]
       70 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       72 MOVE                             R6 R2
       73 MOVE                             R7 R4
       74 GETIMPORT                        R5 K12 [table.insert]
       76 CALL                             R5 2 0
       77 GETUPVAL                         R5 1
       78 CALL                             R5 0 1
       79 JUMPIFNOT                        R5 ; [+45]
       80 DUPTABLE                         R5 K3 [{"Text", "OnClick", "Enabled"}]
       81 GETTABLEKS                       R6 R1 K4 ["Localization"]
       83 LOADK                            R8 K17 ["AssetStatus"]
       84 LOADK                            R9 K18 ["Draft"]
       85 NAMECALL                         R6 R6 K7 ["getText"]
       87 CALL                             R6 3 1
       88 SETTABLEKS                       R6 R5 K0 ["Text"]
       90 NEWCLOSURE                       R6 P2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U0
       93 SETTABLEKS                       R6 R5 K1 ["OnClick"]
       95 GETUPVAL                         R7 0
       96 GETTABLEKS                       R7 R7 K8 ["AssetInfoField"]
       98 GETTABLEKS                       R7 R7 K19 ["DraftStatus"]
      100 GETUPVAL                         R8 0
      101 GETTABLEKS                       R8 R8 K19 ["DraftStatus"]
      103 GETTABLEKS                       R8 R8 K18 ["Draft"]
      105 GETTABLE                         R6 R0 R7
      106 JUMPIFNOT                        R6 ; [+9]
      107 LOADB                            R6 1
      108 JUMPIFEQKNIL                     R8 ; [+7]
      110 GETTABLE                         R10 R0 R7
      111 GETTABLE                         R9 R10 R8
      112 JUMPIFNOTEQKNIL                  R9 ; [+2]
      114 LOADB                            R6 0 +1
      115 LOADB                            R6 1
      116 SETTABLEKS                       R6 R5 K2 ["Enabled"]
      118 FASTCALL2                        TABLE_INSERT R2 R5 ; [+5]
      120 MOVE                             R7 R2
      121 MOVE                             R8 R5
      122 GETIMPORT                        R6 K12 [table.insert]
      124 CALL                             R6 2 0
      125 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_15:
        0 LOADN                            R1 1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 GETTABLEKS                       R3 R0 K0 ["Localization"]
        5 GETTABLEKS                       R4 R0 K1 ["PluginController"]
        7 NAMECALL                         R4 R4 K2 ["getCurrentScope"]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R6 R4 K3 ["Type"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K4 ["ScopeType"]
       15 GETTABLEKS                       R7 R7 K5 ["ProjectPlaces"]
       17 JUMPIFEQ                         R6 R7 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 NEWTABLE                         R6 0 0
       23 JUMPIF                           R5 ; [+31]
       24 LOADK                            R9 K6 ["ItemProperty"]
       25 LOADK                            R10 K7 ["ItemType"]
       26 NAMECALL                         R7 R3 K8 ["getText"]
       28 CALL                             R7 3 1
       29 MOVE                             R12 R1
       30 ADDK                             R1 R1 K9 [1]
       31 MOVE                             R11 R12
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R13 R0 K10 ["ItemsController"]
       35 NAMECALL                         R13 R13 K11 ["getFilters"]
       37 CALL                             R13 1 1
       38 DUPTABLE                         R10 K15 [{"LayoutOrder", "Text", "Items"}]
       39 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       41 SETTABLEKS                       R7 R10 K13 ["Text"]
       43 MOVE                             R14 R12
       44 MOVE                             R15 R13
       45 MOVE                             R16 R0
       46 CALL                             R14 2 1
       47 SETTABLEKS                       R14 R10 K14 ["Items"]
       49 FASTCALL2                        TABLE_INSERT R6 R10 ; [+4]
       51 MOVE                             R9 R6
       52 GETIMPORT                        R8 K18 [table.insert]
       54 CALL                             R8 2 0
       55 LOADK                            R9 K19 ["AssetProperty"]
       56 LOADK                            R10 K20 ["Source"]
       57 NAMECALL                         R7 R3 K8 ["getText"]
       59 CALL                             R7 3 1
       60 MOVE                             R12 R1
       61 ADDK                             R1 R1 K9 [1]
       62 MOVE                             R11 R12
       63 GETUPVAL                         R12 2
       64 GETTABLEKS                       R13 R0 K10 ["ItemsController"]
       66 NAMECALL                         R13 R13 K11 ["getFilters"]
       68 CALL                             R13 1 1
       69 DUPTABLE                         R10 K15 [{"LayoutOrder", "Text", "Items"}]
       70 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       72 SETTABLEKS                       R7 R10 K13 ["Text"]
       74 MOVE                             R14 R12
       75 MOVE                             R15 R13
       76 MOVE                             R16 R0
       77 CALL                             R14 2 1
       78 SETTABLEKS                       R14 R10 K14 ["Items"]
       80 FASTCALL2                        TABLE_INSERT R6 R10 ; [+4]
       82 MOVE                             R9 R6
       83 GETIMPORT                        R8 K18 [table.insert]
       85 CALL                             R8 2 0
       86 LOADK                            R10 K19 ["AssetProperty"]
       87 LOADK                            R11 K21 ["Creator"]
       88 NAMECALL                         R8 R3 K8 ["getText"]
       90 CALL                             R8 3 1
       91 MOVE                             R13 R1
       92 ADDK                             R1 R1 K9 [1]
       93 MOVE                             R12 R13
       94 GETUPVAL                         R13 3
       95 GETTABLEKS                       R14 R0 K10 ["ItemsController"]
       97 NAMECALL                         R14 R14 K11 ["getFilters"]
       99 CALL                             R14 1 1
      100 DUPTABLE                         R11 K15 [{"LayoutOrder", "Text", "Items"}]
      101 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      103 SETTABLEKS                       R8 R11 K13 ["Text"]
      105 MOVE                             R15 R13
      106 MOVE                             R16 R14
      107 MOVE                             R17 R0
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R11 K14 ["Items"]
      111 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      113 MOVE                             R10 R6
      114 GETIMPORT                        R9 K18 [table.insert]
      116 CALL                             R9 2 0
      117 JUMPIF                           R5 ; [+31]
      118 LOADK                            R11 K19 ["AssetProperty"]
      119 LOADK                            R12 K22 ["Status"]
      120 NAMECALL                         R9 R3 K8 ["getText"]
      122 CALL                             R9 3 1
      123 MOVE                             R14 R1
      124 ADDK                             R1 R1 K9 [1]
      125 MOVE                             R13 R14
      126 GETUPVAL                         R14 4
      127 GETTABLEKS                       R15 R0 K10 ["ItemsController"]
      129 NAMECALL                         R15 R15 K11 ["getFilters"]
      131 CALL                             R15 1 1
      132 DUPTABLE                         R12 K15 [{"LayoutOrder", "Text", "Items"}]
      133 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      135 SETTABLEKS                       R9 R12 K13 ["Text"]
      137 MOVE                             R16 R14
      138 MOVE                             R17 R15
      139 MOVE                             R18 R0
      140 CALL                             R16 2 1
      141 SETTABLEKS                       R16 R12 K14 ["Items"]
      143 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      145 MOVE                             R11 R6
      146 GETIMPORT                        R10 K18 [table.insert]
      148 CALL                             R10 2 0
      149 CLOSEUPVALS                      R1
      150 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnSortFilterChanged"]
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
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K5 ["OnIsSearchInitiatedChanged"]
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
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K6 ["OnCreatorsChanged"]
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
       48 GETUPVAL                         R3 5
       49 GETTABLEKS                       R3 R3 K7 ["OnCurrentScopeChanged"]
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["use"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K0 ["use"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K0 ["use"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R6 5
       21 GETUPVAL                         R7 6
       22 GETTABLEKS                       R7 R7 K1 ["IxpVariable"]
       24 GETTABLEKS                       R7 R7 K2 ["Omnisearch"]
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K3 ["IxpValue"]
       30 GETTABLEKS                       R7 R7 K4 ["Experiment"]
       32 JUMPIFEQ                         R6 R7 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 DUPTABLE                         R6 K11 [{"Input", "Localization", "PluginController", "ItemsController", "SearchController", "IsOmnisearchEnabled"}]
       37 SETTABLEKS                       R0 R6 K5 ["Input"]
       39 SETTABLEKS                       R1 R6 K6 ["Localization"]
       41 SETTABLEKS                       R2 R6 K7 ["PluginController"]
       43 SETTABLEKS                       R3 R6 K8 ["ItemsController"]
       45 SETTABLEKS                       R4 R6 K9 ["SearchController"]
       47 SETTABLEKS                       R5 R6 K10 ["IsOmnisearchEnabled"]
       49 GETUPVAL                         R7 7
       50 GETUPVAL                         R8 8
       51 MOVE                             R9 R6
       52 CALL                             R8 1 1
       53 CALL                             R7 1 2
       54 GETUPVAL                         R9 9
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U10
       63 NEWTABLE                         R11 0 0
       65 CALL                             R9 2 0
       66 RETURN                           R7 1

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
       21 GETTABLEKS                       R3 R2 K10 ["useState"]
       23 GETTABLEKS                       R4 R2 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Packages"]
       29 GETTABLEKS                       R6 R6 K12 ["Dash"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Packages"]
       36 GETTABLEKS                       R7 R7 K13 ["Framework"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K14 ["ContextServices"]
       41 GETTABLEKS                       R8 R7 K15 ["Localization"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R10 R0 K6 ["Src"]
       47 GETTABLEKS                       R10 R10 K16 ["Controllers"]
       49 GETTABLEKS                       R10 R10 K17 ["Input"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R0 K6 ["Src"]
       56 GETTABLEKS                       R11 R11 K16 ["Controllers"]
       58 GETTABLEKS                       R11 R11 K18 ["ItemsController"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K6 ["Src"]
       65 GETTABLEKS                       R12 R12 K16 ["Controllers"]
       67 GETTABLEKS                       R12 R12 K19 ["SearchController"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K6 ["Src"]
       74 GETTABLEKS                       R13 R13 K16 ["Controllers"]
       76 GETTABLEKS                       R13 R13 K20 ["PluginController"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K6 ["Src"]
       83 GETTABLEKS                       R14 R14 K21 ["Hooks"]
       85 GETTABLEKS                       R14 R14 K22 ["useIxpValue"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R15 R0 K6 ["Src"]
       92 GETTABLEKS                       R15 R15 K23 ["Util"]
       94 GETTABLEKS                       R15 R15 K24 ["cleanConnections"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R16 R0 K6 ["Src"]
      101 GETTABLEKS                       R16 R16 K25 ["Flags"]
      103 GETTABLEKS                       R16 R16 K26 ["getFFlagAmrEnableTextDocuments"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETTABLEKS                       R17 R0 K6 ["Src"]
      110 GETTABLEKS                       R17 R17 K25 ["Flags"]
      112 GETTABLEKS                       R17 R17 K27 ["getFFlagAmrEnableDraftStatus"]
      114 CALL                             R16 1 1
      115 DUPCLOSURE                       R17 K28 [PROTO_0]
      116 DUPCLOSURE                       R18 K29 [PROTO_1]
      117 DUPCLOSURE                       R19 K30 [PROTO_5]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R15
      120 DUPCLOSURE                       R20 K31 [PROTO_7]
      121 CAPTURE                          VAL R1
      122 DUPCLOSURE                       R21 K32 [PROTO_9]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R5
      125 DUPCLOSURE                       R22 K33 [PROTO_13]
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R16
      128 DUPCLOSURE                       R23 K34 [PROTO_15]
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R20
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R22
      134 DUPCLOSURE                       R24 K35 [PROTO_22]
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R14
      146 RETURN                           R24 1
