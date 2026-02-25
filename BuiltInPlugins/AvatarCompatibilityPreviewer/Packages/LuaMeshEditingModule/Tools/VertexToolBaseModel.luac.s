PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_pointLocationData"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setPointLocationData"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_refreshingCount"]
        3 JUMPIFNOTEQKN                    R0 K1 [0] ; [+23]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["_pointLocationData"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K2 ["_pointLocationData"]
       13 NAMECALL                         R0 R0 K3 ["addWaypoint"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K4 ["getDedupedPositionsFromContext"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K5 ["_meshEditingContext"]
       23 CALL                             R2 1 -1
       24 NAMECALL                         R0 R0 K6 ["setPointLocationData"]
       26 CALL                             R0 -1 0
       27 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_meshEditingContext"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["new"]
       13 CALL                             R2 0 1
       14 SETTABLEKS                       R2 R1 K4 ["modelChanged"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K3 ["new"]
       19 CALL                             R2 0 1
       20 SETTABLEKS                       R2 R1 K5 ["selectionChanged"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K3 ["new"]
       25 CALL                             R2 0 1
       26 SETTABLEKS                       R2 R1 K6 ["selectedPositionsChanged"]
       28 LOADN                            R2 0
       29 SETTABLEKS                       R2 R1 K7 ["_falloff"]
       31 LOADN                            R2 0
       32 SETTABLEKS                       R2 R1 K8 ["_radius"]
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K9 ["_dummy"]
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K10 ["_hoveredPointData"]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R2 R3 K11 ["getDedupedPositionsFromContext"]
       43 GETTABLEKS                       R3 R1 K2 ["_meshEditingContext"]
       45 CALL                             R2 1 1
       46 SETTABLEKS                       R2 R1 K12 ["_pointLocationData"]
       48 NEWTABLE                         R2 0 0
       50 SETTABLEKS                       R2 R1 K13 ["_selectedControlPoints"]
       52 NEWTABLE                         R2 0 0
       54 SETTABLEKS                       R2 R1 K14 ["_selectedControlPointWeights"]
       56 LOADNIL                          R2
       57 SETTABLEKS                       R2 R1 K15 ["_updateSelectedPointTask"]
       59 LOADN                            R2 0
       60 SETTABLEKS                       R2 R1 K16 ["_refreshingCount"]
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R2 R3 K3 ["new"]
       65 NEWCLOSURE                       R3 P0
       66 CAPTURE                          VAL R1
       67 NEWCLOSURE                       R4 P1
       68 CAPTURE                          VAL R1
       69 CALL                             R2 2 1
       70 SETTABLEKS                       R2 R1 K17 ["_undoStack"]
       72 GETTABLEKS                       R3 R1 K2 ["_meshEditingContext"]
       74 GETTABLEKS                       R2 R3 K18 ["meshDataChanged"]
       76 NEWCLOSURE                       R4 P2
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U2
       79 NAMECALL                         R2 R2 K19 ["Connect"]
       81 CALL                             R2 2 1
       82 SETTABLEKS                       R2 R1 K20 ["_meshDataChangedConnection"]
       84 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_refreshingCount"]
        2 ADDK                             R2 R2 K1 [1]
        3 SETTABLEKS                       R2 R0 K0 ["_refreshingCount"]
        5 SETTABLEKS                       R1 R0 K2 ["_pointLocationData"]
        7 GETTABLEKS                       R2 R0 K3 ["_meshEditingContext"]
        9 GETTABLEKS                       R4 R1 K4 ["VertexData"]
       11 NAMECALL                         R2 R2 K5 ["updateVertexData"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R0 K6 ["modelChanged"]
       16 NAMECALL                         R2 R2 K7 ["Fire"]
       18 CALL                             R2 1 0
       19 GETTABLEKS                       R2 R0 K0 ["_refreshingCount"]
       21 SUBK                             R2 R2 K1 [1]
       22 SETTABLEKS                       R2 R0 K0 ["_refreshingCount"]
       24 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_dummy"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_dummy"]
        7 NAMECALL                         R2 R0 K1 ["_queueUpdateSelectedPointsWeight"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_falloff"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_falloff"]
        7 NAMECALL                         R2 R0 K1 ["_queueUpdateSelectedPointsWeight"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_falloff"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_radius"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_radius"]
        7 NAMECALL                         R2 R0 K1 ["_queueUpdateSelectedPointsWeight"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_radius"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_selectedControlPointWeights"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_hoveredPointData"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K1 ["_meshEditingContext"]
        8 GETTABLEKS                       R4 R1 K2 ["MeshName"]
       10 NAMECALL                         R2 R2 K3 ["getMeshOriginWorld"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+3]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 GETTABLEKS                       R3 R0 K4 ["_pointLocationData"]
       19 GETTABLEKS                       R6 R3 K5 ["Positions"]
       21 GETTABLEKS                       R7 R1 K2 ["MeshName"]
       23 GETTABLE                         R5 R6 R7
       24 JUMPIFEQKNIL                     R5 ; [+10]
       26 GETTABLEKS                       R6 R3 K5 ["Positions"]
       28 GETTABLEKS                       R7 R1 K2 ["MeshName"]
       30 GETTABLE                         R5 R6 R7
       31 GETTABLEKS                       R6 R1 K6 ["Index"]
       33 GETTABLE                         R4 R5 R6
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 JUMPIFNOTEQKNIL                  R4 ; [+3]
       38 LOADNIL                          R5
       39 RETURN                           R5 1
       40 MOVE                             R7 R4
       41 NAMECALL                         R5 R2 K7 ["PointToWorldSpace"]
       43 CALL                             R5 2 -1
       44 RETURN                           R5 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_pointLocationData"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_selectedControlPoints"]
        2 RETURN                           R1 1

PROTO_14:
        0 JUMPIFEQKNIL                     R1 ; [+11]
        2 GETIMPORT                        R2 K2 [table.freeze]
        4 GETIMPORT                        R3 K4 [table.clone]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 -1
        8 CALL                             R2 -1 1
        9 SETTABLEKS                       R2 R0 K5 ["_selectedControlPoints"]
       11 JUMP                             ; [+4]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R0 K5 ["_selectedControlPoints"]
       16 NAMECALL                         R2 R0 K6 ["_queueUpdateSelectedPointsWeight"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_updateSelectedPointTask"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["_updateSelectedPointTask"]
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K1 ["_updateSelectedPointsWeight"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_updateSelectedPointTask"]
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R1
        6 GETIMPORT                        R2 K3 [task.defer]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          REF R1
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 SETTABLEKS                       R1 R0 K0 ["_updateSelectedPointTask"]
       15 CLOSEUPVALS                      R1
       16 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_radius"]
        2 GETTABLEKS                       R5 R0 K2 ["_falloff"]
        4 SUBRK                            R4 R1 K5 [math.clamp]
        5 LOADN                            R5 0
        6 LOADN                            R6 1
        7 FASTCALL                         MATH_CLAMP ; [+2]
        8 GETIMPORT                        R3 K5 [math.clamp]
       10 CALL                             R3 3 1
       11 MUL                              R2 R1 R3
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R4 R0 K6 ["_pointLocationData"]
       15 GETTABLEKS                       R5 R0 K7 ["_selectedControlPoints"]
       17 MOVE                             R6 R2
       18 CALL                             R3 3 1
       19 GETTABLEKS                       R4 R0 K8 ["_meshEditingContext"]
       21 NAMECALL                         R4 R4 K9 ["getSymmetryMap"]
       23 CALL                             R4 1 1
       24 NAMECALL                         R5 R0 K10 ["_findMannequinCFrame"]
       26 CALL                             R5 1 1
       27 JUMPIFEQKNIL                     R4 ; [+14]
       29 JUMPIFEQKNIL                     R5 ; [+12]
       31 GETUPVAL                         R6 1
       32 MOVE                             R7 R4
       33 MOVE                             R8 R3
       34 GETTABLEKS                       R10 R0 K6 ["_pointLocationData"]
       36 GETTABLEKS                       R9 R10 K11 ["VertexData"]
       38 GETTABLEKS                       R10 R0 K8 ["_meshEditingContext"]
       40 MOVE                             R11 R5
       41 CALL                             R6 5 0
       42 GETIMPORT                        R6 K14 [table.freeze]
       44 MOVE                             R7 R3
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R0 K15 ["_selectedControlPointWeights"]
       48 GETTABLEKS                       R6 R0 K16 ["modelChanged"]
       50 NAMECALL                         R6 R6 K17 ["Fire"]
       52 CALL                             R6 1 0
       53 GETTABLEKS                       R6 R0 K18 ["selectionChanged"]
       55 NAMECALL                         R6 R6 K17 ["Fire"]
       57 CALL                             R6 1 0
       58 RETURN                           R0 0

PROTO_18:
        0 SETTABLEKS                       R1 R0 K0 ["_hoveredPointData"]
        2 GETTABLEKS                       R2 R0 K1 ["selectedPositionsChanged"]
        4 GETIMPORT                        R4 K4 [table.freeze]
        6 NEWTABLE                         R5 0 1
        8 NAMECALL                         R6 R0 K5 ["getHoveredPointPosition"]
       10 CALL                             R6 1 -1
       11 SETLIST                          R5 R6 -1 [1]
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K6 ["Fire"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_hoveredPointData"]
        2 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_dummy"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K0 ["_dummy"]
        8 GETTABLEKS                       R1 R2 K1 ["PrimaryPart"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+3]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R1 K2 ["CFrame"]
       16 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["applyTransformControlPoints"]
        3 GETTABLEKS                       R4 R0 K1 ["_meshEditingContext"]
        5 GETTABLEKS                       R5 R1 K2 ["Positions"]
        7 GETTABLEKS                       R6 R0 K3 ["_selectedControlPointWeights"]
        9 MOVE                             R7 R2
       10 CALL                             R3 4 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["applyTransformControlPoints"]
       14 GETTABLEKS                       R5 R0 K1 ["_meshEditingContext"]
       16 GETTABLEKS                       R6 R1 K4 ["VertexData"]
       18 GETTABLEKS                       R7 R0 K3 ["_selectedControlPointWeights"]
       20 MOVE                             R8 R2
       21 CALL                             R4 4 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K5 ["getTransformedPoints"]
       25 GETTABLEKS                       R6 R0 K1 ["_meshEditingContext"]
       27 GETTABLEKS                       R7 R1 K4 ["VertexData"]
       29 GETTABLEKS                       R8 R0 K3 ["_selectedControlPointWeights"]
       31 MOVE                             R9 R2
       32 CALL                             R5 4 1
       33 GETTABLEKS                       R7 R0 K7 ["_refreshingCount"]
       35 ADDK                             R6 R7 K6 [1]
       36 SETTABLEKS                       R6 R0 K7 ["_refreshingCount"]
       38 GETIMPORT                        R6 K10 [table.freeze]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K11 ["join"]
       43 GETTABLEKS                       R8 R0 K12 ["_pointLocationData"]
       45 DUPTABLE                         R9 K13 [{"Positions", "VertexData"}]
       46 SETTABLEKS                       R3 R9 K2 ["Positions"]
       48 SETTABLEKS                       R4 R9 K4 ["VertexData"]
       50 CALL                             R7 2 -1
       51 CALL                             R6 -1 1
       52 SETTABLEKS                       R6 R0 K12 ["_pointLocationData"]
       54 GETTABLEKS                       R6 R0 K1 ["_meshEditingContext"]
       56 MOVE                             R8 R5
       57 NAMECALL                         R6 R6 K14 ["updateVertexData"]
       59 CALL                             R6 2 0
       60 GETTABLEKS                       R6 R0 K15 ["modelChanged"]
       62 NAMECALL                         R6 R6 K16 ["Fire"]
       64 CALL                             R6 1 0
       65 GETTABLEKS                       R6 R0 K7 ["_refreshingCount"]
       67 SUBK                             R6 R6 K6 [1]
       68 SETTABLEKS                       R6 R0 K7 ["_refreshingCount"]
       70 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["rotatePoint"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 GETUPVAL                         R7 3
        7 MOVE                             R8 R0
        8 MOVE                             R9 R2
        9 CALL                             R3 6 -1
       10 RETURN                           R3 -1

PROTO_23:
        0 MOVE                             R7 R1
        1 NEWCLOSURE                       R8 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R3
        4 CAPTURE                          VAL R4
        5 CAPTURE                          VAL R2
        6 NAMECALL                         R5 R0 K0 ["_applyTransformation"]
        8 CALL                             R5 3 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_undoStack"]
        2 NAMECALL                         R1 R1 K1 ["getUndoRedoStack"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["_undoStack"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["restoreUndoRedoStack"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["translatePoint"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 MOVE                             R7 R2
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_27:
        0 MOVE                             R5 R1
        1 NEWCLOSURE                       R6 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 NAMECALL                         R3 R0 K0 ["_applyTransformation"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["scalePoint"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 MOVE                             R7 R0
        7 MOVE                             R8 R2
        8 CALL                             R3 5 -1
        9 RETURN                           R3 -1

PROTO_29:
        0 MOVE                             R6 R1
        1 NEWCLOSURE                       R7 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R3
        4 CAPTURE                          VAL R2
        5 NAMECALL                         R4 R0 K0 ["_applyTransformation"]
        7 CALL                             R4 3 0
        8 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["_undoStack"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["addWaypoint"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_undoStack"]
        2 NAMECALL                         R1 R1 K1 ["undo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_undoStack"]
        2 NAMECALL                         R1 R1 K1 ["redo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["_meshDataChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["MeshEditingContexts"]
       18 GETTABLEKS                       R3 R4 K9 ["MeshEditingContextBase"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R6 K12 ["TransformPointsHelpers"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Tools"]
       44 GETTABLEKS                       R7 R8 K15 ["VertexToolBaseUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Tools"]
       51 GETTABLEKS                       R8 R9 K16 ["VertexToolUndoStack"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Util"]
       58 GETTABLEKS                       R9 R10 K17 ["applySymmetryMap"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K10 ["Util"]
       65 GETTABLEKS                       R10 R11 K18 ["softSelectPoints"]
       67 CALL                             R9 1 1
       68 NEWTABLE                         R10 32 0
       70 SETTABLEKS                       R10 R10 K19 ["__index"]
       72 DUPCLOSURE                       R11 K20 [PROTO_3]
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R11 R10 K21 ["new"]
       79 DUPCLOSURE                       R11 K22 [PROTO_4]
       80 SETTABLEKS                       R11 R10 K23 ["setPointLocationData"]
       82 DUPCLOSURE                       R11 K24 [PROTO_5]
       83 SETTABLEKS                       R11 R10 K25 ["setDummy"]
       85 DUPCLOSURE                       R11 K26 [PROTO_6]
       86 SETTABLEKS                       R11 R10 K27 ["setFalloff"]
       88 DUPCLOSURE                       R11 K28 [PROTO_7]
       89 SETTABLEKS                       R11 R10 K29 ["getFalloff"]
       91 DUPCLOSURE                       R11 K30 [PROTO_8]
       92 SETTABLEKS                       R11 R10 K31 ["setRadius"]
       94 DUPCLOSURE                       R11 K32 [PROTO_9]
       95 SETTABLEKS                       R11 R10 K33 ["getRadius"]
       97 DUPCLOSURE                       R11 K34 [PROTO_10]
       98 SETTABLEKS                       R11 R10 K35 ["getSelectedControlPointWeights"]
      100 DUPCLOSURE                       R11 K36 [PROTO_11]
      101 SETTABLEKS                       R11 R10 K37 ["getHoveredPointPosition"]
      103 DUPCLOSURE                       R11 K38 [PROTO_12]
      104 SETTABLEKS                       R11 R10 K39 ["getPointLocationData"]
      106 DUPCLOSURE                       R11 K40 [PROTO_13]
      107 SETTABLEKS                       R11 R10 K41 ["getSelectedPoints"]
      109 DUPCLOSURE                       R11 K42 [PROTO_14]
      110 SETTABLEKS                       R11 R10 K43 ["setSelectedPoints"]
      112 DUPCLOSURE                       R11 K44 [PROTO_16]
      113 SETTABLEKS                       R11 R10 K45 ["_queueUpdateSelectedPointsWeight"]
      115 DUPCLOSURE                       R11 K46 [PROTO_17]
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R8
      118 SETTABLEKS                       R11 R10 K47 ["_updateSelectedPointsWeight"]
      120 DUPCLOSURE                       R11 K48 [PROTO_18]
      121 SETTABLEKS                       R11 R10 K49 ["setHoveredPoint"]
      123 DUPCLOSURE                       R11 K50 [PROTO_19]
      124 SETTABLEKS                       R11 R10 K51 ["getHoveredPoint"]
      126 DUPCLOSURE                       R11 K52 [PROTO_20]
      127 SETTABLEKS                       R11 R10 K53 ["_findMannequinCFrame"]
      129 DUPCLOSURE                       R11 K54 [PROTO_21]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R1
      132 SETTABLEKS                       R11 R10 K55 ["_applyTransformation"]
      134 DUPCLOSURE                       R11 K56 [PROTO_23]
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R11 R10 K57 ["transformRotateSelected"]
      138 DUPCLOSURE                       R11 K58 [PROTO_24]
      139 SETTABLEKS                       R11 R10 K59 ["getUndoRedoStack"]
      141 DUPCLOSURE                       R11 K60 [PROTO_25]
      142 SETTABLEKS                       R11 R10 K61 ["restoreUndoRedoStack"]
      144 DUPCLOSURE                       R11 K62 [PROTO_27]
      145 CAPTURE                          VAL R4
      146 SETTABLEKS                       R11 R10 K63 ["transformTranslateSelected"]
      148 DUPCLOSURE                       R11 K64 [PROTO_29]
      149 CAPTURE                          VAL R4
      150 SETTABLEKS                       R11 R10 K65 ["transformScaleSelected"]
      152 DUPCLOSURE                       R11 K66 [PROTO_30]
      153 SETTABLEKS                       R11 R10 K67 ["addWaypoint"]
      155 DUPCLOSURE                       R11 K68 [PROTO_31]
      156 SETTABLEKS                       R11 R10 K69 ["undo"]
      158 DUPCLOSURE                       R11 K70 [PROTO_32]
      159 SETTABLEKS                       R11 R10 K71 ["redo"]
      161 DUPCLOSURE                       R11 K72 [PROTO_33]
      162 SETTABLEKS                       R11 R10 K73 ["cleanup"]
      164 RETURN                           R10 1
