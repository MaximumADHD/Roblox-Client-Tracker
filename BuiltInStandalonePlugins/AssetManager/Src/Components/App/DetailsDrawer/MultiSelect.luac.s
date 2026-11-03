PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K0 ["toDateTime"]
        9 MOVE                             R10 R8
       10 CALL                             R9 1 1
       11 JUMPIFNOT                        R9 ; [+16]
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETTABLEKS                       R10 R9 K1 ["UnixTimestampMillis"]
       15 GETTABLEKS                       R11 R2 K1 ["UnixTimestampMillis"]
       17 JUMPIFNOTLT                      R10 R11 ; [+2]
       19 MOVE                             R2 R9
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETTABLEKS                       R10 R9 K1 ["UnixTimestampMillis"]
       23 GETTABLEKS                       R11 R3 K1 ["UnixTimestampMillis"]
       25 JUMPIFNOTLT                      R11 R10 ; [+2]
       27 MOVE                             R3 R9
       28 FORGLOOP                         R4 2 ; [-23]
       30 JUMPIFNOT                        R2 ; [+20]
       31 JUMPIFNOT                        R3 ; [+19]
       32 GETTABLEKS                       R4 R3 K1 ["UnixTimestampMillis"]
       34 GETTABLEKS                       R5 R2 K1 ["UnixTimestampMillis"]
       36 JUMPIFEQ                         R4 R5 ; [+14]
       38 LOADK                            R4 K2 ["%* – %*"]
       39 GETUPVAL                         R6 1
       40 MOVE                             R7 R2
       41 MOVE                             R8 R1
       42 CALL                             R6 2 1
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R3
       45 MOVE                             R9 R1
       46 CALL                             R7 2 1
       47 NAMECALL                         R4 R4 K3 ["format"]
       49 CALL                             R4 3 1
       50 RETURN                           R4 1
       51 GETUPVAL                         R4 1
       52 MOVE                             R5 R2
       53 MOVE                             R6 R1
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 NEWTABLE                         R4 0 0
       10 GETTABLEKS                       R5 R0 K1 ["Assets"]
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 GETTABLEKS                       R10 R9 K2 ["AssetType"]
       17 LOADB                            R11 1
       18 SETTABLE                         R11 R2 R10
       19 GETTABLEKS                       R12 R9 K3 ["Created"]
       21 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       23 MOVE                             R11 R3
       24 GETIMPORT                        R10 K6 [table.insert]
       26 CALL                             R10 2 0
       27 GETTABLEKS                       R12 R9 K7 ["Modified"]
       29 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       31 MOVE                             R11 R4
       32 GETIMPORT                        R10 K6 [table.insert]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R5 2 ; [-21]
       37 NEWTABLE                         R5 0 0
       39 MOVE                             R6 R2
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 MOVE                             R12 R5
       44 LOADK                            R15 K2 ["AssetType"]
       45 MOVE                             R16 R9
       46 NAMECALL                         R13 R1 K8 ["getText"]
       48 CALL                             R13 3 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R11 K6 [table.insert]
       52 CALL                             R11 -1 0
       53 FORGLOOP                         R6 1 ; [-11]
       55 GETIMPORT                        R6 K10 [table.sort]
       57 MOVE                             R7 R5
       58 CALL                             R6 1 0
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K11 ["createRowList"]
       62 CALL                             R6 0 2
       63 MOVE                             R8 R7
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K12 ["AssetTypes"]
       67 LOADK                            R12 K13 ["AssetProperty"]
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K12 ["AssetTypes"]
       71 NAMECALL                         R10 R1 K8 ["getText"]
       73 CALL                             R10 3 1
       74 GETIMPORT                        R11 K15 [table.concat]
       76 MOVE                             R12 R5
       77 LOADK                            R13 K16 [", "]
       78 CALL                             R11 2 -1
       79 CALL                             R8 -1 0
       80 MOVE                             R8 R7
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R9 R9 K3 ["Created"]
       84 LOADK                            R12 K13 ["AssetProperty"]
       85 GETUPVAL                         R13 3
       86 GETTABLEKS                       R13 R13 K3 ["Created"]
       88 NAMECALL                         R10 R1 K8 ["getText"]
       90 CALL                             R10 3 1
       91 GETUPVAL                         R11 4
       92 MOVE                             R12 R3
       93 NAMECALL                         R13 R1 K17 ["getLocale"]
       95 CALL                             R13 1 -1
       96 CALL                             R11 -1 -1
       97 CALL                             R8 -1 0
       98 MOVE                             R8 R7
       99 GETUPVAL                         R9 3
      100 GETTABLEKS                       R9 R9 K7 ["Modified"]
      102 LOADK                            R12 K13 ["AssetProperty"]
      103 GETUPVAL                         R13 3
      104 GETTABLEKS                       R13 R13 K7 ["Modified"]
      106 NAMECALL                         R10 R1 K8 ["getText"]
      108 CALL                             R10 3 1
      109 GETUPVAL                         R11 4
      110 MOVE                             R12 R4
      111 NAMECALL                         R13 R1 K17 ["getLocale"]
      113 CALL                             R13 1 -1
      114 CALL                             R11 -1 -1
      115 CALL                             R8 -1 0
      116 GETUPVAL                         R8 5
      117 GETTABLEKS                       R8 R8 K18 ["createElement"]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R9 R9 K19 ["DrawerBody"]
      122 DUPTABLE                         R10 K22 [{"LayoutOrder", "Thumbnail"}]
      123 GETTABLEKS                       R11 R0 K20 ["LayoutOrder"]
      125 SETTABLEKS                       R11 R10 K20 ["LayoutOrder"]
      127 GETUPVAL                         R11 5
      128 GETTABLEKS                       R11 R11 K18 ["createElement"]
      130 GETUPVAL                         R12 1
      131 GETTABLEKS                       R12 R12 K23 ["ThumbnailSquare"]
      133 LOADNIL                          R13
      134 DUPTABLE                         R14 K25 [{"Content"}]
      135 GETUPVAL                         R15 5
      136 GETTABLEKS                       R15 R15 K18 ["createElement"]
      138 GETUPVAL                         R16 6
      139 GETTABLEKS                       R16 R16 K26 ["Image"]
      141 DUPTABLE                         R17 K31 [{["Image"], ["tag"] = "size-full", ["testId"] = "details-drawer-default-thumbnail"}]
      142 GETUPVAL                         R18 7
      143 GETTABLEKS                       R18 R18 K32 ["get"]
      145 GETUPVAL                         R19 7
      146 GETTABLEKS                       R19 R19 K33 ["AvailableImages"]
      148 GETTABLEKS                       R19 R19 K34 ["DefaultThumbnail"]
      150 CALL                             R18 1 1
      151 SETTABLEKS                       R18 R17 K26 ["Image"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K24 ["Content"]
      156 CALL                             R11 3 1
      157 SETTABLEKS                       R11 R10 K21 ["Thumbnail"]
      159 DUPTABLE                         R11 K36 [{"Details"}]
      160 GETUPVAL                         R12 5
      161 GETTABLEKS                       R12 R12 K18 ["createElement"]
      163 GETUPVAL                         R13 1
      164 GETTABLEKS                       R13 R13 K37 ["Section"]
      166 DUPTABLE                         R14 K42 [{["LayoutOrder"] = 1, ["Title"], ["TestId"] = "details-drawer-details"}]
      167 LOADK                            R17 K13 ["AssetProperty"]
      168 LOADK                            R18 K35 ["Details"]
      169 NAMECALL                         R15 R1 K8 ["getText"]
      171 CALL                             R15 3 1
      172 SETTABLEKS                       R15 R14 K39 ["Title"]
      174 MOVE                             R15 R6
      175 CALL                             R12 3 1
      176 SETTABLEKS                       R12 R11 K35 ["Details"]
      178 CALL                             R8 3 -1
      179 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Util"]
       45 GETTABLEKS                       R8 R8 K15 ["Images"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Packages"]
       52 GETTABLEKS                       R9 R9 K16 ["AssetManagement"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R8 K17 ["Utils"]
       57 GETTABLEKS                       R9 R9 K18 ["formatDateTime"]
       59 GETIMPORT                        R10 K5 [require]
       61 GETIMPORT                        R11 K1 [script]
       63 GETTABLEKS                       R11 R11 K19 ["Parent"]
       65 GETTABLEKS                       R11 R11 K20 ["Rows"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R6 K21 ["AssetInfoField"]
       70 GETTABLEKS                       R12 R6 K22 ["DetailsDrawerRow"]
       72 DUPCLOSURE                       R13 K23 [PROTO_0]
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R9
       75 DUPCLOSURE                       R14 K24 [PROTO_1]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 RETURN                           R14 1
