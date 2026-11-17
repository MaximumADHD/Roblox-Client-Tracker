PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetIdentity"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Identity"]
        6 GETTABLEKS                       R3 R3 K2 ["Standalone"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       26 MOVE                             R3 R0
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       32 MOVE                             R3 R0
       33 MOVE                             R4 R1
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 5
       36 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       38 MOVE                             R3 R0
       39 MOVE                             R4 R1
       40 CALL                             R2 2 0
       41 GETUPVAL                         R2 6
       42 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       44 MOVE                             R3 R0
       45 MOVE                             R4 R1
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 7
       48 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       50 MOVE                             R3 R0
       51 MOVE                             R4 R1
       52 CALL                             R2 2 0
       53 GETUPVAL                         R2 8
       54 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       56 MOVE                             R3 R0
       57 MOVE                             R4 R1
       58 CALL                             R2 2 0
       59 GETUPVAL                         R2 9
       60 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       62 MOVE                             R3 R0
       63 MOVE                             R4 R1
       64 CALL                             R2 2 0
       65 GETUPVAL                         R2 10
       66 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       68 MOVE                             R3 R0
       69 MOVE                             R4 R1
       70 CALL                             R2 2 0
       71 GETUPVAL                         R2 11
       72 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       74 MOVE                             R3 R0
       75 MOVE                             R4 R1
       76 CALL                             R2 2 0
       77 GETUPVAL                         R2 12
       78 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       80 MOVE                             R3 R0
       81 MOVE                             R4 R1
       82 CALL                             R2 2 0
       83 GETUPVAL                         R2 13
       84 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       86 MOVE                             R3 R0
       87 MOVE                             R4 R1
       88 CALL                             R2 2 0
       89 GETUPVAL                         R2 14
       90 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantSavePlaceTool"]
       92 JUMPIFNOT                        R2 ; [+6]
       93 GETUPVAL                         R2 15
       94 GETTABLEKS                       R2 R2 K3 ["connectRemotes"]
       96 MOVE                             R3 R0
       97 MOVE                             R4 R1
       98 CALL                             R2 2 0
       99 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Actions"]
       18 GETTABLEKS                       R4 R4 K9 ["AnimationGenActions"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Actions"]
       25 GETTABLEKS                       R5 R5 K10 ["AssetInsertActions"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Actions"]
       32 GETTABLEKS                       R6 R6 K11 ["ChannelActions"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Guest"]
       39 GETTABLEKS                       R7 R7 K13 ["Environment"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Actions"]
       46 GETTABLEKS                       R8 R8 K14 ["ExecuteLuauActions"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Flags"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K8 ["Actions"]
       58 GETTABLEKS                       R10 R10 K16 ["InstanceActions"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K8 ["Actions"]
       65 GETTABLEKS                       R11 R11 K17 ["LayoutGenActions"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K8 ["Actions"]
       72 GETTABLEKS                       R12 R12 K18 ["MaterialGenActions"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Actions"]
       79 GETTABLEKS                       R13 R13 K19 ["MeshGenActions"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K8 ["Actions"]
       86 GETTABLEKS                       R14 R14 K20 ["NetworkingActions"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K8 ["Actions"]
       93 GETTABLEKS                       R15 R15 K21 ["PlaceSaveActions"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K8 ["Actions"]
      100 GETTABLEKS                       R16 R16 K22 ["PrimitiveGenActions"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R0 K8 ["Actions"]
      107 GETTABLEKS                       R17 R17 K23 ["ReadFileActions"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R18 R0 K8 ["Actions"]
      114 GETTABLEKS                       R18 R18 K24 ["SegmentMeshActions"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R19 R0 K8 ["Actions"]
      121 GETTABLEKS                       R19 R19 K25 ["TextureGenActions"]
      123 CALL                             R18 1 1
      124 DUPCLOSURE                       R19 K26 [PROTO_0]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R14
      141 DUPTABLE                         R20 K28 [{"connectRemotes"}]
      142 SETTABLEKS                       R19 R20 K27 ["connectRemotes"]
      144 RETURN                           R20 1
