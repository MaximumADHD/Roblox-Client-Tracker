PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectionChanged"]
        3 NAMECALL                         R0 R0 K1 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selectedPositionsChanged"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_meshEditingContext"]
       10 GETIMPORT                        R2 K6 [Enum.RibbonTool.Select]
       12 SETTABLEKS                       R2 R1 K7 ["_currentHandle"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K8 ["_mouse"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K9 ["_mouseStartRay"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K10 ["_dummy"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K11 ["new"]
       26 CALL                             R2 0 1
       27 SETTABLEKS                       R2 R1 K12 ["boundsChanged"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K11 ["new"]
       32 CALL                             R2 0 1
       33 SETTABLEKS                       R2 R1 K13 ["selectedPositionsChanged"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K11 ["new"]
       38 CALL                             R2 0 1
       39 SETTABLEKS                       R2 R1 K14 ["draggerHandleChanged"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R2 R3 K11 ["new"]
       44 CALL                             R2 0 1
       45 SETTABLEKS                       R2 R1 K15 ["selectionChanged"]
       47 GETUPVAL                         R3 2
       48 GETTABLEKS                       R2 R3 K11 ["new"]
       50 GETTABLEKS                       R3 R1 K2 ["_meshEditingContext"]
       52 CALL                             R2 1 1
       53 SETTABLEKS                       R2 R1 K16 ["_model"]
       55 GETTABLEKS                       R2 R1 K16 ["_model"]
       57 GETTABLEKS                       R4 R1 K10 ["_dummy"]
       59 NAMECALL                         R2 R2 K17 ["setDummy"]
       61 CALL                             R2 2 0
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R2 R3 K11 ["new"]
       65 GETTABLEKS                       R3 R1 K16 ["_model"]
       67 GETTABLEKS                       R4 R1 K2 ["_meshEditingContext"]
       69 CALL                             R2 2 1
       70 SETTABLEKS                       R2 R1 K18 ["_view"]
       72 GETTABLEKS                       R3 R1 K16 ["_model"]
       74 GETTABLEKS                       R2 R3 K15 ["selectionChanged"]
       76 NEWCLOSURE                       R4 P0
       77 CAPTURE                          VAL R1
       78 NAMECALL                         R2 R2 K19 ["Connect"]
       80 CALL                             R2 2 0
       81 GETTABLEKS                       R3 R1 K16 ["_model"]
       83 GETTABLEKS                       R2 R3 K13 ["selectedPositionsChanged"]
       85 NEWCLOSURE                       R4 P1
       86 CAPTURE                          VAL R1
       87 NAMECALL                         R2 R2 K19 ["Connect"]
       89 CALL                             R2 2 0
       90 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_meshEditingContext"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_view"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+3]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R0 K0 ["_view"]
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 NAMECALL                         R3 R3 K1 ["isVertexFacingCamera"]
       12 CALL                             R3 3 -1
       13 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_meshEditingContext"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["getMeshPart"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["getSelectedControlPointWeights"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["getPointLocationData"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_model"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setDummy"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_mouse"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_model"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setRadius"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["getRadius"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_currentHandle"]
        2 RETURN                           R1 1

PROTO_14:
        0 SETTABLEKS                       R1 R0 K0 ["_currentHandle"]
        2 GETTABLEKS                       R2 R0 K1 ["draggerHandleChanged"]
        4 NAMECALL                         R2 R2 K2 ["Fire"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_view"]
        2 NAMECALL                         R1 R1 K1 ["getTransparency"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["_view"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setTransparency"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["getFalloff"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["_model"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setFalloff"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_model"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["addWaypoint"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["undo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["redo"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["getUndoRedoStack"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["_model"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["restoreUndoRedoStack"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K0 ["_model"]
        8 NAMECALL                         R1 R1 K1 ["getSelectedPoints"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_model"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setSelectedPoints"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_view"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["getSelectablesForMesh"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_view"]
        2 NAMECALL                         R1 R1 K1 ["getSelectables"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["_model"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setHoveredPoint"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["_model"]
        7 NAMECALL                         R1 R1 K1 ["getHoveredPoint"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_model"]
        2 NAMECALL                         R1 R1 K1 ["getHoveredPointPosition"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETTABLEKS                       R6 R0 K0 ["_currentHandle"]
        2 GETIMPORT                        R7 K4 [Enum.RibbonTool.Rotate]
        4 JUMPIFNOTEQ                      R6 R7 ; [+11]
        6 GETTABLEKS                       R6 R0 K5 ["_model"]
        8 MOVE                             R8 R1
        9 MOVE                             R9 R3
       10 MOVE                             R10 R4
       11 MOVE                             R11 R5
       12 NAMECALL                         R6 R6 K6 ["transformRotateSelected"]
       14 CALL                             R6 5 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R6 R0 K5 ["_model"]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R2
       20 NAMECALL                         R6 R6 K7 ["transformTranslateSelected"]
       22 CALL                             R6 3 0
       23 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R4 R0 K0 ["_model"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R4 R4 K1 ["transformScaleSelected"]
        7 CALL                             R4 4 0
        8 RETURN                           R0 0

PROTO_33:
        0 SETTABLEKS                       R1 R0 K0 ["_mouseStartRay"]
        2 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseStartRay"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_view"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_view"]
        5 NAMECALL                         R1 R1 K1 ["cleanup"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_view"]
       11 GETTABLEKS                       R1 R0 K2 ["_model"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_model"]
       16 NAMECALL                         R1 R1 K1 ["cleanup"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_model"]
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["MeshEditingContexts"]
       11 GETTABLEKS                       R2 R3 K7 ["MeshEditingContextBase"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Tools"]
       30 GETTABLEKS                       R5 R6 K12 ["VertexToolBaseModel"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Tools"]
       37 GETTABLEKS                       R6 R7 K13 ["VertexToolBaseView"]
       39 CALL                             R5 1 1
       40 NEWTABLE                         R6 64 0
       42 SETTABLEKS                       R6 R6 K14 ["__index"]
       44 DUPCLOSURE                       R7 K15 [PROTO_2]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R7 R6 K16 ["new"]
       51 DUPCLOSURE                       R7 K17 [PROTO_3]
       52 SETTABLEKS                       R7 R6 K18 ["getMeshEditingContext"]
       54 DUPCLOSURE                       R7 K19 [PROTO_4]
       55 SETTABLEKS                       R7 R6 K20 ["isVertexFacingCamera"]
       57 DUPCLOSURE                       R7 K21 [PROTO_5]
       58 SETTABLEKS                       R7 R6 K22 ["getMeshPart"]
       60 DUPCLOSURE                       R7 K23 [PROTO_6]
       61 SETTABLEKS                       R7 R6 K24 ["getSelectedControlPointWeights"]
       63 DUPCLOSURE                       R7 K25 [PROTO_7]
       64 SETTABLEKS                       R7 R6 K26 ["getPointLocationData"]
       66 DUPCLOSURE                       R7 K27 [PROTO_8]
       67 SETTABLEKS                       R7 R6 K28 ["setDummy"]
       69 DUPCLOSURE                       R7 K29 [PROTO_9]
       70 SETTABLEKS                       R7 R6 K30 ["setMouse"]
       72 DUPCLOSURE                       R7 K31 [PROTO_10]
       73 SETTABLEKS                       R7 R6 K32 ["getMouse"]
       75 DUPCLOSURE                       R7 K33 [PROTO_11]
       76 SETTABLEKS                       R7 R6 K34 ["setRadius"]
       78 DUPCLOSURE                       R7 K35 [PROTO_12]
       79 SETTABLEKS                       R7 R6 K36 ["getRadius"]
       81 DUPCLOSURE                       R7 K37 [PROTO_13]
       82 SETTABLEKS                       R7 R6 K38 ["getCurrentHandle"]
       84 DUPCLOSURE                       R7 K39 [PROTO_14]
       85 SETTABLEKS                       R7 R6 K40 ["setCurrentHandle"]
       87 DUPCLOSURE                       R7 K41 [PROTO_15]
       88 SETTABLEKS                       R7 R6 K42 ["getTransparency"]
       90 DUPCLOSURE                       R7 K43 [PROTO_16]
       91 SETTABLEKS                       R7 R6 K44 ["setTransparency"]
       93 DUPCLOSURE                       R7 K45 [PROTO_17]
       94 SETTABLEKS                       R7 R6 K46 ["getFalloff"]
       96 DUPCLOSURE                       R7 K47 [PROTO_18]
       97 SETTABLEKS                       R7 R6 K48 ["setFalloff"]
       99 DUPCLOSURE                       R7 K49 [PROTO_19]
      100 SETTABLEKS                       R7 R6 K50 ["addWaypoint"]
      102 DUPCLOSURE                       R7 K51 [PROTO_20]
      103 SETTABLEKS                       R7 R6 K52 ["undo"]
      105 DUPCLOSURE                       R7 K53 [PROTO_21]
      106 SETTABLEKS                       R7 R6 K54 ["redo"]
      108 DUPCLOSURE                       R7 K55 [PROTO_22]
      109 SETTABLEKS                       R7 R6 K56 ["getUndoRedoStack"]
      111 DUPCLOSURE                       R7 K57 [PROTO_23]
      112 SETTABLEKS                       R7 R6 K58 ["restoreUndoRedoStack"]
      114 DUPCLOSURE                       R7 K59 [PROTO_24]
      115 SETTABLEKS                       R7 R6 K60 ["getSelected"]
      117 DUPCLOSURE                       R7 K61 [PROTO_25]
      118 SETTABLEKS                       R7 R6 K62 ["setSelected"]
      120 DUPCLOSURE                       R7 K63 [PROTO_26]
      121 SETTABLEKS                       R7 R6 K64 ["getSelectablesForMesh"]
      123 DUPCLOSURE                       R7 K65 [PROTO_27]
      124 SETTABLEKS                       R7 R6 K66 ["getSelectables"]
      126 DUPCLOSURE                       R7 K67 [PROTO_28]
      127 SETTABLEKS                       R7 R6 K68 ["setHoveredPoint"]
      129 DUPCLOSURE                       R7 K69 [PROTO_29]
      130 SETTABLEKS                       R7 R6 K70 ["getHoveredPoint"]
      132 DUPCLOSURE                       R7 K71 [PROTO_30]
      133 SETTABLEKS                       R7 R6 K72 ["getHoveredPointPosition"]
      135 DUPCLOSURE                       R7 K73 [PROTO_31]
      136 SETTABLEKS                       R7 R6 K74 ["transformSelected"]
      138 DUPCLOSURE                       R7 K75 [PROTO_32]
      139 SETTABLEKS                       R7 R6 K76 ["scaleSelected"]
      141 DUPCLOSURE                       R7 K77 [PROTO_33]
      142 SETTABLEKS                       R7 R6 K78 ["setMouseStartRay"]
      144 DUPCLOSURE                       R7 K79 [PROTO_34]
      145 SETTABLEKS                       R7 R6 K80 ["getMouseStartRay"]
      147 DUPCLOSURE                       R7 K81 [PROTO_35]
      148 SETTABLEKS                       R7 R6 K82 ["cleanup"]
      150 RETURN                           R6 1
