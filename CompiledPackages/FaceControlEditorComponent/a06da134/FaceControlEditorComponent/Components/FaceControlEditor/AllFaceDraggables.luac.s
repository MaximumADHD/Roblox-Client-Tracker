PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 SETTABLE                         R1 R3 R0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["getSymmetryPair"]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 1
        9 JUMPIFNOT                        R5 ; [+2]
       10 JUMPIFNOT                        R4 ; [+1]
       11 SETTABLE                         R1 R3 R4
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K1 ["splitDragboxMaps"]
       15 MOVE                             R6 R3
       16 CALL                             R5 1 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K2 ["splitBidirectionalSliders"]
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 GETIMPORT                        R7 K5 [task.spawn]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R6
       27 CALL                             R7 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["mergeDragboxMaps"]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K1 ["mergeDirectionalSliders"]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 1
       12 MOVE                             R6 R0
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETTABLE                         R11 R5 R9
       17 JUMPIF                           R11 ; [+2]
       18 GETTABLEKS                       R11 R10 K2 ["defaultValue"]
       20 DUPTABLE                         R12 K6 [{"customWidth", "position", "rotation"}]
       21 GETTABLEKS                       R13 R10 K3 ["customWidth"]
       23 JUMPIF                           R13 ; [+3]
       24 GETUPVAL                         R14 1
       25 GETTABLEKS                       R13 R14 K7 ["SLIDER_DEFAULT_WIDTH"]
       27 SETTABLEKS                       R13 R12 K3 ["customWidth"]
       29 GETTABLEKS                       R13 R10 K4 ["position"]
       31 SETTABLEKS                       R13 R12 K4 ["position"]
       33 GETTABLEKS                       R13 R10 K5 ["rotation"]
       35 SETTABLEKS                       R13 R12 K5 ["rotation"]
       37 MOVE                             R14 R9
       38 LOADK                            R15 K8 ["_Container"]
       39 CONCAT                           R13 R14 R15
       40 GETUPVAL                         R15 2
       41 GETTABLEKS                       R14 R15 K9 ["createElement"]
       43 GETUPVAL                         R15 3
       44 DUPTABLE                         R16 K15 [{"name", "mapping", "value", "setSliderValues", "updateValue"}]
       45 SETTABLEKS                       R9 R16 K10 ["name"]
       47 SETTABLEKS                       R12 R16 K11 ["mapping"]
       49 SETTABLEKS                       R11 R16 K12 ["value"]
       51 SETTABLEKS                       R2 R16 K13 ["setSliderValues"]
       53 GETUPVAL                         R17 4
       54 SETTABLEKS                       R17 R16 K14 ["updateValue"]
       56 CALL                             R14 2 1
       57 SETTABLE                         R14 R3 R13
       58 FORGLOOP                         R6 2 ; [-43]
       60 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["mergeDragboxMaps"]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K1 ["mergeDirectionalSliders"]
       10 MOVE                             R6 R4
       11 CALL                             R5 1 1
       12 MOVE                             R6 R0
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETTABLE                         R11 R5 R9
       17 JUMPIF                           R11 ; [+2]
       18 GETTABLEKS                       R11 R10 K2 ["defaultValue"]
       20 DUPTABLE                         R12 K9 [{"position", "length", "minX", "maxX", "minY", "maxY"}]
       21 GETTABLEKS                       R13 R10 K3 ["position"]
       23 SETTABLEKS                       R13 R12 K3 ["position"]
       25 GETTABLEKS                       R13 R10 K4 ["length"]
       27 SETTABLEKS                       R13 R12 K4 ["length"]
       29 GETTABLEKS                       R13 R10 K5 ["minX"]
       31 SETTABLEKS                       R13 R12 K5 ["minX"]
       33 GETTABLEKS                       R13 R10 K6 ["maxX"]
       35 SETTABLEKS                       R13 R12 K6 ["maxX"]
       37 GETTABLEKS                       R13 R10 K7 ["minY"]
       39 SETTABLEKS                       R13 R12 K7 ["minY"]
       41 GETTABLEKS                       R13 R10 K8 ["maxY"]
       43 SETTABLEKS                       R13 R12 K8 ["maxY"]
       45 MOVE                             R14 R9
       46 LOADK                            R15 K10 ["_Container"]
       47 CONCAT                           R13 R14 R15
       48 GETUPVAL                         R15 1
       49 GETTABLEKS                       R14 R15 K11 ["createElement"]
       51 GETUPVAL                         R15 2
       52 DUPTABLE                         R16 K17 [{"name", "mapping", "value", "setDragboxValues", "updateValue"}]
       53 SETTABLEKS                       R9 R16 K12 ["name"]
       55 SETTABLEKS                       R12 R16 K13 ["mapping"]
       57 SETTABLEKS                       R11 R16 K14 ["value"]
       59 SETTABLEKS                       R2 R16 K15 ["setDragboxValues"]
       61 GETUPVAL                         R17 3
       62 SETTABLEKS                       R17 R16 K16 ["updateValue"]
       64 CALL                             R14 2 1
       65 SETTABLE                         R14 R3 R13
       66 FORGLOOP                         R6 2 ; [-51]
       68 RETURN                           R3 1

PROTO_4:
        0 SETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["frontViewControls"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["dragBoxControls"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 1
        7 RETURN                           R2 1

PROTO_6:
        0 SETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["sideViewControls"]
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["FaceControlEditor"]
       15 GETTABLEKS                       R3 R4 K9 ["FaceControlEditorConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Utils"]
       22 GETTABLEKS                       R4 R5 K11 ["FaceControlEditorUtils"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K7 ["Components"]
       29 GETTABLEKS                       R6 R7 K8 ["FaceControlEditor"]
       31 GETTABLEKS                       R5 R6 K12 ["FaceSlider"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R8 R0 K7 ["Components"]
       38 GETTABLEKS                       R7 R8 K8 ["FaceControlEditor"]
       40 GETTABLEKS                       R6 R7 K13 ["FaceDragbox"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R1 K14 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R10 R0 K7 ["Components"]
       52 GETTABLEKS                       R9 R10 K8 ["FaceControlEditor"]
       54 GETTABLEKS                       R8 R9 K15 ["SymmetryHandler"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 4 0
       59 LOADB                            R9 0
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          REF R9
       63 CAPTURE                          VAL R3
       64 DUPCLOSURE                       R11 K16 [PROTO_2]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R10
       70 DUPCLOSURE                       R12 K17 [PROTO_3]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R10
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          REF R9
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R13 R8 K18 ["createFrontViewSliders"]
       81 DUPCLOSURE                       R13 K19 [PROTO_5]
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R13 R8 K20 ["createDragboxesForMapping"]
       86 NEWCLOSURE                       R13 P5
       87 CAPTURE                          REF R9
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R13 R8 K21 ["createSideViewSliders"]
       92 CLOSEUPVALS                      R9
       93 RETURN                           R8 1
