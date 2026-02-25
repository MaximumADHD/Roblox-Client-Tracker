PROTO_0:
        0 DUPTABLE                         R3 K3 [{"_draggerContext", "_draggerToolModel", "_initialSelectionInfo"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerContext"]
        3 SETTABLEKS                       R1 R3 K1 ["_draggerToolModel"]
        5 GETTABLEKS                       R4 R1 K4 ["_selectionInfo"]
        7 SETTABLEKS                       R4 R3 K2 ["_initialSelectionInfo"]
        9 GETUPVAL                         R4 0
       10 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       12 GETIMPORT                        R2 K6 [setmetatable]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R3 R0 K7 ["vertexEditingTool"]
       17 NAMECALL                         R3 R3 K8 ["getPointLocationData"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K9 ["_initialPointLocationData"]
       22 NAMECALL                         R3 R2 K10 ["update"]
       24 CALL                             R3 1 0
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CurrentCamera"]
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R3 K1 ["WorldToScreenPoint"]
        6 CALL                             R4 2 1
        7 GETTABLEKS                       R7 R4 K2 ["X"]
        9 GETTABLEKS                       R8 R4 K3 ["Y"]
       11 NAMECALL                         R5 R3 K4 ["ScreenPointToRay"]
       13 CALL                             R5 3 1
       14 GETTABLEKS                       R7 R5 K5 ["Origin"]
       16 GETTABLEKS                       R9 R1 K5 ["Origin"]
       18 GETTABLEKS                       R10 R2 K5 ["Origin"]
       20 SUB                              R8 R9 R10
       21 ADD                              R6 R7 R8
       22 GETTABLEKS                       R11 R5 K6 ["Direction"]
       24 GETTABLEKS                       R10 R11 K7 ["Unit"]
       26 GETTABLEKS                       R12 R1 K6 ["Direction"]
       28 GETTABLEKS                       R11 R12 K7 ["Unit"]
       30 ADD                              R9 R10 R11
       31 GETTABLEKS                       R11 R2 K6 ["Direction"]
       33 GETTABLEKS                       R10 R11 K7 ["Unit"]
       35 SUB                              R8 R9 R10
       36 GETTABLEKS                       R7 R8 K7 ["Unit"]
       38 SUB                              R9 R6 R0
       39 GETTABLEKS                       R8 R9 K7 ["Unit"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R9 R10 K8 ["intersectRayPlanePoint"]
       44 MOVE                             R10 R6
       45 MOVE                             R11 R7
       46 MOVE                             R12 R0
       47 MOVE                             R13 R8
       48 CALL                             R9 4 1
       49 GETIMPORT                        R10 K11 [CFrame.new]
       51 MOVE                             R11 R9
       52 CALL                             R10 1 -1
       53 RETURN                           R10 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseStartRay"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
        6 GETTABLEKS                       R1 R2 K2 ["vertexEditingTool"]
        8 NAMECALL                         R1 R1 K3 ["getMouseStartRay"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K0 ["_mouseStartRay"]
       13 GETTABLEKS                       R1 R0 K0 ["_mouseStartRay"]
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       20 GETTABLEKS                       R1 R2 K1 ["_draggerContext"]
       22 NAMECALL                         R1 R1 K5 ["getMouseRay"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       27 GETTABLEKS                       R2 R3 K6 ["_selectionInfo"]
       29 NAMECALL                         R2 R2 K7 ["getBoundingBox"]
       31 CALL                             R2 1 1
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R4 R2 K8 ["Position"]
       35 MOVE                             R5 R1
       36 GETTABLEKS                       R6 R0 K0 ["_mouseStartRay"]
       38 CALL                             R3 3 1
       39 NAMECALL                         R5 R2 K9 ["Inverse"]
       41 CALL                             R5 1 1
       42 MUL                              R4 R3 R5
       43 GETTABLEKS                       R5 R0 K10 ["_initialSelectionInfo"]
       45 NAMECALL                         R5 R5 K7 ["getBoundingBox"]
       47 CALL                             R5 1 2
       48 GETTABLEKS                       R8 R5 K11 ["p"]
       50 ADD                              R7 R8 R6
       51 SETTABLEKS                       R7 R0 K12 ["_baseBoundingBoxCenter"]
       53 NAMECALL                         R7 R4 K13 ["ToAxisAngle"]
       55 CALL                             R7 1 2
       56 SETTABLEKS                       R7 R0 K14 ["_axis"]
       58 SETTABLEKS                       R8 R0 K15 ["_totalAngle"]
       60 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
       62 GETTABLEKS                       R7 R8 K2 ["vertexEditingTool"]
       64 GETTABLEKS                       R9 R0 K16 ["_initialPointLocationData"]
       66 MOVE                             R10 R4
       67 GETTABLEKS                       R11 R0 K12 ["_baseBoundingBoxCenter"]
       69 GETTABLEKS                       R12 R0 K14 ["_axis"]
       71 GETTABLEKS                       R13 R0 K15 ["_totalAngle"]
       73 NAMECALL                         R7 R7 K17 ["transformSelected"]
       75 CALL                             R7 6 0
       76 SETTABLEKS                       R4 R0 K18 ["_lastAppliedTransform"]
       78 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R2 K1 ["vertexEditingTool"]
        4 LOADNIL                          R3
        5 NAMECALL                         R1 R1 K2 ["setMouseStartRay"]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["_initialPointLocationData"]
       10 JUMPIFNOT                        R1 ; [+9]
       11 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       13 GETTABLEKS                       R1 R2 K1 ["vertexEditingTool"]
       15 GETTABLEKS                       R3 R0 K3 ["_initialPointLocationData"]
       17 NAMECALL                         R1 R1 K4 ["addWaypoint"]
       19 CALL                             R1 2 0
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K3 ["_initialPointLocationData"]
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["LuaMeshEditingModule"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["DraggerFramework"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R5 R3 K12 ["Utility"]
       22 GETTABLEKS                       R4 R5 K13 ["Math"]
       24 NEWTABLE                         R5 8 0
       26 SETTABLEKS                       R5 R5 K14 ["__index"]
       28 DUPCLOSURE                       R6 K15 [PROTO_0]
       29 CAPTURE                          VAL R5
       30 SETTABLEKS                       R6 R5 K16 ["new"]
       32 DUPCLOSURE                       R6 K17 [PROTO_1]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R7 K18 [PROTO_2]
       36 SETTABLEKS                       R7 R5 K19 ["_selectedIsActive"]
       38 DUPCLOSURE                       R7 K20 [PROTO_3]
       39 SETTABLEKS                       R7 R5 K21 ["render"]
       41 DUPCLOSURE                       R7 K22 [PROTO_4]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R7 R5 K23 ["update"]
       45 DUPCLOSURE                       R7 K24 [PROTO_5]
       46 SETTABLEKS                       R7 R5 K25 ["destroy"]
       48 RETURN                           R5 1
