PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_draggerContext"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 NAMECALL                         R3 R2 K0 ["getBoundingBox"]
        2 CALL                             R3 1 -1
        3 RETURN                           R3 -1

PROTO_2:
        0 LOADB                            R4 1
        1 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["isShiftKeyDown"]
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+11]
        6 DUPTABLE                         R3 K5 [{"X", "Y", "Z"}]
        7 LOADB                            R4 1
        8 SETTABLEKS                       R4 R3 K2 ["X"]
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K3 ["Y"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K4 ["Z"]
       16 RETURN                           R3 1
       17 NEWTABLE                         R3 0 3
       19 DUPTABLE                         R4 K6 [{"X"}]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K2 ["X"]
       23 DUPTABLE                         R5 K7 [{"Y"}]
       24 LOADB                            R6 1
       25 SETTABLEKS                       R6 R5 K3 ["Y"]
       27 DUPTABLE                         R6 K8 [{"Z"}]
       28 LOADB                            R7 1
       29 SETTABLEKS                       R7 R6 K4 ["Z"]
       31 SETLIST                          R3 R4 3 [1]
       33 GETTABLE                         R4 R3 R2
       34 RETURN                           R4 1

PROTO_4:
        0 NAMECALL                         R4 R2 K0 ["getBoundingBox"]
        2 CALL                             R4 1 3
        3 SETTABLEKS                       R6 R0 K1 ["_baseBoundingBoxSize"]
        5 ADD                              R7 R4 R5
        6 SETTABLEKS                       R7 R0 K2 ["_baseBoundingBox"]
        8 GETTABLEKS                       R7 R0 K3 ["_draggerContext"]
       10 GETTABLEKS                       R7 R7 K4 ["vertexEditingTool"]
       12 SETTABLEKS                       R7 R0 K5 ["_vertexEditingTool"]
       14 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 [{0, 0, 0}]
        1 LOADK                            R6 K2 [{1, 1, 1}]
        2 MULK                             R5 R6 K1 [∞]
        3 RETURN                           R4 2

PROTO_6:
        0 LOADK                            R5 K0 [{0, 0, 0}]
        1 JUMPIFEQ                         R2 R5 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        7 LOADK                            R5 K1 ["localOffset should be (0,0,0)."]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 NAMECALL                         R4 R0 K4 ["shouldScaleFromCenter"]
       13 CALL                             R4 1 1
       14 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       16 LOADK                            R5 K5 ["shouldScaleFromCenter should always return true."]
       17 GETIMPORT                        R3 K3 [assert]
       19 CALL                             R3 2 0
       20 GETTABLEKS                       R4 R0 K6 ["_baseBoundingBoxSize"]
       22 ADD                              R3 R4 R1
       23 GETTABLEKS                       R5 R0 K6 ["_baseBoundingBoxSize"]
       25 GETTABLEKS                       R5 R5 K7 ["X"]
       27 JUMPIFEQKN                       R5 K8 [0] ; [+9]
       29 GETTABLEKS                       R5 R3 K7 ["X"]
       31 GETTABLEKS                       R6 R0 K6 ["_baseBoundingBoxSize"]
       33 GETTABLEKS                       R6 R6 K7 ["X"]
       35 DIV                              R4 R5 R6
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R4 R3 K7 ["X"]
       39 GETTABLEKS                       R6 R0 K6 ["_baseBoundingBoxSize"]
       41 GETTABLEKS                       R6 R6 K9 ["Y"]
       43 JUMPIFEQKN                       R6 K8 [0] ; [+9]
       45 GETTABLEKS                       R6 R3 K9 ["Y"]
       47 GETTABLEKS                       R7 R0 K6 ["_baseBoundingBoxSize"]
       49 GETTABLEKS                       R7 R7 K9 ["Y"]
       51 DIV                              R5 R6 R7
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R5 R3 K9 ["Y"]
       55 GETTABLEKS                       R7 R0 K6 ["_baseBoundingBoxSize"]
       57 GETTABLEKS                       R7 R7 K10 ["Z"]
       59 JUMPIFEQKN                       R7 K8 [0] ; [+9]
       61 GETTABLEKS                       R7 R3 K10 ["Z"]
       63 GETTABLEKS                       R8 R0 K6 ["_baseBoundingBoxSize"]
       65 GETTABLEKS                       R8 R8 K10 ["Z"]
       67 DIV                              R6 R7 R8
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R6 R3 K10 ["Z"]
       71 FASTCALL3                        VECTOR R4 R5 R6
       73 MOVE                             R8 R4
       74 MOVE                             R9 R5
       75 MOVE                             R10 R6
       76 GETIMPORT                        R7 K13 [Vector3.new]
       78 CALL                             R7 3 1
       79 GETTABLEKS                       R8 R0 K14 ["_vertexEditingTool"]
       81 GETTABLEKS                       R10 R0 K15 ["_baseBoundingBox"]
       83 MOVE                             R11 R7
       84 NAMECALL                         R8 R8 K16 ["scaleSelected"]
       86 CALL                             R8 3 0
       87 RETURN                           R1 2

PROTO_7:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_baseBoundingBoxSize"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_baseBoundingBox"]
        6 GETTABLEKS                       R1 R0 K2 ["_vertexEditingTool"]
        8 NAMECALL                         R1 R1 K3 ["addWaypoint"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R3
        1 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["getBoundingBox"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["shouldScaleFromCenter"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["axesToScale"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["beginScale"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["getMinMaxSizes"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["updateScale"]
       27 DUPCLOSURE                       R1 K15 [PROTO_7]
       28 SETTABLEKS                       R1 R0 K16 ["endScale"]
       30 DUPCLOSURE                       R1 K17 [PROTO_8]
       31 SETTABLEKS                       R1 R0 K18 ["render"]
       33 RETURN                           R0 1
