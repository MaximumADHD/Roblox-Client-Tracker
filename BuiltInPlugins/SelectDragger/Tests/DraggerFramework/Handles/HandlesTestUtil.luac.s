PROTO_0:
        0 GETIMPORT                        R2 K2 [Ray.new]
        2 ORK                              R3 R0 K3 [{0, 10, 0}]
        3 ORK                              R4 R1 K4 [{0, -10, 0}]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+6]
        2 GETIMPORT                        R3 K2 [next]
        4 GETTABLEKS                       R4 R0 K3 ["_handles"]
        6 CALL                             R3 1 1
        7 ORK                              R2 R3 K0 ["MinusX"]
        8 MOVE                             R1 R2
        9 GETTABLEKS                       R3 R0 K3 ["_handles"]
       11 GETTABLE                         R2 R3 R1
       12 JUMPIF                           R2 ; [+10]
       13 GETIMPORT                        R2 K5 [pairs]
       15 GETTABLEKS                       R3 R0 K3 ["_handles"]
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 MOVE                             R1 R5
       20 RETURN                           R1 1
       21 FORGLOOP                         R2 1 ; [-3]
       23 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["new"]
        8 LOADNIL                          R3
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K0 ["new"]
       12 CALL                             R4 0 -1
       13 CALL                             R2 -1 1
       14 GETIMPORT                        R3 K2 [Instance.new]
       16 LOADK                            R4 K3 ["Part"]
       17 CALL                             R3 1 1
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K4 ["Anchored"]
       21 LOADK                            R4 K5 [{4, 4, 4}]
       22 SETTABLEKS                       R4 R3 K6 ["Size"]
       24 GETIMPORT                        R4 K8 [CFrame.new]
       26 LOADN                            R5 0
       27 LOADN                            R6 0
       28 LOADN                            R7 0
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K7 ["CFrame"]
       32 GETUPVAL                         R4 2
       33 SETTABLEKS                       R4 R3 K9 ["Parent"]
       35 LOADNIL                          R4
       36 GETTABLEKS                       R5 R1 K10 ["implementation"]
       38 JUMPIFNOT                        R5 ; [+3]
       39 GETTABLEKS                       R4 R1 K10 ["implementation"]
       41 JUMP                             ; [+16]
       42 GETUPVAL                         R5 3
       43 JUMPIFNOTEQ                      R0 R5 ; [+8]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R5 R6 K0 ["new"]
       48 MOVE                             R6 R2
       49 CALL                             R5 1 1
       50 MOVE                             R4 R5
       51 JUMP                             ; [+6]
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R5 R6 K0 ["new"]
       55 MOVE                             R6 R2
       56 CALL                             R5 1 1
       57 MOVE                             R4 R5
       58 DUPTABLE                         R5 K14 [{"MustPositionAtPivot", "Summonable", "ShowBoundingBox"}]
       59 GETTABLEKS                       R7 R1 K11 ["MustPositionAtPivot"]
       61 ORK                              R6 R7 K15 [False]
       62 SETTABLEKS                       R6 R5 K11 ["MustPositionAtPivot"]
       64 GETTABLEKS                       R7 R1 K12 ["Summonable"]
       66 ORK                              R6 R7 K16 [True]
       67 SETTABLEKS                       R6 R5 K12 ["Summonable"]
       69 GETTABLEKS                       R7 R1 K13 ["ShowBoundingBox"]
       71 ORK                              R6 R7 K16 [True]
       72 SETTABLEKS                       R6 R5 K13 ["ShowBoundingBox"]
       74 GETTABLEKS                       R6 R0 K0 ["new"]
       76 MOVE                             R7 R2
       77 MOVE                             R8 R5
       78 MOVE                             R9 R4
       79 CALL                             R6 3 1
       80 SETTABLEKS                       R4 R6 K17 ["_implementation"]
       82 NAMECALL                         R7 R2 K18 ["getSelection"]
       84 CALL                             R7 1 1
       85 NEWTABLE                         R9 0 1
       87 MOVE                             R10 R3
       88 SETLIST                          R9 R10 1 [1]
       90 NAMECALL                         R7 R7 K19 ["Set"]
       92 CALL                             R7 2 0
       93 GETUPVAL                         R8 6
       94 GETTABLEKS                       R7 R8 K0 ["new"]
       96 MOVE                             R8 R2
       97 GETUPVAL                         R9 7
       98 DUPTABLE                         R10 K21 [{"AnalyticsName"}]
       99 LOADK                            R11 K22 ["Test"]
      100 SETTABLEKS                       R11 R10 K20 ["AnalyticsName"]
      102 CALL                             R7 3 1
      103 NAMECALL                         R8 R7 K23 ["select"]
      105 CALL                             R8 1 0
      106 NAMECALL                         R8 R7 K24 ["getModel"]
      108 CALL                             R8 1 1
      109 GETUPVAL                         R10 8
      110 GETTABLEKS                       R9 R10 K0 ["new"]
      112 MOVE                             R10 R2
      113 NAMECALL                         R11 R2 K18 ["getSelection"]
      115 CALL                             R11 1 1
      116 NAMECALL                         R11 R11 K25 ["Get"]
      118 CALL                             R11 1 -1
      119 CALL                             R9 -1 1
      120 MOVE                             R12 R8
      121 MOVE                             R13 R9
      122 NAMECALL                         R10 R6 K26 ["update"]
      124 CALL                             R10 3 0
      125 MOVE                             R10 R6
      126 MOVE                             R11 R2
      127 MOVE                             R12 R4
      128 MOVE                             R13 R8
      129 MOVE                             R14 R9
      130 MOVE                             R15 R3
      131 MOVE                             R16 R7
      132 RETURN                           R10 7

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createMouseRay"]
        3 CALL                             R1 0 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["hitTest"]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["prepareForMouseDrag"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 NAMECALL                         R3 R0 K3 ["mouseDown"]
       17 CALL                             R3 3 0
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R0 K4 ["mouseDrag"]
       21 CALL                             R3 2 0
       22 MOVE                             R5 R1
       23 NAMECALL                         R3 R0 K5 ["mouseUp"]
       25 CALL                             R3 2 0
       26 LOADB                            R3 1
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R1 K3 ["Packages"]
       13 GETTABLEKS                       R3 R2 K4 ["DraggerFramework"]
       15 GETTABLEKS                       R4 R2 K5 ["DraggerSchemaCore"]
       17 GETIMPORT                        R5 K7 [game]
       19 LOADK                            R7 K8 ["Workspace"]
       20 NAMECALL                         R5 R5 K9 ["GetService"]
       22 CALL                             R5 2 1
       23 GETIMPORT                        R6 K11 [require]
       25 GETTABLEKS                       R7 R4 K12 ["DraggerSchema"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K11 [require]
       30 GETTABLEKS                       R8 R4 K13 ["Selection"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K11 [require]
       35 GETTABLEKS                       R10 R3 K14 ["Implementation"]
       37 GETTABLEKS                       R9 R10 K15 ["DraggerContext_FixtureImpl"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K11 [require]
       42 GETTABLEKS                       R11 R3 K16 ["Handles"]
       44 GETTABLEKS                       R10 R11 K17 ["ExtrudeHandles"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K11 [require]
       49 GETTABLEKS                       R12 R3 K18 ["DraggerTools"]
       51 GETTABLEKS                       R11 R12 K19 ["DraggerToolFixture"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K11 [require]
       56 GETTABLEKS                       R12 R4 K20 ["ExtrudeHandlesImplementation"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K11 [require]
       61 GETTABLEKS                       R13 R4 K21 ["TransformHandlesImplementation"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K11 [require]
       66 GETTABLEKS                       R14 R4 K22 ["SelectionInfo"]
       68 CALL                             R13 1 1
       69 NEWTABLE                         R14 4 0
       71 DUPCLOSURE                       R15 K23 [PROTO_0]
       72 SETTABLEKS                       R15 R14 K24 ["createMouseRay"]
       74 DUPCLOSURE                       R15 K25 [PROTO_1]
       75 SETTABLEKS                       R15 R14 K26 ["prepareForMouseDrag"]
       77 DUPCLOSURE                       R15 K27 [PROTO_2]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R13
       87 SETTABLEKS                       R15 R14 K28 ["setupStandardTestEnvironment"]
       89 DUPCLOSURE                       R15 K29 [PROTO_3]
       90 CAPTURE                          VAL R14
       91 SETTABLEKS                       R15 R14 K30 ["testMouseEvents"]
       93 RETURN                           R14 1
