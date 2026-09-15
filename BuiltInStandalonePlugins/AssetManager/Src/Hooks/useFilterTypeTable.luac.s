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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
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
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K9 ["AssetInfoField"]
       39 GETTABLEKS                       R13 R13 K1 ["AssetType"]
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
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K9 ["AssetInfoField"]
       79 GETTABLEKS                       R6 R6 K15 ["IsPackage"]
       81 GETTABLE                         R7 R0 R6
       82 ANDK                             R5 R7 K16 [True]
       83 SETTABLEKS                       R5 R4 K5 ["Enabled"]
       85 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       87 MOVE                             R6 R2
       88 MOVE                             R7 R4
       89 GETIMPORT                        R5 K12 [table.insert]
       91 CALL                             R5 2 0
       92 GETUPVAL                         R5 1
       93 CALL                             R5 0 1
       94 JUMPIF                           R5 ; [+30]
       95 DUPTABLE                         R5 K6 [{"Text", "OnClick", "Enabled"}]
       96 GETTABLEKS                       R6 R1 K7 ["Localization"]
       98 LOADK                            R8 K17 ["Filters"]
       99 LOADK                            R9 K18 ["OnlyArchived"]
      100 NAMECALL                         R6 R6 K8 ["getText"]
      102 CALL                             R6 3 1
      103 SETTABLEKS                       R6 R5 K3 ["Text"]
      105 NEWCLOSURE                       R6 P2
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R6 R5 K4 ["OnClick"]
      109 GETUPVAL                         R7 0
      110 GETTABLEKS                       R7 R7 K9 ["AssetInfoField"]
      112 GETTABLEKS                       R7 R7 K19 ["Archived"]
      114 GETTABLE                         R8 R0 R7
      115 ANDK                             R6 R8 K16 [True]
      116 SETTABLEKS                       R6 R5 K5 ["Enabled"]
      118 FASTCALL2                        TABLE_INSERT R2 R5 ; [+5]
      120 MOVE                             R7 R2
      121 MOVE                             R8 R5
      122 GETIMPORT                        R6 K12 [table.insert]
      124 CALL                             R6 2 0
      125 GETIMPORT                        R5 K21 [table.sort]
      127 MOVE                             R6 R2
      128 DUPCLOSURE                       R7 K22 [PROTO_5]
      129 CALL                             R5 2 0
      130 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R2 K2 ["Source"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["toggleFilter"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        6 GETTABLEKS                       R2 R2 K2 ["Creator"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K3 ["toggleFilter"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_10:
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
       20 GETUPVAL                         R13 0
       21 GETTABLEKS                       R13 R13 K6 ["AssetInfoField"]
       23 GETTABLEKS                       R13 R13 K7 ["Creator"]
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ItemsController"]
        3 NAMECALL                         R0 R0 K1 ["toggleArchivedFilter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_12:
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
       77 RETURN                           R2 1

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
      117 GETUPVAL                         R9 4
      118 CALL                             R9 0 1
      119 JUMPIFNOT                        R9 ; [+32]
      120 JUMPIF                           R5 ; [+31]
      121 LOADK                            R11 K19 ["AssetProperty"]
      122 LOADK                            R12 K22 ["Status"]
      123 NAMECALL                         R9 R3 K8 ["getText"]
      125 CALL                             R9 3 1
      126 MOVE                             R14 R1
      127 ADDK                             R1 R1 K9 [1]
      128 MOVE                             R13 R14
      129 GETUPVAL                         R14 5
      130 GETTABLEKS                       R15 R0 K10 ["ItemsController"]
      132 NAMECALL                         R15 R15 K11 ["getFilters"]
      134 CALL                             R15 1 1
      135 DUPTABLE                         R12 K15 [{"LayoutOrder", "Text", "Items"}]
      136 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      138 SETTABLEKS                       R9 R12 K13 ["Text"]
      140 MOVE                             R16 R14
      141 MOVE                             R17 R15
      142 MOVE                             R18 R0
      143 CALL                             R16 2 1
      144 SETTABLEKS                       R16 R12 K14 ["Items"]
      146 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
      148 MOVE                             R11 R6
      149 GETIMPORT                        R10 K18 [table.insert]
      151 CALL                             R10 2 0
      152 CLOSEUPVALS                      R1
      153 RETURN                           R6 1

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
       19 GETTABLEKS                       R3 R3 K5 ["OnShowSearchOptionsChanged"]
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
       20 DUPTABLE                         R5 K6 [{"Input", "Localization", "PluginController", "ItemsController", "SearchController"}]
       21 SETTABLEKS                       R0 R5 K1 ["Input"]
       23 SETTABLEKS                       R1 R5 K2 ["Localization"]
       25 SETTABLEKS                       R2 R5 K3 ["PluginController"]
       27 SETTABLEKS                       R3 R5 K4 ["ItemsController"]
       29 SETTABLEKS                       R4 R5 K5 ["SearchController"]
       31 GETUPVAL                         R6 5
       32 GETUPVAL                         R7 6
       33 MOVE                             R8 R5
       34 CALL                             R7 1 1
       35 CALL                             R6 1 2
       36 GETUPVAL                         R8 7
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R7
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U8
       45 NEWTABLE                         R10 0 0
       47 CALL                             R8 2 0
       48 RETURN                           R6 1

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
       29 GETTABLEKS                       R6 R6 K12 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K13 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K14 ["Localization"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R0 K6 ["Src"]
       40 GETTABLEKS                       R9 R9 K15 ["Controllers"]
       42 GETTABLEKS                       R9 R9 K16 ["Input"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R0 K6 ["Src"]
       49 GETTABLEKS                       R10 R10 K15 ["Controllers"]
       51 GETTABLEKS                       R10 R10 K17 ["ItemsController"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K6 ["Src"]
       58 GETTABLEKS                       R11 R11 K15 ["Controllers"]
       60 GETTABLEKS                       R11 R11 K18 ["SearchController"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K6 ["Src"]
       67 GETTABLEKS                       R12 R12 K15 ["Controllers"]
       69 GETTABLEKS                       R12 R12 K19 ["PluginController"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K6 ["Src"]
       76 GETTABLEKS                       R13 R13 K20 ["Util"]
       78 GETTABLEKS                       R13 R13 K21 ["cleanConnections"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R0 K6 ["Src"]
       85 GETTABLEKS                       R14 R14 K22 ["Flags"]
       87 GETTABLEKS                       R14 R14 K23 ["getFFlagAmrRestrictedFilter"]
       89 CALL                             R13 1 1
       90 DUPCLOSURE                       R14 K24 [PROTO_0]
       91 DUPCLOSURE                       R15 K25 [PROTO_1]
       92 DUPCLOSURE                       R16 K26 [PROTO_6]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R13
       95 DUPCLOSURE                       R17 K27 [PROTO_8]
       96 CAPTURE                          VAL R1
       97 DUPCLOSURE                       R18 K28 [PROTO_10]
       98 CAPTURE                          VAL R1
       99 DUPCLOSURE                       R19 K29 [PROTO_13]
      100 CAPTURE                          VAL R1
      101 DUPCLOSURE                       R20 K30 [PROTO_15]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R17
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R19
      108 DUPCLOSURE                       R21 K31 [PROTO_22]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R12
      118 RETURN                           R21 1
