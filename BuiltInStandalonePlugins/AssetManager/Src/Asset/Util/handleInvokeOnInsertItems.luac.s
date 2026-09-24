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
      119 JUMPIFEQKN                       R7 K21 [0] ; [+34]
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
      137 JUMPIFNOT                        R7 ; [+16]
      138 GETUPVAL                         R8 9
      139 CALL                             R8 0 1
      140 JUMPIFNOT                        R8 ; [+9]
      141 GETUPVAL                         R8 10
      142 GETTABLEKS                       R8 R8 K26 ["Utils"]
      144 GETTABLEKS                       R8 R8 K27 ["cameraZoomToExtents"]
      146 MOVE                             R9 R7
      147 MOVE                             R10 R5
      148 CALL                             R8 2 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R8 11
      151 MOVE                             R9 R7
      152 MOVE                             R10 R5
      153 CALL                             R8 2 0
      154 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetInsertFramework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Asset"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["getAssetInstances"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Asset"]
       38 GETTABLEKS                       R5 R5 K11 ["Util"]
       40 GETTABLEKS                       R5 R5 K13 ["cameraZoomToExtents"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Asset"]
       49 GETTABLEKS                       R6 R6 K11 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["getInsertPosition"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Src"]
       58 GETTABLEKS                       R7 R7 K11 ["Util"]
       60 GETTABLEKS                       R7 R7 K15 ["logIfDebug"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K17 [game]
       65 LOADK                            R9 K18 ["ChangeHistoryService"]
       66 NAMECALL                         R7 R7 K19 ["GetService"]
       68 CALL                             R7 2 1
       69 GETIMPORT                        R8 K17 [game]
       71 LOADK                            R10 K20 ["HttpService"]
       72 NAMECALL                         R8 R8 K19 ["GetService"]
       74 CALL                             R8 2 1
       75 GETIMPORT                        R9 K17 [game]
       77 LOADK                            R11 K21 ["Selection"]
       78 NAMECALL                         R9 R9 K19 ["GetService"]
       80 CALL                             R9 2 1
       81 GETIMPORT                        R10 K5 [require]
       83 GETTABLEKS                       R11 R0 K8 ["Src"]
       85 GETTABLEKS                       R11 R11 K22 ["Flags"]
       87 GETTABLEKS                       R11 R11 K23 ["getFFlagAmrMigrateToUseLibraries"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K5 [require]
       92 GETTABLEKS                       R12 R0 K8 ["Src"]
       94 GETTABLEKS                       R12 R12 K22 ["Flags"]
       96 GETTABLEKS                       R12 R12 K24 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       98 CALL                             R11 1 1
       99 DUPCLOSURE                       R12 K25 [PROTO_0]
      100 DUPCLOSURE                       R13 K26 [PROTO_1]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R4
      113 RETURN                           R13 1
