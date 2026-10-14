PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["toDateTime"]
        9 MOVE                             R9 R7
       10 CALL                             R8 1 1
       11 JUMPIFNOT                        R8 ; [+16]
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETTABLEKS                       R9 R8 K1 ["UnixTimestampMillis"]
       15 GETTABLEKS                       R10 R1 K1 ["UnixTimestampMillis"]
       17 JUMPIFNOTLT                      R9 R10 ; [+2]
       19 MOVE                             R1 R8
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETTABLEKS                       R9 R8 K1 ["UnixTimestampMillis"]
       23 GETTABLEKS                       R10 R2 K1 ["UnixTimestampMillis"]
       25 JUMPIFNOTLT                      R10 R9 ; [+2]
       27 MOVE                             R2 R8
       28 FORGLOOP                         R3 2 ; [-23]
       30 JUMPIFNOT                        R1 ; [+18]
       31 JUMPIFNOT                        R2 ; [+17]
       32 GETTABLEKS                       R3 R2 K1 ["UnixTimestampMillis"]
       34 GETTABLEKS                       R4 R1 K1 ["UnixTimestampMillis"]
       36 JUMPIFEQ                         R3 R4 ; [+12]
       38 LOADK                            R3 K2 ["%* – %*"]
       39 GETUPVAL                         R5 1
       40 MOVE                             R6 R1
       41 CALL                             R5 1 1
       42 GETUPVAL                         R6 1
       43 MOVE                             R7 R2
       44 CALL                             R6 1 1
       45 NAMECALL                         R3 R3 K3 ["format"]
       47 CALL                             R3 3 1
       48 RETURN                           R3 1
       49 GETUPVAL                         R3 1
       50 MOVE                             R4 R1
       51 CALL                             R3 1 -1
       52 RETURN                           R3 -1

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
       93 CALL                             R11 1 -1
       94 CALL                             R8 -1 0
       95 MOVE                             R8 R7
       96 GETUPVAL                         R9 3
       97 GETTABLEKS                       R9 R9 K7 ["Modified"]
       99 LOADK                            R12 K13 ["AssetProperty"]
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R13 R13 K7 ["Modified"]
      103 NAMECALL                         R10 R1 K8 ["getText"]
      105 CALL                             R10 3 1
      106 GETUPVAL                         R11 4
      107 MOVE                             R12 R4
      108 CALL                             R11 1 -1
      109 CALL                             R8 -1 0
      110 GETUPVAL                         R8 1
      111 GETTABLEKS                       R8 R8 K17 ["DrawerBody"]
      113 GETTABLEKS                       R9 R0 K18 ["LayoutOrder"]
      115 GETUPVAL                         R10 1
      116 GETTABLEKS                       R10 R10 K19 ["ThumbnailSquare"]
      118 GETUPVAL                         R11 5
      119 GETTABLEKS                       R11 R11 K20 ["createElement"]
      121 GETUPVAL                         R12 6
      122 GETTABLEKS                       R12 R12 K21 ["Image"]
      124 DUPTABLE                         R13 K26 [{["Image"], ["tag"] = "size-full", ["testId"] = "details-drawer-default-thumbnail"}]
      125 GETUPVAL                         R14 7
      126 GETTABLEKS                       R14 R14 K27 ["get"]
      128 GETUPVAL                         R15 7
      129 GETTABLEKS                       R15 R15 K28 ["AvailableImages"]
      131 GETTABLEKS                       R15 R15 K29 ["DefaultThumbnail"]
      133 CALL                             R14 1 1
      134 SETTABLEKS                       R14 R13 K21 ["Image"]
      136 CALL                             R11 2 -1
      137 CALL                             R10 -1 1
      138 MOVE                             R11 R6
      139 CALL                             R8 3 -1
      140 RETURN                           R8 -1

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
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Util"]
       54 GETTABLEKS                       R9 R9 K16 ["formatDateTime"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETIMPORT                        R10 K1 [script]
       61 GETTABLEKS                       R10 R10 K17 ["Parent"]
       63 GETTABLEKS                       R10 R10 K18 ["Rows"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R6 K19 ["AssetInfoField"]
       68 GETTABLEKS                       R11 R6 K20 ["DetailsDrawerRow"]
       70 DUPCLOSURE                       R12 K21 [PROTO_0]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 DUPCLOSURE                       R13 K22 [PROTO_1]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R7
       82 RETURN                           R13 1
