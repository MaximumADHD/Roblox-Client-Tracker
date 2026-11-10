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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+18]
        3 GETTABLE                         R3 R0 R1
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADB                            R4 0
        7 RETURN                           R4 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+6]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 RETURN                           R4 1
       15 GETTABLE                         R5 R3 R2
       16 JUMPIFEQKB                       R5 TRUE ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 RETURN                           R4 1
       21 GETTABLE                         R3 R0 R1
       22 JUMPIFNOT                        R3 ; [+9]
       23 LOADB                            R3 1
       24 JUMPIFEQKNIL                     R2 ; [+7]
       26 GETTABLE                         R5 R0 R1
       27 GETTABLE                         R4 R5 R2
       28 JUMPIFNOTEQKNIL                  R4 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 RETURN                           R3 1

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
       18 JUMPIFEQ                         R8 R9 ; [+82]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K1 ["AssetType"]
       23 GETTABLEKS                       R9 R9 K3 ["TextDocument"]
       25 JUMPIFNOTEQ                      R8 R9 ; [+4]
       27 GETUPVAL                         R9 1
       28 CALL                             R9 0 1
       29 JUMPIFNOT                        R9 ; [+71]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K1 ["AssetType"]
       33 GETTABLEKS                       R9 R9 K4 ["AnimatedImage"]
       35 JUMPIFNOTEQ                      R8 R9 ; [+4]
       37 GETUPVAL                         R9 2
       38 CALL                             R9 0 1
       39 JUMPIFNOT                        R9 ; [+61]
       40 DUPTABLE                         R11 K8 [{"Text", "OnClick", "Enabled"}]
       41 GETTABLEKS                       R12 R1 K9 ["Localization"]
       43 LOADK                            R14 K1 ["AssetType"]
       44 MOVE                             R15 R8
       45 NAMECALL                         R12 R12 K10 ["getText"]
       47 CALL                             R12 3 1
       48 SETTABLEKS                       R12 R11 K5 ["Text"]
       50 NEWCLOSURE                       R12 P0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R8
       54 SETTABLEKS                       R12 R11 K6 ["OnClick"]
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K11 ["AssetInfoField"]
       59 GETTABLEKS                       R13 R13 K1 ["AssetType"]
       61 GETUPVAL                         R14 3
       62 CALL                             R14 0 1
       63 JUMPIFNOT                        R14 ; [+18]
       64 GETTABLE                         R14 R0 R13
       65 JUMPIFNOTEQKNIL                  R14 ; [+3]
       67 LOADB                            R12 0
       68 JUMP                             ; [+24]
       69 JUMPIFNOTEQKNIL                  R8 ; [+6]
       71 JUMPIFEQKB                       R14 TRUE ; [+2]
       73 LOADB                            R12 0 +1
       74 LOADB                            R12 1
       75 JUMP                             ; [+17]
       76 GETTABLE                         R15 R14 R8
       77 JUMPIFEQKB                       R15 TRUE ; [+2]
       79 LOADB                            R12 0 +1
       80 LOADB                            R12 1
       81 JUMP                             ; [+11]
       82 GETTABLE                         R12 R0 R13
       83 JUMPIFNOT                        R12 ; [+9]
       84 LOADB                            R12 1
       85 JUMPIFEQKNIL                     R8 ; [+7]
       87 GETTABLE                         R15 R0 R13
       88 GETTABLE                         R14 R15 R8
       89 JUMPIFNOTEQKNIL                  R14 ; [+2]
       91 LOADB                            R12 0 +1
       92 LOADB                            R12 1
       93 SETTABLEKS                       R12 R11 K7 ["Enabled"]
       95 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       97 MOVE                             R10 R2
       98 GETIMPORT                        R9 K14 [table.insert]
      100 CALL                             R9 2 0
      101 FORGLOOP                         R4 2 ; [-89]
      103 DUPTABLE                         R4 K8 [{"Text", "OnClick", "Enabled"}]
      104 GETTABLEKS                       R5 R1 K9 ["Localization"]
      106 LOADK                            R7 K15 ["AssetProperty"]
      107 LOADK                            R8 K16 ["Package"]
      108 NAMECALL                         R5 R5 K10 ["getText"]
      110 CALL                             R5 3 1
      111 SETTABLEKS                       R5 R4 K5 ["Text"]
      113 NEWCLOSURE                       R5 P1
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R5 R4 K6 ["OnClick"]
      117 GETUPVAL                         R6 0
      118 GETTABLEKS                       R6 R6 K11 ["AssetInfoField"]
      120 GETTABLEKS                       R6 R6 K17 ["IsPackage"]
      122 GETUPVAL                         R7 3
      123 CALL                             R7 0 1
      124 JUMPIFNOT                        R7 ; [+10]
      125 GETTABLE                         R7 R0 R6
      126 JUMPIFNOTEQKNIL                  R7 ; [+3]
      128 LOADB                            R5 0
      129 JUMP                             ; [+7]
      130 JUMPIFEQKB                       R7 TRUE ; [+2]
      132 LOADB                            R5 0 +1
      133 LOADB                            R5 1
      134 JUMP                             ; [+2]
      135 GETTABLE                         R7 R0 R6
      136 ANDK                             R5 R7 K18 [True]
      137 SETTABLEKS                       R5 R4 K7 ["Enabled"]
      139 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
      141 MOVE                             R6 R2
      142 MOVE                             R7 R4
      143 GETIMPORT                        R5 K14 [table.insert]
      145 CALL                             R5 2 0
      146 GETIMPORT                        R5 K20 [table.sort]
      148 MOVE                             R6 R2
      149 DUPCLOSURE                       R7 K21 [PROTO_4]
      150 CALL                             R5 2 0
      151 RETURN                           R2 1

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
       18 JUMPIFEQ                         R8 R9 ; [+62]
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
       41 GETUPVAL                         R14 1
       42 CALL                             R14 0 1
       43 JUMPIFNOT                        R14 ; [+18]
       44 GETTABLE                         R14 R0 R13
       45 JUMPIFNOTEQKNIL                  R14 ; [+3]
       47 LOADB                            R12 0
       48 JUMP                             ; [+24]
       49 JUMPIFNOTEQKNIL                  R8 ; [+6]
       51 JUMPIFEQKB                       R14 TRUE ; [+2]
       53 LOADB                            R12 0 +1
       54 LOADB                            R12 1
       55 JUMP                             ; [+17]
       56 GETTABLE                         R15 R14 R8
       57 JUMPIFEQKB                       R15 TRUE ; [+2]
       59 LOADB                            R12 0 +1
       60 LOADB                            R12 1
       61 JUMP                             ; [+11]
       62 GETTABLE                         R12 R0 R13
       63 JUMPIFNOT                        R12 ; [+9]
       64 LOADB                            R12 1
       65 JUMPIFEQKNIL                     R8 ; [+7]
       67 GETTABLE                         R15 R0 R13
       68 GETTABLE                         R14 R15 R8
       69 JUMPIFNOTEQKNIL                  R14 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 SETTABLEKS                       R12 R11 K5 ["Enabled"]
       75 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       77 MOVE                             R10 R2
       78 GETIMPORT                        R9 K13 [table.insert]
       80 CALL                             R9 2 0
       81 FORGLOOP                         R4 2 ; [-69]
       83 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Utils"]
        3 GETTABLEKS                       R3 R3 K1 ["naturalCompare"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 LOADN                            R4 0
        9 JUMPIFLT                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

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
       43 GETUPVAL                         R5 2
       44 CALL                             R5 0 1
       45 JUMPIFNOT                        R5 ; [+7]
       46 GETIMPORT                        R5 K8 [table.sort]
       48 MOVE                             R6 R4
       49 DUPCLOSURE                       R7 K9 [PROTO_8]
       50 CAPTURE                          UPVAL U3
       51 CALL                             R5 2 0
       52 JUMP                             ; [+4]
       53 GETIMPORT                        R5 K8 [table.sort]
       55 MOVE                             R6 R4
       56 CALL                             R5 1 0
       57 MOVE                             R5 R4
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 FORGPREP                         R5
       61 DUPTABLE                         R12 K13 [{"Text", "OnClick", "Enabled"}]
       62 SETTABLEKS                       R9 R12 K10 ["Text"]
       64 NEWCLOSURE                       R13 P1
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R9
       68 SETTABLEKS                       R13 R12 K11 ["OnClick"]
       70 GETUPVAL                         R14 0
       71 GETTABLEKS                       R14 R14 K3 ["AssetInfoField"]
       73 GETTABLEKS                       R14 R14 K4 ["Creator"]
       75 GETUPVAL                         R15 2
       76 CALL                             R15 0 1
       77 JUMPIFNOT                        R15 ; [+18]
       78 GETTABLE                         R15 R0 R14
       79 JUMPIFNOTEQKNIL                  R15 ; [+3]
       81 LOADB                            R13 0
       82 JUMP                             ; [+24]
       83 JUMPIFNOTEQKNIL                  R9 ; [+6]
       85 JUMPIFEQKB                       R15 TRUE ; [+2]
       87 LOADB                            R13 0 +1
       88 LOADB                            R13 1
       89 JUMP                             ; [+17]
       90 GETTABLE                         R16 R15 R9
       91 JUMPIFEQKB                       R16 TRUE ; [+2]
       93 LOADB                            R13 0 +1
       94 LOADB                            R13 1
       95 JUMP                             ; [+11]
       96 GETTABLE                         R13 R0 R14
       97 JUMPIFNOT                        R13 ; [+9]
       98 LOADB                            R13 1
       99 JUMPIFEQKNIL                     R9 ; [+7]
      101 GETTABLE                         R16 R0 R14
      102 GETTABLE                         R15 R16 R9
      103 JUMPIFNOTEQKNIL                  R15 ; [+2]
      105 LOADB                            R13 0 +1
      106 LOADB                            R13 1
      107 SETTABLEKS                       R13 R12 K12 ["Enabled"]
      109 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      111 MOVE                             R11 R2
      112 GETIMPORT                        R10 K15 [table.insert]
      114 CALL                             R10 2 0
      115 FORGLOOP                         R5 2 ; [-55]
      117 RETURN                           R2 1

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

PROTO_14:
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
       21 GETUPVAL                         R6 1
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+10]
       24 GETTABLE                         R6 R0 R5
       25 JUMPIFNOTEQKNIL                  R6 ; [+3]
       27 LOADB                            R4 0
       28 JUMP                             ; [+7]
       29 JUMPIFEQKB                       R6 TRUE ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 JUMP                             ; [+2]
       34 GETTABLE                         R6 R0 R5
       35 ANDK                             R4 R6 K9 [True]
       36 SETTABLEKS                       R4 R3 K2 ["Enabled"]
       38 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       40 MOVE                             R5 R2
       41 MOVE                             R6 R3
       42 GETIMPORT                        R4 K12 [table.insert]
       44 CALL                             R4 2 0
       45 DUPTABLE                         R4 K3 [{"Text", "OnClick", "Enabled"}]
       46 GETTABLEKS                       R5 R1 K4 ["Localization"]
       48 LOADK                            R7 K13 ["AssetStatus"]
       49 LOADK                            R8 K14 ["Violation"]
       50 NAMECALL                         R5 R5 K7 ["getText"]
       52 CALL                             R5 3 1
       53 SETTABLEKS                       R5 R4 K0 ["Text"]
       55 NEWCLOSURE                       R5 P1
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U0
       58 SETTABLEKS                       R5 R4 K1 ["OnClick"]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K8 ["AssetInfoField"]
       63 GETTABLEKS                       R6 R6 K15 ["ModerationStatus"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K15 ["ModerationStatus"]
       68 GETTABLEKS                       R7 R7 K16 ["Rejected"]
       70 GETUPVAL                         R8 1
       71 CALL                             R8 0 1
       72 JUMPIFNOT                        R8 ; [+18]
       73 GETTABLE                         R8 R0 R6
       74 JUMPIFNOTEQKNIL                  R8 ; [+3]
       76 LOADB                            R5 0
       77 JUMP                             ; [+24]
       78 JUMPIFNOTEQKNIL                  R7 ; [+6]
       80 JUMPIFEQKB                       R8 TRUE ; [+2]
       82 LOADB                            R5 0 +1
       83 LOADB                            R5 1
       84 JUMP                             ; [+17]
       85 GETTABLE                         R9 R8 R7
       86 JUMPIFEQKB                       R9 TRUE ; [+2]
       88 LOADB                            R5 0 +1
       89 LOADB                            R5 1
       90 JUMP                             ; [+11]
       91 GETTABLE                         R5 R0 R6
       92 JUMPIFNOT                        R5 ; [+9]
       93 LOADB                            R5 1
       94 JUMPIFEQKNIL                     R7 ; [+7]
       96 GETTABLE                         R9 R0 R6
       97 GETTABLE                         R8 R9 R7
       98 JUMPIFNOTEQKNIL                  R8 ; [+2]
      100 LOADB                            R5 0 +1
      101 LOADB                            R5 1
      102 SETTABLEKS                       R5 R4 K2 ["Enabled"]
      104 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
      106 MOVE                             R6 R2
      107 MOVE                             R7 R4
      108 GETIMPORT                        R5 K12 [table.insert]
      110 CALL                             R5 2 0
      111 GETUPVAL                         R6 0
      112 GETTABLEKS                       R6 R6 K8 ["AssetInfoField"]
      114 GETTABLEKS                       R6 R6 K17 ["DraftStatus"]
      116 GETUPVAL                         R7 0
      117 GETTABLEKS                       R7 R7 K17 ["DraftStatus"]
      119 GETTABLEKS                       R7 R7 K18 ["Draft"]
      121 GETUPVAL                         R8 1
      122 CALL                             R8 0 1
      123 JUMPIFNOT                        R8 ; [+18]
      124 GETTABLE                         R8 R0 R6
      125 JUMPIFNOTEQKNIL                  R8 ; [+3]
      127 LOADB                            R5 0
      128 JUMP                             ; [+24]
      129 JUMPIFNOTEQKNIL                  R7 ; [+6]
      131 JUMPIFEQKB                       R8 TRUE ; [+2]
      133 LOADB                            R5 0 +1
      134 LOADB                            R5 1
      135 JUMP                             ; [+17]
      136 GETTABLE                         R9 R8 R7
      137 JUMPIFEQKB                       R9 TRUE ; [+2]
      139 LOADB                            R5 0 +1
      140 LOADB                            R5 1
      141 JUMP                             ; [+11]
      142 GETTABLE                         R5 R0 R6
      143 JUMPIFNOT                        R5 ; [+9]
      144 LOADB                            R5 1
      145 JUMPIFEQKNIL                     R7 ; [+7]
      147 GETTABLE                         R9 R0 R6
      148 GETTABLE                         R8 R9 R7
      149 JUMPIFNOTEQKNIL                  R8 ; [+2]
      151 LOADB                            R5 0 +1
      152 LOADB                            R5 1
      153 GETUPVAL                         R6 2
      154 CALL                             R6 0 1
      155 JUMPIFNOT                        R6 ; [+31]
      156 JUMPIF                           R5 ; [+6]
      157 GETTABLEKS                       R6 R1 K19 ["ItemsController"]
      159 NAMECALL                         R6 R6 K20 ["currentScopeHasDraftAssets"]
      161 CALL                             R6 1 1
      162 JUMPIFNOT                        R6 ; [+24]
      163 DUPTABLE                         R6 K3 [{"Text", "OnClick", "Enabled"}]
      164 GETTABLEKS                       R7 R1 K4 ["Localization"]
      166 LOADK                            R9 K13 ["AssetStatus"]
      167 LOADK                            R10 K18 ["Draft"]
      168 NAMECALL                         R7 R7 K7 ["getText"]
      170 CALL                             R7 3 1
      171 SETTABLEKS                       R7 R6 K0 ["Text"]
      173 NEWCLOSURE                       R7 P2
      174 CAPTURE                          VAL R1
      175 CAPTURE                          UPVAL U0
      176 SETTABLEKS                       R7 R6 K1 ["OnClick"]
      178 SETTABLEKS                       R5 R6 K2 ["Enabled"]
      180 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
      182 MOVE                             R8 R2
      183 MOVE                             R9 R6
      184 GETIMPORT                        R7 K12 [table.insert]
      186 CALL                             R7 2 0
      187 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_16:
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
       86 JUMPIF                           R5 ; [+31]
       87 LOADK                            R10 K19 ["AssetProperty"]
       88 LOADK                            R11 K21 ["Status"]
       89 NAMECALL                         R8 R3 K8 ["getText"]
       91 CALL                             R8 3 1
       92 MOVE                             R13 R1
       93 ADDK                             R1 R1 K9 [1]
       94 MOVE                             R12 R13
       95 GETUPVAL                         R13 3
       96 GETTABLEKS                       R14 R0 K10 ["ItemsController"]
       98 NAMECALL                         R14 R14 K11 ["getFilters"]
      100 CALL                             R14 1 1
      101 DUPTABLE                         R11 K15 [{"LayoutOrder", "Text", "Items"}]
      102 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      104 SETTABLEKS                       R8 R11 K13 ["Text"]
      106 MOVE                             R15 R13
      107 MOVE                             R16 R14
      108 MOVE                             R17 R0
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R11 K14 ["Items"]
      112 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      114 MOVE                             R10 R6
      115 GETIMPORT                        R9 K18 [table.insert]
      117 CALL                             R9 2 0
      118 LOADK                            R10 K19 ["AssetProperty"]
      119 LOADK                            R11 K22 ["Creator"]
      120 NAMECALL                         R8 R3 K8 ["getText"]
      122 CALL                             R8 3 1
      123 MOVE                             R13 R1
      124 ADDK                             R1 R1 K9 [1]
      125 MOVE                             R12 R13
      126 GETUPVAL                         R13 4
      127 GETTABLEKS                       R14 R0 K10 ["ItemsController"]
      129 NAMECALL                         R14 R14 K11 ["getFilters"]
      131 CALL                             R14 1 1
      132 DUPTABLE                         R11 K15 [{"LayoutOrder", "Text", "Items"}]
      133 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      135 SETTABLEKS                       R8 R11 K13 ["Text"]
      137 MOVE                             R15 R13
      138 MOVE                             R16 R14
      139 MOVE                             R17 R0
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R11 K14 ["Items"]
      143 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
      145 MOVE                             R10 R6
      146 GETIMPORT                        R9 K18 [table.insert]
      148 CALL                             R9 2 0
      149 CLOSEUPVALS                      R1
      150 RETURN                           R6 1

PROTO_17:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["currentScopeHasDraftAssets"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 GETUPVAL                         R2 4
        8 CALL                             R1 1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["currentScopeHasDraftAssets"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFEQ                         R0 R1 ; [+11]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K0 ["currentScopeHasDraftAssets"]
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 CALL                             R1 1 1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["currentScopeHasDraftAssets"]
        5 CALL                             R1 1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K1 ["OnSortFilterChanged"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K2 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K5 [table.insert]
       23 CALL                             R3 -1 0
       24 MOVE                             R4 R0
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K6 ["OnIsSearchInitiatedChanged"]
       28 MOVE                             R7 R2
       29 NAMECALL                         R5 R5 K2 ["Connect"]
       31 CALL                             R5 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R3 K5 [table.insert]
       35 CALL                             R3 -1 0
       36 MOVE                             R4 R0
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K7 ["OnCreatorsChanged"]
       40 MOVE                             R7 R2
       41 NAMECALL                         R5 R5 K2 ["Connect"]
       43 CALL                             R5 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R3 K5 [table.insert]
       47 CALL                             R3 -1 0
       48 MOVE                             R4 R0
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K8 ["OnCurrentScopeChanged"]
       52 MOVE                             R7 R2
       53 NAMECALL                         R5 R5 K2 ["Connect"]
       55 CALL                             R5 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R3 K5 [table.insert]
       59 CALL                             R3 -1 0
       60 GETUPVAL                         R3 6
       61 CALL                             R3 0 1
       62 JUMPIFNOT                        R3 ; [+17]
       63 MOVE                             R4 R0
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K9 ["OnItemsChanged"]
       67 NEWCLOSURE                       R7 P1
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          REF R1
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U3
       73 NAMECALL                         R5 R5 K2 ["Connect"]
       75 CALL                             R5 2 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R3 K5 [table.insert]
       79 CALL                             R3 -1 0
       80 NEWCLOSURE                       R3 P2
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          VAL R0
       83 CLOSEUPVALS                      R1
       84 RETURN                           R3 1

PROTO_21:
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
       63 CAPTURE                          UPVAL U11
       64 NEWTABLE                         R11 0 0
       66 CALL                             R9 2 0
       67 RETURN                           R7 1

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
       28 GETTABLEKS                       R4 R3 K11 ["useState"]
       30 GETTABLEKS                       R5 R3 K12 ["useEffect"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R7 R7 K13 ["Dash"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Packages"]
       43 GETTABLEKS                       R8 R8 K14 ["Framework"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R7 K15 ["ContextServices"]
       48 GETTABLEKS                       R9 R8 K16 ["Localization"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R0 K8 ["Src"]
       54 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       56 GETTABLEKS                       R11 R11 K18 ["Input"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K8 ["Src"]
       63 GETTABLEKS                       R12 R12 K17 ["Controllers"]
       65 GETTABLEKS                       R12 R12 K19 ["ItemsController"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R0 K8 ["Src"]
       72 GETTABLEKS                       R13 R13 K17 ["Controllers"]
       74 GETTABLEKS                       R13 R13 K20 ["SearchController"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K8 ["Src"]
       81 GETTABLEKS                       R14 R14 K17 ["Controllers"]
       83 GETTABLEKS                       R14 R14 K21 ["PluginController"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K8 ["Src"]
       90 GETTABLEKS                       R15 R15 K22 ["Hooks"]
       92 GETTABLEKS                       R15 R15 K23 ["useIxpValue"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R16 R0 K8 ["Src"]
       99 GETTABLEKS                       R16 R16 K24 ["Util"]
      101 GETTABLEKS                       R16 R16 K25 ["cleanConnections"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R17 R0 K8 ["Src"]
      108 GETTABLEKS                       R17 R17 K26 ["Flags"]
      110 GETTABLEKS                       R17 R17 K27 ["getFFlagAmrEnableTextDocuments"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETTABLEKS                       R18 R0 K8 ["Src"]
      117 GETTABLEKS                       R18 R18 K26 ["Flags"]
      119 GETTABLEKS                       R18 R18 K28 ["getFFlagAmrEnableAnimatedImage"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K8 ["Src"]
      126 GETTABLEKS                       R19 R19 K26 ["Flags"]
      128 GETTABLEKS                       R19 R19 K29 ["getFFlagAmrEnableSearchableMenu"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K5 [require]
      133 GETTABLEKS                       R20 R0 K8 ["Src"]
      135 GETTABLEKS                       R20 R20 K26 ["Flags"]
      137 GETTABLEKS                       R20 R20 K30 ["getFFlagAmrEnableDraftStatus"]
      139 CALL                             R19 1 1
      140 DUPCLOSURE                       R20 K31 [PROTO_0]
      141 DUPCLOSURE                       R21 K32 [PROTO_1]
      142 CAPTURE                          VAL R18
      143 DUPCLOSURE                       R22 K33 [PROTO_5]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R18
      148 DUPCLOSURE                       R23 K34 [PROTO_7]
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R18
      151 DUPCLOSURE                       R24 K35 [PROTO_10]
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R1
      156 DUPCLOSURE                       R25 K36 [PROTO_14]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R19
      160 DUPCLOSURE                       R26 K37 [PROTO_16]
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R25
      165 CAPTURE                          VAL R24
      166 DUPCLOSURE                       R27 K38 [PROTO_21]
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R26
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R15
      179 RETURN                           R27 1
