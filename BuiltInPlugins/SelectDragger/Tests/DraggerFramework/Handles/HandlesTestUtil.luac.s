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
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Part"]
        3 CALL                             R1 1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K4 ["Anchored"]
        7 ORK                              R2 R0 K5 [{4, 4, 4}]
        8 SETTABLEKS                       R2 R1 K6 ["Size"]
       10 GETIMPORT                        R2 K8 [CFrame.new]
       12 LOADN                            R3 0
       13 LOADN                            R4 0
       14 LOADN                            R5 0
       15 CALL                             R2 3 1
       16 SETTABLEKS                       R2 R1 K7 ["CFrame"]
       18 GETUPVAL                         R2 0
       19 SETTABLEKS                       R2 R1 K9 ["Parent"]
       21 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Part"]
        3 CALL                             R1 1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K4 ["Anchored"]
        7 LOADK                            R2 K5 [{4, 4, 4}]
        8 SETTABLEKS                       R2 R1 K6 ["Size"]
       10 GETIMPORT                        R2 K8 [CFrame.new]
       12 LOADN                            R3 0
       13 LOADN                            R4 0
       14 LOADN                            R5 0
       15 CALL                             R2 3 1
       16 SETTABLEKS                       R2 R1 K7 ["CFrame"]
       18 GETIMPORT                        R2 K2 [Instance.new]
       20 LOADK                            R3 K9 ["ProceduralModel"]
       21 CALL                             R2 1 1
       22 ORK                              R3 R0 K5 [{4, 4, 4}]
       23 SETTABLEKS                       R3 R2 K6 ["Size"]
       25 GETIMPORT                        R5 K8 [CFrame.new]
       27 LOADN                            R6 0
       28 LOADN                            R7 0
       29 LOADN                            R8 0
       30 CALL                             R5 3 -1
       31 NAMECALL                         R3 R2 K10 ["PivotTo"]
       33 CALL                             R3 -1 0
       34 SETTABLEKS                       R2 R1 K11 ["Parent"]
       36 GETIMPORT                        R3 K13 [workspace]
       38 SETTABLEKS                       R3 R2 K11 ["Parent"]
       40 RETURN                           R2 1

PROTO_4:
        0 RETURN                           R1 1

