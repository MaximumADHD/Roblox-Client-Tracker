PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_queueRender"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_model"]
       10 SETTABLEKS                       R1 R2 K3 ["_meshEditingContext"]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K4 ["_renderTask"]
       15 LOADN                            R3 0
       16 SETTABLEKS                       R3 R2 K5 ["_transparency"]
       18 NEWTABLE                         R3 0 0
       20 SETTABLEKS                       R3 R2 K6 ["_trianglesFacingCamera"]
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K7 ["_controlPointFacingCamera"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K8 ["new"]
       29 MOVE                             R4 R1
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K9 ["_controlPointViews"]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K8 ["new"]
       36 MOVE                             R4 R1
       37 GETUPVAL                         R5 3
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K10 ["_wireframeMeshView"]
       41 GETTABLEKS                       R3 R2 K2 ["_model"]
       43 GETTABLEKS                       R3 R3 K11 ["modelChanged"]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R2
       47 NAMECALL                         R3 R3 K12 ["Connect"]
       49 CALL                             R3 2 0
       50 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_transparency"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_transparency"]
        7 NAMECALL                         R2 R0 K1 ["_queueRender"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_transparency"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_controlPointViews"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["getSelectablesForMesh"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_controlPointViews"]
        2 NAMECALL                         R1 R1 K1 ["getSelectables"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_computeControlPointFacingCamera"]
        3 CALL                             R2 2 2
        4 SETTABLEKS                       R2 R0 K1 ["_controlPointFacingCamera"]
        6 SETTABLEKS                       R3 R0 K2 ["_trianglesFacingCamera"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["_controlPointFacingCamera"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+2]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 GETTABLEKS                       R6 R0 K0 ["_controlPointFacingCamera"]
        8 GETTABLE                         R5 R6 R1
        9 GETTABLE                         R4 R5 R2
       10 JUMPIFEQKB                       R4 TRUE ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R3 R0 1
        2 GETTABLE                         R1 R2 R3
        3 GETUPVAL                         R3 0
        4 GETTABLEN                        R4 R0 2
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 0
        7 GETTABLEN                        R5 R0 3
        8 GETTABLE                         R3 R4 R5
        9 JUMPIFNOT                        R1 ; [+2]
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+2]
       12 LOADB                            R4 0
       13 RETURN                           R4 1
       14 GETUPVAL                         R4 1
       15 MOVE                             R6 R1
       16 NAMECALL                         R4 R4 K0 ["PointToWorldSpace"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 1
       20 MOVE                             R7 R2
       21 NAMECALL                         R5 R5 K0 ["PointToWorldSpace"]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 1
       25 MOVE                             R8 R3
       26 NAMECALL                         R6 R6 K0 ["PointToWorldSpace"]
       28 CALL                             R6 2 1
       29 SUB                              R7 R5 R4
       30 SUB                              R9 R6 R4
       31 NAMECALL                         R7 R7 K1 ["Cross"]
       33 CALL                             R7 2 1
       34 GETTABLEKS                       R7 R7 K2 ["Unit"]
       36 GETUPVAL                         R8 2
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R8 K3 ["Dot"]
       40 CALL                             R8 2 1
       41 LOADN                            R10 0
       42 JUMPIFLE                         R8 R10 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 RETURN                           R9 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_meshEditingContext"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["PointLocationData"]
        5 JUMPIF                           R2 ; [+5]
        6 NEWTABLE                         R2 0 0
        8 NEWTABLE                         R3 0 0
       10 RETURN                           R2 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["CurrentCamera"]
       14 JUMPIF                           R2 ; [+5]
       15 NEWTABLE                         R3 0 0
       17 NEWTABLE                         R4 0 0
       19 RETURN                           R3 2
       20 GETTABLEKS                       R3 R2 K3 ["CFrame"]
       22 GETTABLEKS                       R4 R3 K4 ["LookVector"]
       24 NEWTABLE                         R5 0 0
       26 NEWTABLE                         R6 0 0
       28 GETTABLEKS                       R7 R1 K1 ["PointLocationData"]
       30 GETTABLEKS                       R7 R7 K5 ["Positions"]
       32 LOADNIL                          R8
       33 LOADNIL                          R9
       34 FORGPREP                         R7
       35 GETTABLEKS                       R12 R0 K0 ["_meshEditingContext"]
       37 MOVE                             R14 R10
       38 NAMECALL                         R12 R12 K6 ["getMeshOriginWorld"]
       40 CALL                             R12 2 1
       41 JUMPIFEQKNIL                     R12 ; [+73]
       43 GETTABLEKS                       R14 R1 K1 ["PointLocationData"]
       45 GETTABLEKS                       R14 R14 K7 ["VertexData"]
       47 GETTABLE                         R13 R14 R10
       48 JUMPIFNOT                        R13 ; [+66]
       49 GETTABLEKS                       R15 R1 K1 ["PointLocationData"]
       51 GETTABLEKS                       R15 R15 K8 ["VertexTriangleIndexData"]
       53 GETTABLE                         R14 R15 R10
       54 GETTABLEKS                       R16 R1 K1 ["PointLocationData"]
       56 GETTABLEKS                       R16 R16 K9 ["TriangleIndexData"]
       58 GETTABLE                         R15 R16 R10
       59 NEWCLOSURE                       R16 P0
       60 CAPTURE                          VAL R13
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R4
       63 NEWTABLE                         R17 0 0
       65 MOVE                             R18 R15
       66 LOADNIL                          R19
       67 LOADNIL                          R20
       68 FORGPREP                         R18
       69 MOVE                             R23 R16
       70 MOVE                             R24 R22
       71 CALL                             R23 1 1
       72 SETTABLE                         R23 R17 R21
       73 FORGLOOP                         R18 2 ; [-5]
       75 NEWTABLE                         R18 0 0
       77 MOVE                             R19 R11
       78 LOADNIL                          R20
       79 LOADNIL                          R21
       80 FORGPREP                         R19
       81 GETTABLE                         R24 R14 R22
       82 JUMPIF                           R24 ; [+3]
       83 LOADB                            R25 1
       84 SETTABLE                         R25 R18 R22
       85 JUMP                             ; [+25]
       86 LOADN                            R25 0
       87 LOADN                            R26 0
       88 MOVE                             R27 R24
       89 LOADNIL                          R28
       90 LOADNIL                          R29
       91 FORGPREP                         R27
       92 ADDK                             R26 R26 K10 [1]
       93 GETTABLE                         R32 R17 R31
       94 JUMPIFNOT                        R32 ; [+1]
       95 ADDK                             R25 R25 K10 [1]
       96 FORGLOOP                         R27 2 ; [-5]
       98 LOADN                            R27 0
       99 JUMPIFNOTLT                      R27 R26 ; [+9]
      101 DIV                              R27 R25 R26
      102 LOADK                            R29 K11 [0.333333333333333]
      103 JUMPIFLT                         R29 R27 ; [+2]
      105 LOADB                            R28 0 +1
      106 LOADB                            R28 1
      107 SETTABLE                         R28 R18 R22
      108 JUMP                             ; [+2]
      109 LOADB                            R27 1
      110 SETTABLE                         R27 R18 R22
      111 FORGLOOP                         R19 2 ; [-31]
      113 SETTABLE                         R17 R6 R10
      114 SETTABLE                         R18 R5 R10
      115 FORGLOOP                         R7 2 ; [-81]
      117 RETURN                           R5 2

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_renderTask"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["_renderTask"]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K5 [{"PointLocationData", "Transparency", "SelectedControlPointWeights", "HoveredPointData"}]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K6 ["_model"]
       15 NAMECALL                         R3 R3 K7 ["getPointLocationData"]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K1 ["PointLocationData"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K8 ["_transparency"]
       23 SETTABLEKS                       R3 R2 K2 ["Transparency"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["_model"]
       28 NAMECALL                         R3 R3 K9 ["getSelectedControlPointWeights"]
       30 CALL                             R3 1 1
       31 SETTABLEKS                       R3 R2 K3 ["SelectedControlPointWeights"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K6 ["_model"]
       36 NAMECALL                         R3 R3 K10 ["getHoveredPoint"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K4 ["HoveredPointData"]
       41 NAMECALL                         R0 R0 K11 ["_render"]
       43 CALL                             R0 2 0
       44 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_renderTask"]
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R1
        6 GETIMPORT                        R2 K3 [task.defer]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          REF R1
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 SETTABLEKS                       R1 R0 K0 ["_renderTask"]
       15 CLOSEUPVALS                      R1
       16 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_updateFacingCameraState"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["_controlPointViews"]
        6 DUPTABLE                         R4 K7 [{"ControlPointPositions", "Transparency", "SelectedControlPointWeights", "ControlPointFacingCamera", "CenterHoveredPoint"}]
        7 GETTABLEKS                       R5 R1 K8 ["PointLocationData"]
        9 GETTABLEKS                       R5 R5 K9 ["Positions"]
       11 SETTABLEKS                       R5 R4 K2 ["ControlPointPositions"]
       13 GETTABLEKS                       R5 R1 K3 ["Transparency"]
       15 SETTABLEKS                       R5 R4 K3 ["Transparency"]
       17 GETTABLEKS                       R5 R1 K4 ["SelectedControlPointWeights"]
       19 SETTABLEKS                       R5 R4 K4 ["SelectedControlPointWeights"]
       21 GETTABLEKS                       R5 R0 K10 ["_controlPointFacingCamera"]
       23 SETTABLEKS                       R5 R4 K5 ["ControlPointFacingCamera"]
       25 GETTABLEKS                       R5 R1 K11 ["HoveredPointData"]
       27 SETTABLEKS                       R5 R4 K6 ["CenterHoveredPoint"]
       29 NAMECALL                         R2 R2 K12 ["render"]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R2 R0 K13 ["_wireframeMeshView"]
       34 DUPTABLE                         R4 K23 [{"Context", "Transparency", "TrianglesFacingCamera", "TriangleIndexData", "VertexData", "PointRadius", "SelectedControlPointWeights", "WireColor", "SegmentColor", "SelectedColor", "SelectedNoWeightColor"}]
       35 GETTABLEKS                       R5 R0 K24 ["_meshEditingContext"]
       37 SETTABLEKS                       R5 R4 K14 ["Context"]
       39 GETTABLEKS                       R5 R1 K3 ["Transparency"]
       41 SETTABLEKS                       R5 R4 K3 ["Transparency"]
       43 GETTABLEKS                       R5 R0 K25 ["_trianglesFacingCamera"]
       45 SETTABLEKS                       R5 R4 K15 ["TrianglesFacingCamera"]
       47 GETTABLEKS                       R5 R1 K8 ["PointLocationData"]
       49 GETTABLEKS                       R5 R5 K16 ["TriangleIndexData"]
       51 SETTABLEKS                       R5 R4 K16 ["TriangleIndexData"]
       53 GETTABLEKS                       R5 R1 K8 ["PointLocationData"]
       55 GETTABLEKS                       R5 R5 K17 ["VertexData"]
       57 SETTABLEKS                       R5 R4 K17 ["VertexData"]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K26 ["ControlPoint"]
       62 GETTABLEKS                       R5 R5 K18 ["PointRadius"]
       64 SETTABLEKS                       R5 R4 K18 ["PointRadius"]
       66 GETTABLEKS                       R5 R1 K4 ["SelectedControlPointWeights"]
       68 SETTABLEKS                       R5 R4 K4 ["SelectedControlPointWeights"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K27 ["VertexToolBase"]
       73 GETTABLEKS                       R5 R5 K28 ["DefaultWireframeColor"]
       75 SETTABLEKS                       R5 R4 K19 ["WireColor"]
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R5 R5 K27 ["VertexToolBase"]
       80 GETTABLEKS                       R5 R5 K29 ["DefaultWireframeSegmentsColor"]
       82 SETTABLEKS                       R5 R4 K20 ["SegmentColor"]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K27 ["VertexToolBase"]
       87 GETTABLEKS                       R5 R5 K30 ["DefaultWireframeSelectedColor"]
       89 SETTABLEKS                       R5 R4 K21 ["SelectedColor"]
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K27 ["VertexToolBase"]
       94 GETTABLEKS                       R5 R5 K31 ["DefaultWireframeSelectedNoWeightColor"]
       96 SETTABLEKS                       R5 R4 K22 ["SelectedNoWeightColor"]
       98 NAMECALL                         R2 R2 K12 ["render"]
      100 CALL                             R2 2 0
      101 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_controlPointViews"]
        2 NAMECALL                         R1 R1 K1 ["cleanup"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["_wireframeMeshView"]
        7 NAMECALL                         R1 R1 K1 ["cleanup"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Views"]
       24 GETTABLEKS                       R4 R4 K13 ["ControlPointViews"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["MeshEditingContexts"]
       31 GETTABLEKS                       R5 R5 K15 ["MeshEditingContextBase"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Views"]
       38 GETTABLEKS                       R6 R6 K16 ["ReactView"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Types"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K12 ["Views"]
       50 GETTABLEKS                       R8 R8 K18 ["WireframeMeshView"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K19 ["Tools"]
       57 GETTABLEKS                       R9 R9 K20 ["VertexToolBaseModel"]
       59 CALL                             R8 1 1
       60 NEWTABLE                         R9 16 0
       62 SETTABLEKS                       R9 R9 K21 ["__index"]
       64 DUPCLOSURE                       R10 K22 [PROTO_1]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R10 R9 K23 ["new"]
       71 DUPCLOSURE                       R10 K24 [PROTO_2]
       72 SETTABLEKS                       R10 R9 K25 ["setTransparency"]
       74 DUPCLOSURE                       R10 K26 [PROTO_3]
       75 SETTABLEKS                       R10 R9 K27 ["getTransparency"]
       77 DUPCLOSURE                       R10 K28 [PROTO_4]
       78 SETTABLEKS                       R10 R9 K29 ["getSelectablesForMesh"]
       80 DUPCLOSURE                       R10 K30 [PROTO_5]
       81 SETTABLEKS                       R10 R9 K31 ["getSelectables"]
       83 DUPCLOSURE                       R10 K32 [PROTO_6]
       84 SETTABLEKS                       R10 R9 K33 ["_updateFacingCameraState"]
       86 DUPCLOSURE                       R10 K34 [PROTO_7]
       87 SETTABLEKS                       R10 R9 K35 ["isVertexFacingCamera"]
       89 DUPCLOSURE                       R10 K36 [PROTO_9]
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R10 R9 K37 ["_computeControlPointFacingCamera"]
       93 DUPCLOSURE                       R10 K38 [PROTO_11]
       94 SETTABLEKS                       R10 R9 K39 ["_queueRender"]
       96 DUPCLOSURE                       R10 K40 [PROTO_12]
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R10 R9 K41 ["_render"]
      100 DUPCLOSURE                       R10 K42 [PROTO_13]
      101 SETTABLEKS                       R10 R9 K43 ["cleanup"]
      103 RETURN                           R9 1
