PROTO_0:
        0 DUPTABLE                         R2 K3 [{[1] = False, ["_draggerContext"]}]
        1 SETTABLEKS                       R0 R2 K2 ["_draggerContext"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K5 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_dragging"]
        2 JUMPIF                           R3 ; [+17]
        3 NAMECALL                         R3 R2 K1 ["getBoundingBox"]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R0 K2 ["_originalPivot"]
        8 NAMECALL                         R3 R2 K3 ["getPrimaryObject"]
       10 CALL                             R3 1 1
       11 SETTABLEKS                       R3 R0 K4 ["_pivotOwner"]
       13 SETTABLEKS                       R1 R0 K5 ["_draggerToolModel"]
       15 NAMECALL                         R3 R1 K6 ["getSchema"]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R0 K7 ["_schema"]
       20 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R5 R0 K1 ["_originalPivot"]
        4 GETTABLEKS                       R5 R5 K2 ["Position"]
        6 NAMECALL                         R3 R3 K3 ["worldToViewportPoint"]
        8 CALL                             R3 2 2
        9 JUMPIFNOT                        R4 ; [+24]
       10 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       12 NAMECALL                         R5 R5 K4 ["getMouseLocation"]
       14 CALL                             R5 1 1
       15 GETIMPORT                        R6 K7 [Vector2.new]
       17 GETTABLEKS                       R7 R3 K8 ["X"]
       19 GETTABLEKS                       R8 R3 K9 ["Y"]
       21 CALL                             R6 2 1
       22 SUB                              R7 R6 R5
       23 GETTABLEKS                       R7 R7 K10 ["Magnitude"]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K11 ["HitTestRadius"]
       28 JUMPIFNOTLT                      R7 R8 ; [+5]
       30 LOADK                            R8 K12 ["Pivot"]
       31 LOADN                            R9 0
       32 LOADB                            R10 1
       33 RETURN                           R8 3
       34 LOADNIL                          R5
       35 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldShowActiveInstanceHighlight"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETTABLEKS                       R1 R0 K2 ["_draggerToolModel"]
        8 NAMECALL                         R1 R1 K3 ["getSelectionWrapper"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R1 R1 K4 ["getActiveSelectable"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K5 ["_pivotOwner"]
       16 JUMPIFEQ                         R3 R1 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 LOADB                            R1 0
       22 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_pivotOwner"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K6 [{"DraggerContext", "Hovered", "Pivot", "IsActive"}]
        9 GETTABLEKS                       R5 R0 K7 ["_draggerContext"]
       11 SETTABLEKS                       R5 R4 K2 ["DraggerContext"]
       13 SETTABLEKS                       R1 R4 K3 ["Hovered"]
       15 GETTABLEKS                       R5 R0 K8 ["_originalPivot"]
       17 SETTABLEKS                       R5 R4 K4 ["Pivot"]
       19 NAMECALL                         R5 R0 K9 ["_selectedIsActive"]
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K5 ["IsActive"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_6:
        0 NEWTABLE                         R2 2 0
        2 GETTABLEKS                       R3 R0 K0 ["_freeformDrag"]
        4 JUMPIFNOT                        R3 ; [+8]
        5 GETTABLEKS                       R3 R0 K0 ["_freeformDrag"]
        7 NAMECALL                         R3 R3 K1 ["render"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K2 ["DragUI"]
       12 JUMP                             ; [+14]
       13 JUMPIFNOT                        R1 ; [+7]
       14 LOADB                            R5 1
       15 NAMECALL                         R3 R0 K3 ["_renderPivotAdorn"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K4 ["PivotAdorn"]
       20 JUMP                             ; [+6]
       21 LOADB                            R5 0
       22 NAMECALL                         R3 R0 K3 ["_renderPivotAdorn"]
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K4 ["PivotAdorn"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K5 ["createFragment"]
       30 MOVE                             R4 R2
       31 CALL                             R3 1 -1
       32 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_pivotOwner"]
        2 JUMPIFNOT                        R3 ; [+21]
        3 DUPTABLE                         R3 K4 [{["ClickedSelectable"], ["HandleId"] = "Pivot"}]
        4 GETTABLEKS                       R4 R0 K0 ["_pivotOwner"]
        6 SETTABLEKS                       R4 R3 K1 ["ClickedSelectable"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K5 ["new"]
       11 GETTABLEKS                       R5 R0 K6 ["_draggerContext"]
       13 GETTABLEKS                       R6 R0 K7 ["_draggerToolModel"]
       15 MOVE                             R7 R3
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R0 K8 ["_freeformDrag"]
       19 GETTABLEKS                       R4 R0 K8 ["_freeformDrag"]
       21 NAMECALL                         R4 R4 K9 ["update"]
       23 CALL                             R4 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        2 JUMPIFNOT                        R2 ; [+43]
        3 GETIMPORT                        R2 K4 [Enum.KeyCode.R]
        5 JUMPIFNOTEQ                      R1 R2 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        9 LOADK                            R4 K5 [{0, 1, 0}]
       10 NAMECALL                         R2 R2 K6 ["rotate"]
       12 CALL                             R2 2 0
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETIMPORT                        R2 K8 [Enum.KeyCode.T]
       17 JUMPIFNOTEQ                      R1 R2 ; [+9]
       19 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
       21 LOADK                            R4 K9 [{1, 0, 0}]
       22 NAMECALL                         R2 R2 K6 ["rotate"]
       24 CALL                             R2 2 0
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 LOADB                            R2 1
       28 GETIMPORT                        R3 K11 [Enum.KeyCode.LeftAlt]
       30 JUMPIFEQ                         R1 R3 ; [+7]
       32 GETIMPORT                        R3 K13 [Enum.KeyCode.RightAlt]
       34 JUMPIFEQ                         R1 R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 JUMPIFNOT                        R2 ; [+7]
       39 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
       41 NAMECALL                         R2 R2 K14 ["update"]
       43 CALL                             R2 1 0
       44 LOADB                            R2 1
       45 RETURN                           R2 1
       46 LOADB                            R2 0
       47 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        5 NAMECALL                         R2 R2 K1 ["update"]
        7 CALL                             R2 1 0
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 LOADB                            R2 0
       11 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        5 NAMECALL                         R2 R2 K1 ["update"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        2 JUMPIFNOT                        R2 ; [+16]
        3 GETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
        5 NAMECALL                         R2 R2 K1 ["destroy"]
        7 CALL                             R2 1 0
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K0 ["_freeformDrag"]
       11 GETTABLEKS                       R2 R0 K2 ["_schema"]
       13 GETTABLEKS                       R2 R2 K3 ["addUndoWaypoint"]
       15 GETTABLEKS                       R3 R0 K4 ["_draggerContext"]
       17 LOADK                            R4 K5 ["Modify Pivot"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K7 ["FreeformDragger"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["PivotRing"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 16 0
       36 SETTABLEKS                       R4 R4 K11 ["__index"]
       38 DUPCLOSURE                       R5 K12 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R5 R4 K13 ["new"]
       42 DUPCLOSURE                       R5 K14 [PROTO_1]
       43 SETTABLEKS                       R5 R4 K15 ["update"]
       45 DUPCLOSURE                       R5 K16 [PROTO_2]
       46 SETTABLEKS                       R5 R4 K17 ["shouldBiasTowardsObjects"]
       48 DUPCLOSURE                       R5 K18 [PROTO_3]
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R5 R4 K19 ["hitTest"]
       52 DUPCLOSURE                       R5 K20 [PROTO_4]
       53 SETTABLEKS                       R5 R4 K21 ["_selectedIsActive"]
       55 DUPCLOSURE                       R5 K22 [PROTO_5]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R5 R4 K23 ["_renderPivotAdorn"]
       60 DUPCLOSURE                       R5 K24 [PROTO_6]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R5 R4 K25 ["render"]
       64 DUPCLOSURE                       R5 K26 [PROTO_7]
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R5 R4 K27 ["mouseDown"]
       68 DUPCLOSURE                       R5 K28 [PROTO_8]
       69 DUPCLOSURE                       R6 K29 [PROTO_9]
       70 SETTABLEKS                       R6 R4 K30 ["keyDown"]
       72 DUPCLOSURE                       R6 K31 [PROTO_10]
       73 SETTABLEKS                       R6 R4 K32 ["keyUp"]
       75 DUPCLOSURE                       R6 K33 [PROTO_11]
       76 SETTABLEKS                       R6 R4 K34 ["mouseDrag"]
       78 DUPCLOSURE                       R6 K35 [PROTO_12]
       79 SETTABLEKS                       R6 R4 K36 ["mouseUp"]
       81 RETURN                           R4 1