PROTO_5:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["new"]
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K0 ["new"]
       12 CALL                             R4 0 -1
       13 CALL                             R2 -1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R6 R1 K2 ["SelectedInstanceClass"]
       17 ORK                              R5 R6 K1 ["Part"]
       18 GETTABLE                         R3 R4 R5
       19 GETTABLEKS                       R4 R1 K3 ["InitialSelectionSize"]
       21 CALL                             R3 1 1
       22 LOADNIL                          R4
       23 GETTABLEKS                       R5 R1 K4 ["implementation"]
       25 JUMPIFNOT                        R5 ; [+3]
       26 GETTABLEKS                       R4 R1 K4 ["implementation"]
       28 JUMP                             ; [+17]
       29 GETUPVAL                         R5 3
       30 JUMPIFNOTEQ                      R0 R5 ; [+8]
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K0 ["new"]
       35 MOVE                             R6 R2
       36 CALL                             R5 1 1
       37 MOVE                             R4 R5
       38 JUMP                             ; [+7]
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R5 R5 K0 ["new"]
       42 MOVE                             R6 R2
       43 DUPCLOSURE                       R7 K5 [PROTO_4]
       44 CALL                             R5 2 1
       45 MOVE                             R4 R5
       46 DUPTABLE                         R5 K9 [{"MustPositionAtPivot", "Summonable", "ShowBoundingBox"}]
       47 GETTABLEKS                       R7 R1 K6 ["MustPositionAtPivot"]
       49 ORK                              R6 R7 K10 [False]
       50 SETTABLEKS                       R6 R5 K6 ["MustPositionAtPivot"]
       52 GETTABLEKS                       R7 R1 K7 ["Summonable"]
       54 ORK                              R6 R7 K11 [True]
       55 SETTABLEKS                       R6 R5 K7 ["Summonable"]
       57 GETTABLEKS                       R7 R1 K8 ["ShowBoundingBox"]
       59 ORK                              R6 R7 K11 [True]
       60 SETTABLEKS                       R6 R5 K8 ["ShowBoundingBox"]
       62 GETTABLEKS                       R6 R0 K0 ["new"]
       64 MOVE                             R7 R2
       65 MOVE                             R8 R5
       66 MOVE                             R9 R4
       67 CALL                             R6 3 1
       68 SETTABLEKS                       R4 R6 K12 ["_implementation"]
       70 NAMECALL                         R7 R2 K13 ["getSelection"]
       72 CALL                             R7 1 1
       73 NEWTABLE                         R9 0 1
       75 MOVE                             R10 R3
       76 SETLIST                          R9 R10 1 [1]
       78 NAMECALL                         R7 R7 K14 ["Set"]
       80 CALL                             R7 2 0
       81 GETUPVAL                         R7 6
       82 GETTABLEKS                       R7 R7 K0 ["new"]
       84 MOVE                             R8 R2
       85 GETUPVAL                         R9 7
       86 DUPTABLE                         R10 K17 [{["AnalyticsName"] = "Test"}]
       87 CALL                             R7 3 1
       88 NAMECALL                         R8 R7 K18 ["select"]
       90 CALL                             R8 1 0
       91 NAMECALL                         R8 R7 K19 ["getModel"]
       93 CALL                             R8 1 1
       94 GETUPVAL                         R9 8
       95 GETTABLEKS                       R9 R9 K0 ["new"]
       97 MOVE                             R10 R2
       98 NAMECALL                         R11 R2 K13 ["getSelection"]
      100 CALL                             R11 1 1
      101 NAMECALL                         R11 R11 K20 ["Get"]
      103 CALL                             R11 1 -1
      104 CALL                             R9 -1 1
      105 MOVE                             R12 R8
      106 MOVE                             R13 R9
      107 NAMECALL                         R10 R6 K21 ["update"]
      109 CALL                             R10 3 0
      110 MOVE                             R10 R6
      111 MOVE                             R11 R2
      112 MOVE                             R12 R4
      113 MOVE                             R13 R8
      114 MOVE                             R14 R9
      115 MOVE                             R15 R3
      116 MOVE                             R16 R7
      117 RETURN                           R10 7

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_handles"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["NormalId"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R5 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 GETIMPORT                        R2 K3 [error]
       14 LOADK                            R4 K4 ["Could not find handle with normal id %*"]
       15 MOVE                             R6 R1
       16 NAMECALL                         R4 R4 K5 ["format"]
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createMouseRay"]
        3 CALL                             R1 0 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["hitTest"]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["prepareForMouseDrag"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       35 GETTABLEKS                       R9 R3 K14 ["Implementation"]
       37 GETTABLEKS                       R9 R9 K15 ["DraggerContext_FixtureImpl"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K11 [require]
       42 GETTABLEKS                       R10 R3 K16 ["Handles"]
       44 GETTABLEKS                       R10 R10 K17 ["ExtrudeHandles"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K11 [require]
       49 GETTABLEKS                       R11 R3 K18 ["DraggerTools"]
       51 GETTABLEKS                       R11 R11 K19 ["DraggerToolFixture"]
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
       69 NEWTABLE                         R14 8 0
       71 DUPCLOSURE                       R15 K23 [PROTO_0]
       72 SETTABLEKS                       R15 R14 K24 ["createMouseRay"]
       74 DUPCLOSURE                       R15 K25 [PROTO_1]
       75 SETTABLEKS                       R15 R14 K26 ["prepareForMouseDrag"]
       77 DUPTABLE                         R15 K29 [{"Part", "ProceduralModel"}]
       78 DUPCLOSURE                       R16 K30 [PROTO_2]
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R16 R15 K27 ["Part"]
       82 DUPCLOSURE                       R16 K31 [PROTO_3]
       83 SETTABLEKS                       R16 R15 K28 ["ProceduralModel"]
       85 DUPCLOSURE                       R16 K32 [PROTO_5]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R13
       95 SETTABLEKS                       R16 R14 K33 ["setupStandardTestEnvironment"]
       97 DUPCLOSURE                       R16 K34 [PROTO_6]
       98 SETTABLEKS                       R16 R14 K35 ["getHandleWithNormalId"]
      100 DUPCLOSURE                       R16 K36 [PROTO_7]
      101 CAPTURE                          VAL R14
      102 SETTABLEKS                       R16 R14 K37 ["testMouseEvents"]
      104 RETURN                           R14 1
