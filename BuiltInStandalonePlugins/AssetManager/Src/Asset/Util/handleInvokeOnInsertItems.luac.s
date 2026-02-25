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
        0 JUMPIFNOT                        R1 ; [+2]
        1 LOADNIL                          R2
        2 JUMP                             ; [+2]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R3 K0 ["JSONDecode"]
        9 CALL                             R3 2 1
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R7 2
       13 NAMECALL                         R7 R7 K1 ["Get"]
       15 CALL                             R7 1 1
       16 LENGTH                           R6 R7
       17 LOADN                            R7 0
       18 JUMPIFNOTLT                      R7 R6 ; [+7]
       20 GETUPVAL                         R6 2
       21 NAMECALL                         R6 R6 K1 ["Get"]
       23 CALL                             R6 1 1
       24 GETTABLEN                        R5 R6 1
       25 JUMP                             ; [+4]
       26 GETIMPORT                        R6 K3 [game]
       28 GETTABLEKS                       R5 R6 K4 ["Workspace"]
       30 MOVE                             R6 R3
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 GETUPVAL                         R12 3
       35 GETTABLEKS                       R13 R10 K5 ["AssetType"]
       37 GETTABLE                         R11 R12 R13
       38 MOVE                             R12 R10
       39 MOVE                             R13 R2
       40 CALL                             R11 2 1
       41 GETTABLEN                        R12 R11 1
       42 JUMPIFNOT                        R12 ; [+53]
       43 GETTABLEKS                       R13 R12 K6 ["SourceAssetId"]
       45 JUMPIFNOT                        R13 ; [+18]
       46 GETTABLEKS                       R13 R10 K7 ["AssetId"]
       48 SETTABLEKS                       R13 R12 K6 ["SourceAssetId"]
       50 GETTABLEKS                       R13 R10 K5 ["AssetType"]
       52 GETUPVAL                         R16 4
       53 GETTABLEKS                       R15 R16 K5 ["AssetType"]
       55 GETTABLEKS                       R14 R15 K8 ["Model"]
       57 JUMPIFNOTEQ                      R13 R14 ; [+6]
       59 GETUPVAL                         R13 5
       60 MOVE                             R14 R12
       61 GETTABLEKS                       R15 R10 K7 ["AssetId"]
       63 CALL                             R13 2 0
       64 GETUPVAL                         R13 6
       65 CALL                             R13 0 1
       66 JUMPIFNOT                        R13 ; [+9]
       67 GETTABLEKS                       R13 R10 K5 ["AssetType"]
       69 GETUPVAL                         R16 4
       70 GETTABLEKS                       R15 R16 K5 ["AssetType"]
       72 GETTABLEKS                       R14 R15 K9 ["Audio"]
       74 JUMPIFEQ                         R13 R14 ; [+3]
       76 SETTABLEKS                       R5 R12 K10 ["Parent"]
       78 GETTABLEKS                       R13 R10 K11 ["DisplayName"]
       80 SETTABLEKS                       R13 R12 K12 ["Name"]
       82 MOVE                             R13 R11
       83 LOADNIL                          R14
       84 LOADNIL                          R15
       85 FORGPREP                         R13
       86 FASTCALL2                        TABLE_INSERT R4 R17 ; [+5]
       88 MOVE                             R19 R4
       89 MOVE                             R20 R17
       90 GETIMPORT                        R18 K15 [table.insert]
       92 CALL                             R18 2 0
       93 FORGLOOP                         R13 2 ; [-8]
       95 JUMP                             ; [+4]
       96 GETUPVAL                         R13 7
       97 LOADK                            R14 K16 ["Asset failed to load!"]
       98 CALL                             R13 1 0
       99 JUMP                             ; [0]
      100 FORGLOOP                         R6 2 ; [-67]
      102 LENGTH                           R6 R4
      103 JUMPIFEQKN                       R6 K17 [0] ; [+22]
      105 GETUPVAL                         R6 2
      106 MOVE                             R8 R4
      107 NAMECALL                         R6 R6 K18 ["Set"]
      109 CALL                             R6 2 0
      110 GETUPVAL                         R6 8
      111 LOADK                            R8 K19 ["Insert assets"]
      112 NAMECALL                         R6 R6 K20 ["SetWaypoint"]
      114 CALL                             R6 2 0
      115 GETIMPORT                        R8 K3 [game]
      117 GETTABLEKS                       R7 R8 K4 ["Workspace"]
      119 GETTABLEKS                       R6 R7 K21 ["CurrentCamera"]
      121 JUMPIFNOT                        R6 ; [+4]
      122 GETUPVAL                         R7 9
      123 MOVE                             R8 R6
      124 MOVE                             R9 R4
      125 CALL                             R7 2 0
      126 RETURN                           R0 0

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
       16 GETTABLEKS                       R6 R0 K6 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Asset"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["getAssetInstances"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R7 K8 ["Asset"]
       31 GETTABLEKS                       R5 R6 K9 ["Util"]
       33 GETTABLEKS                       R4 R5 K11 ["cameraZoomToExtents"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R8 R0 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K8 ["Asset"]
       42 GETTABLEKS                       R6 R7 K9 ["Util"]
       44 GETTABLEKS                       R5 R6 K12 ["getInsertPosition"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Src"]
       51 GETTABLEKS                       R7 R8 K9 ["Util"]
       53 GETTABLEKS                       R6 R7 K13 ["logIfDebug"]
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
       76 GETTABLEKS                       R12 R0 K6 ["Src"]
       78 GETTABLEKS                       R11 R12 K20 ["Flags"]
       80 GETTABLEKS                       R10 R11 K21 ["getFFlagAudioAssetInsertAssetManagerUsesSelection"]
       82 CALL                             R9 1 1
       83 DUPCLOSURE                       R10 K22 [PROTO_0]
       84 DUPCLOSURE                       R11 K23 [PROTO_1]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R3
       95 RETURN                           R11 1
