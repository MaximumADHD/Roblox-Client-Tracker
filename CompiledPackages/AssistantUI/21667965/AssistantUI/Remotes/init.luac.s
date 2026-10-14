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
       89 RETURN                           R0 0

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
       51 GETTABLEKS                       R9 R0 K8 ["Actions"]
       53 GETTABLEKS                       R9 R9 K15 ["InstanceActions"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Actions"]
       60 GETTABLEKS                       R10 R10 K16 ["LayoutGenActions"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Actions"]
       67 GETTABLEKS                       R11 R11 K17 ["MaterialGenActions"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K8 ["Actions"]
       74 GETTABLEKS                       R12 R12 K18 ["MeshGenActions"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K8 ["Actions"]
       81 GETTABLEKS                       R13 R13 K19 ["NetworkingActions"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K8 ["Actions"]
       88 GETTABLEKS                       R14 R14 K20 ["PrimitiveGenActions"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K8 ["Actions"]
       95 GETTABLEKS                       R15 R15 K21 ["ReadFileActions"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K8 ["Actions"]
      102 GETTABLEKS                       R16 R16 K22 ["SegmentMeshActions"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K8 ["Actions"]
      109 GETTABLEKS                       R17 R17 K23 ["TextureGenActions"]
      111 CALL                             R16 1 1
      112 DUPCLOSURE                       R17 K24 [PROTO_0]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R3
      127 DUPTABLE                         R18 K26 [{"connectRemotes"}]
      128 SETTABLEKS                       R17 R18 K25 ["connectRemotes"]
      130 RETURN                           R18 1
