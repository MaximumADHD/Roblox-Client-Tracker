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
       15 NAMECALL                         R3 R2 K7 ["update"]
       17 CALL                             R3 1 0
       18 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R4 K1 [Workspace]
        2 GETTABLEKS                       R3 R4 K2 ["CurrentCamera"]
        4 MOVE                             R6 R0
        5 NAMECALL                         R4 R3 K3 ["WorldToScreenPoint"]
        7 CALL                             R4 2 1
        8 GETTABLEKS                       R7 R4 K4 ["X"]
       10 GETTABLEKS                       R8 R4 K5 ["Y"]
       12 NAMECALL                         R5 R3 K6 ["ScreenPointToRay"]
       14 CALL                             R5 3 1
       15 GETTABLEKS                       R7 R5 K7 ["Origin"]
       17 GETTABLEKS                       R9 R1 K7 ["Origin"]
       19 GETTABLEKS                       R10 R2 K7 ["Origin"]
       21 SUB                              R8 R9 R10
       22 ADD                              R6 R7 R8
       23 GETTABLEKS                       R11 R5 K8 ["Direction"]
       25 GETTABLEKS                       R10 R11 K9 ["Unit"]
       27 GETTABLEKS                       R12 R1 K8 ["Direction"]
       29 GETTABLEKS                       R11 R12 K9 ["Unit"]
       31 ADD                              R9 R10 R11
       32 GETTABLEKS                       R11 R2 K8 ["Direction"]
       34 GETTABLEKS                       R10 R11 K9 ["Unit"]
       36 SUB                              R8 R9 R10
       37 GETTABLEKS                       R7 R8 K9 ["Unit"]
       39 SUB                              R9 R6 R0
       40 GETTABLEKS                       R8 R9 K9 ["Unit"]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R9 R10 K10 ["intersectRayPlanePoint"]
       45 MOVE                             R10 R6
       46 MOVE                             R11 R7
       47 MOVE                             R12 R0
       48 MOVE                             R13 R8
       49 CALL                             R9 4 1
       50 GETIMPORT                        R10 K13 [CFrame.new]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 -1
       54 RETURN                           R10 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_mouseStartRay"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
        6 GETTABLEKS                       R1 R2 K2 ["vertexEditingTool"]
        8 NAMECALL                         R1 R1 K3 ["getMouseStartPosition"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K0 ["_mouseStartRay"]
       13 GETTABLEKS                       R2 R0 K4 ["_draggerToolModel"]
       15 GETTABLEKS                       R1 R2 K1 ["_draggerContext"]
       17 NAMECALL                         R1 R1 K5 ["getMouseRay"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R3 R0 K4 ["_draggerToolModel"]
       22 GETTABLEKS                       R2 R3 K6 ["_selectionInfo"]
       24 NAMECALL                         R2 R2 K7 ["getBoundingBox"]
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R4 R2 K8 ["Position"]
       30 MOVE                             R5 R1
       31 GETTABLEKS                       R6 R0 K0 ["_mouseStartRay"]
       33 CALL                             R3 3 1
       34 NAMECALL                         R5 R2 K9 ["Inverse"]
       36 CALL                             R5 1 1
       37 MUL                              R4 R3 R5
       38 GETTABLEKS                       R5 R0 K10 ["_initialSelectionInfo"]
       40 NAMECALL                         R5 R5 K7 ["getBoundingBox"]
       42 CALL                             R5 1 2
       43 GETTABLEKS                       R8 R5 K11 ["p"]
       45 ADD                              R7 R8 R6
       46 SETTABLEKS                       R7 R0 K12 ["_baseBoundingBoxCenter"]
       48 NAMECALL                         R7 R4 K13 ["ToAxisAngle"]
       50 CALL                             R7 1 2
       51 SETTABLEKS                       R7 R0 K14 ["_axis"]
       53 SETTABLEKS                       R8 R0 K15 ["_totalAngle"]
       55 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
       57 GETTABLEKS                       R7 R8 K2 ["vertexEditingTool"]
       59 MOVE                             R9 R4
       60 GETTABLEKS                       R10 R0 K12 ["_baseBoundingBoxCenter"]
       62 GETTABLEKS                       R11 R0 K14 ["_axis"]
       64 GETTABLEKS                       R12 R0 K15 ["_totalAngle"]
       66 NAMECALL                         R7 R7 K16 ["transformSelected"]
       68 CALL                             R7 5 0
       69 SETTABLEKS                       R4 R0 K17 ["_lastAppliedTransform"]
       71 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R2 K1 ["vertexEditingTool"]
        4 NAMECALL                         R1 R1 K2 ["setMouseStartPosition"]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        9 GETTABLEKS                       R1 R2 K1 ["vertexEditingTool"]
       11 NAMECALL                         R1 R1 K3 ["updateCurrentToolStateData"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       16 GETTABLEKS                       R1 R2 K1 ["vertexEditingTool"]
       18 NAMECALL                         R1 R1 K4 ["addWaypoint"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DraggerFramework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K8 ["Utility"]
       16 GETTABLEKS                       R3 R4 K9 ["Math"]
       18 NEWTABLE                         R4 8 0
       20 SETTABLEKS                       R4 R4 K10 ["__index"]
       22 DUPCLOSURE                       R5 K11 [PROTO_0]
       23 CAPTURE                          VAL R4
       24 SETTABLEKS                       R5 R4 K12 ["new"]
       26 DUPCLOSURE                       R5 K13 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R6 K14 [PROTO_2]
       29 SETTABLEKS                       R6 R4 K15 ["_selectedIsActive"]
       31 DUPCLOSURE                       R6 K16 [PROTO_3]
       32 SETTABLEKS                       R6 R4 K17 ["render"]
       34 DUPCLOSURE                       R6 K18 [PROTO_4]
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R6 R4 K19 ["update"]
       38 DUPCLOSURE                       R6 K20 [PROTO_5]
       39 SETTABLEKS                       R6 R4 K21 ["destroy"]
       41 RETURN                           R4 1
