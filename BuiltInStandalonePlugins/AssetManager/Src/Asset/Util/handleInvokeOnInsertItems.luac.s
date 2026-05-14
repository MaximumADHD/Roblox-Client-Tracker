PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 1
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["Model"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+2]
       12 SETTABLEKS                       R1 R7 K3 ["SourceAssetId"]
       14 FORGLOOP                         R3 2 ; [-8]
       16 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R1 ; [+7]
        2 GETUPVAL                         R2 0
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K0 ["JSONDecode"]
        6 CALL                             R2 2 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETTABLEKS                       R4 R2 K1 ["UseAssetPosition"]
       12 JUMPIFNOT                        R4 ; [+2]
       13 LOADNIL                          R3
       14 JUMP                             ; [+2]
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 MOVE                             R6 R0
       19 NAMECALL                         R4 R4 K0 ["JSONDecode"]
       21 CALL                             R4 2 1
       22 NEWTABLE                         R5 0 0
       24 GETUPVAL                         R8 2
       25 NAMECALL                         R8 R8 K2 ["Get"]
       27 CALL                             R8 1 1
       28 LENGTH                           R7 R8
       29 LOADN                            R8 0
       30 JUMPIFNOTLT                      R8 R7 ; [+7]
       32 GETUPVAL                         R7 2
       33 NAMECALL                         R7 R7 K2 ["Get"]
       35 CALL                             R7 1 1
       36 GETTABLEN                        R6 R7 1
       37 JUMP                             ; [+4]
       38 GETIMPORT                        R6 K4 [game]
       40 GETTABLEKS                       R6 R6 K5 ["Workspace"]
       42 MOVE                             R7 R4
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 GETUPVAL                         R13 3
       47 GETTABLEKS                       R14 R11 K6 ["AssetType"]
       49 GETTABLE                         R12 R13 R14
       50 MOVE                             R13 R11
       51 DUPTABLE                         R14 K9 [{"Flags", "InsertPosition"}]
       52 SETTABLEKS                       R2 R14 K7 ["Flags"]
       54 SETTABLEKS                       R3 R14 K8 ["InsertPosition"]
       56 CALL                             R12 2 1
       57 GETTABLEN                        R13 R12 1
       58 JUMPIFNOT                        R13 ; [+53]
       59 GETTABLEKS                       R14 R13 K10 ["SourceAssetId"]
       61 JUMPIFNOT                        R14 ; [+18]
       62 GETTABLEKS                       R14 R11 K11 ["AssetId"]
       64 SETTABLEKS                       R14 R13 K10 ["SourceAssetId"]
       66 GETTABLEKS                       R14 R11 K6 ["AssetType"]
       68 GETUPVAL                         R15 4
       69 GETTABLEKS                       R15 R15 K6 ["AssetType"]
       71 GETTABLEKS                       R15 R15 K12 ["Model"]
       73 JUMPIFNOTEQ                      R14 R15 ; [+6]
       75 GETUPVAL                         R14 5
       76 MOVE                             R15 R13
       77 GETTABLEKS                       R16 R11 K11 ["AssetId"]
       79 CALL                             R14 2 0
       80 GETUPVAL                         R14 6
       81 CALL                             R14 0 1
       82 JUMPIFNOT                        R14 ; [+9]
       83 GETTABLEKS                       R14 R11 K6 ["AssetType"]
       85 GETUPVAL                         R15 4
       86 GETTABLEKS                       R15 R15 K6 ["AssetType"]
       88 GETTABLEKS                       R15 R15 K13 ["Audio"]
       90 JUMPIFEQ                         R14 R15 ; [+3]
       92 SETTABLEKS                       R6 R13 K14 ["Parent"]
       94 GETTABLEKS                       R14 R11 K15 ["DisplayName"]
       96 SETTABLEKS                       R14 R13 K16 ["Name"]
       98 MOVE                             R14 R12
       99 LOADNIL                          R15
      100 LOADNIL                          R16
      101 FORGPREP                         R14
      102 FASTCALL2                        TABLE_INSERT R5 R18 ; [+5]
      104 MOVE                             R20 R5
      105 MOVE                             R21 R18
      106 GETIMPORT                        R19 K19 [table.insert]
      108 CALL                             R19 2 0
      109 FORGLOOP                         R14 2 ; [-8]
      111 JUMP                             ; [+4]
      112 GETUPVAL                         R14 7
      113 LOADK                            R15 K20 ["Asset failed to load!"]
      114 CALL                             R14 1 0
      115 JUMP                             ; [0]
      116 FORGLOOP                         R7 2 ; [-71]
      118 LENGTH                           R7 R5
      119 JUMPIFEQKN                       R7 K21 [0] ; [+22]
      121 GETUPVAL                         R7 2
      122 MOVE                             R9 R5
      123 NAMECALL                         R7 R7 K22 ["Set"]
      125 CALL                             R7 2 0
      126 GETUPVAL                         R7 8
      127 LOADK                            R9 K23 ["Insert assets"]
      128 NAMECALL                         R7 R7 K24 ["SetWaypoint"]
      130 CALL                             R7 2 0
      131 GETIMPORT                        R7 K4 [game]
      133 GETTABLEKS                       R7 R7 K5 ["Workspace"]
      135 GETTABLEKS                       R7 R7 K25 ["CurrentCamera"]
      137 JUMPIFNOT                        R7 ; [+4]
      138 GETUPVAL                         R8 9
      139 MOVE                             R9 R7
      140 MOVE                             R10 R5
      141 CALL                             R8 2 0
      142 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Asset"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["getAssetInstances"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Asset"]
       31 GETTABLEKS                       R4 R4 K9 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["cameraZoomToExtents"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K8 ["Asset"]
       42 GETTABLEKS                       R5 R5 K9 ["Util"]
       44 GETTABLEKS                       R5 R5 K12 ["getInsertPosition"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K9 ["Util"]
       53 GETTABLEKS                       R6 R6 K13 ["logIfDebug"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K15 [game]
       58 LOADK                            R8 K16 ["ChangeHistoryService"]
       59 NAMECALL                         R6 R6 K17 ["GetService"]
       61 CALL                             R6 2 1
       62 GETIMPORT                        R7 K15 [game]
       64 LOADK                            R9 K18 ["HttpService"]
       65 NAMECALL                         R7 R7 K17 ["GetService"]
       67 CALL                             R7 2 1
       68 GETIMPORT                        R8 K15 [game]
       70 LOADK                            R10 K19 ["Selection"]
       71 NAMECALL                         R8 R8 K17 ["GetService"]
       73 CALL                             R8 2 1
       74 GETIMPORT                        R9 K5 [require]
       76 GETTABLEKS                       R10 R0 K6 ["Src"]
       78 GETTABLEKS                       R10 R10 K20 ["Flags"]
       80 GETTABLEKS                       R10 R10 K21 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       82 CALL                             R9 1 1
       83 DUPCLOSURE                       R10 K22 [PROTO_0]
       84 DUPCLOSURE                       R11 K23 [PROTO_1]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R3
       95 RETURN                           R11 1
