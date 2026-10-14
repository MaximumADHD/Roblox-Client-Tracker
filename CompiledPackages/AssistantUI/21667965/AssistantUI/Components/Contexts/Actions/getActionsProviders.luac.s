PROTO_0:
        0 NEWTABLE                         R0 0 11
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["Provider"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["Provider"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K0 ["Provider"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K0 ["Provider"]
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 0
       23 GETUPVAL                         R6 5
       24 GETTABLEKS                       R6 R6 K0 ["Provider"]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 0
       28 GETUPVAL                         R7 6
       29 GETTABLEKS                       R7 R7 K0 ["Provider"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 0
       33 GETUPVAL                         R8 7
       34 GETTABLEKS                       R8 R8 K0 ["Provider"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 0
       38 GETUPVAL                         R9 8
       39 GETTABLEKS                       R9 R9 K0 ["Provider"]
       41 CALL                             R8 1 1
       42 GETUPVAL                         R9 0
       43 GETUPVAL                         R10 9
       44 GETTABLEKS                       R10 R10 K0 ["Provider"]
       46 CALL                             R9 1 1
       47 GETUPVAL                         R10 0
       48 GETUPVAL                         R11 10
       49 GETTABLEKS                       R11 R11 K0 ["Provider"]
       51 CALL                             R10 1 1
       52 GETUPVAL                         R11 0
       53 GETUPVAL                         R12 11
       54 GETTABLEKS                       R12 R12 K0 ["Provider"]
       56 CALL                             R11 1 -1
       57 SETLIST                          R0 R1 -1 [1]
       59 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       20 GETTABLEKS                       R4 R4 K10 ["Actions"]
       22 GETTABLEKS                       R4 R4 K11 ["AnimationGenActionsContext"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Components"]
       29 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K10 ["Actions"]
       33 GETTABLEKS                       R5 R5 K12 ["AssetInsertActionsContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K8 ["Components"]
       40 GETTABLEKS                       R6 R6 K9 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K10 ["Actions"]
       44 GETTABLEKS                       R6 R6 K13 ["ChannelActionsContext"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R0 K8 ["Components"]
       51 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       53 GETTABLEKS                       R7 R7 K10 ["Actions"]
       55 GETTABLEKS                       R7 R7 K14 ["ExecuteLuauActionsContext"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K6 [require]
       60 GETTABLEKS                       R8 R0 K8 ["Components"]
       62 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       64 GETTABLEKS                       R8 R8 K10 ["Actions"]
       66 GETTABLEKS                       R8 R8 K15 ["InstanceActionsContext"]
       68 CALL                             R7 1 1
       69 GETIMPORT                        R8 K6 [require]
       71 GETTABLEKS                       R9 R0 K8 ["Components"]
       73 GETTABLEKS                       R9 R9 K9 ["Contexts"]
       75 GETTABLEKS                       R9 R9 K10 ["Actions"]
       77 GETTABLEKS                       R9 R9 K16 ["MaterialGenActionsContext"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K6 [require]
       82 GETTABLEKS                       R10 R0 K8 ["Components"]
       84 GETTABLEKS                       R10 R10 K9 ["Contexts"]
       86 GETTABLEKS                       R10 R10 K10 ["Actions"]
       88 GETTABLEKS                       R10 R10 K17 ["MeshGenActionsContext"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K6 [require]
       93 GETTABLEKS                       R11 R0 K8 ["Components"]
       95 GETTABLEKS                       R11 R11 K9 ["Contexts"]
       97 GETTABLEKS                       R11 R11 K10 ["Actions"]
       99 GETTABLEKS                       R11 R11 K18 ["PrimitiveGenActionsContext"]
      101 CALL                             R10 1 1
      102 GETIMPORT                        R11 K6 [require]
      104 GETTABLEKS                       R12 R0 K8 ["Components"]
      106 GETTABLEKS                       R12 R12 K9 ["Contexts"]
      108 GETTABLEKS                       R12 R12 K10 ["Actions"]
      110 GETTABLEKS                       R12 R12 K19 ["ReadFileActionsContext"]
      112 CALL                             R11 1 1
      113 GETIMPORT                        R12 K6 [require]
      115 GETTABLEKS                       R13 R0 K8 ["Components"]
      117 GETTABLEKS                       R13 R13 K9 ["Contexts"]
      119 GETTABLEKS                       R13 R13 K10 ["Actions"]
      121 GETTABLEKS                       R13 R13 K20 ["SegmentMeshActionsContext"]
      123 CALL                             R12 1 1
      124 GETIMPORT                        R13 K6 [require]
      126 GETTABLEKS                       R14 R0 K8 ["Components"]
      128 GETTABLEKS                       R14 R14 K9 ["Contexts"]
      130 GETTABLEKS                       R14 R14 K10 ["Actions"]
      132 GETTABLEKS                       R14 R14 K21 ["TextureGenActionsContext"]
      134 CALL                             R13 1 1
      135 GETTABLEKS                       R14 R2 K22 ["createElement"]
      137 DUPCLOSURE                       R15 K23 [PROTO_0]
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R3
      150 RETURN                           R15 1
