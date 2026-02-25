PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_draggerContext"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_totalAngle"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_previousAngle"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_axis"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["_previousAxis"]
       12 LOADN                            R1 1
       13 SETTABLEKS                       R1 R0 K4 ["_sign"]
       15 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R1 K0 ["ToAxisAngle"]
        2 CALL                             R2 1 2
        3 JUMPIFEQKN                       R3 K1 [0] ; [+6]
        5 GETTABLEKS                       R4 R0 K2 ["_axis"]
        7 JUMPIF                           R4 ; [+2]
        8 SETTABLEKS                       R2 R0 K2 ["_axis"]
       10 GETTABLEKS                       R4 R0 K3 ["_previousAngle"]
       12 JUMPIFNOT                        R4 ; [+74]
       13 LOADB                            R4 0
       14 GETTABLEKS                       R5 R0 K4 ["_previousAxis"]
       16 JUMPIFNOT                        R5 ; [+10]
       17 GETTABLEKS                       R5 R0 K4 ["_previousAxis"]
       19 MOVE                             R7 R2
       20 NAMECALL                         R5 R5 K5 ["Dot"]
       22 CALL                             R5 2 1
       23 LOADN                            R6 0
       24 JUMPIFLT                         R5 R6 ; [+2]
       26 LOADB                            R4 1
       27 GETTABLEKS                       R6 R0 K2 ["_axis"]
       29 MOVE                             R8 R2
       30 NAMECALL                         R6 R6 K5 ["Dot"]
       32 CALL                             R6 2 1
       33 LOADN                            R7 0
       34 JUMPIFLT                         R6 R7 ; [+3]
       36 LOADN                            R5 255
       37 JUMP                             ; [+1]
       38 LOADN                            R5 1
       39 SETTABLEKS                       R5 R0 K6 ["_sign"]
       41 JUMPIFNOT                        R4 ; [+33]
       42 FASTCALL1                        MATH_DEG R3 ; [+3]
       43 MOVE                             R6 R3
       44 GETIMPORT                        R5 K9 [math.deg]
       46 CALL                             R5 1 1
       47 LOADN                            R6 90
       48 JUMPIFNOTLE                      R6 R5 ; [+14]
       50 GETTABLEKS                       R5 R0 K10 ["_totalAngle"]
       52 GETTABLEKS                       R7 R0 K6 ["_sign"]
       54 GETTABLEKS                       R10 R0 K3 ["_previousAngle"]
       56 SUBRK                            R9 R11 K10 ["_totalAngle"]
       57 SUB                              R8 R9 R3
       58 MUL                              R6 R7 R8
       59 SUB                              R5 R5 R6
       60 SETTABLEKS                       R5 R0 K10 ["_totalAngle"]
       62 JUMP                             ; [+26]
       63 GETTABLEKS                       R5 R0 K10 ["_totalAngle"]
       65 GETTABLEKS                       R7 R0 K6 ["_sign"]
       67 GETTABLEKS                       R9 R0 K3 ["_previousAngle"]
       69 ADD                              R8 R9 R3
       70 MUL                              R6 R7 R8
       71 ADD                              R5 R5 R6
       72 SETTABLEKS                       R5 R0 K10 ["_totalAngle"]
       74 JUMP                             ; [+14]
       75 GETTABLEKS                       R5 R0 K10 ["_totalAngle"]
       77 GETTABLEKS                       R7 R0 K6 ["_sign"]
       79 GETTABLEKS                       R9 R0 K3 ["_previousAngle"]
       81 SUB                              R8 R3 R9
       82 MUL                              R6 R7 R8
       83 ADD                              R5 R5 R6
       84 SETTABLEKS                       R5 R0 K10 ["_totalAngle"]
       86 JUMP                             ; [+2]
       87 SETTABLEKS                       R3 R0 K12 ["totalAngle"]
       89 GETTABLEKS                       R4 R0 K2 ["_axis"]
       91 JUMPIFNOT                        R4 ; [+4]
       92 SETTABLEKS                       R3 R0 K3 ["_previousAngle"]
       94 SETTABLEKS                       R2 R0 K4 ["_previousAxis"]
       96 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R3 R2 K0 ["getBoundingBox"]
        2 CALL                             R3 1 2
        3 GETTABLEKS                       R6 R3 K1 ["p"]
        5 ADD                              R5 R6 R4
        6 SETTABLEKS                       R5 R0 K2 ["_baseBoundingBoxCenter"]
        8 GETTABLEKS                       R6 R0 K3 ["_draggerContext"]
       10 GETTABLEKS                       R5 R6 K4 ["vertexEditingTool"]
       12 SETTABLEKS                       R5 R0 K5 ["_vertexEditingTool"]
       14 GETTABLEKS                       R5 R0 K5 ["_vertexEditingTool"]
       16 NAMECALL                         R5 R5 K6 ["getPointLocationData"]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R0 K7 ["_initialPointLocationData"]
       21 NAMECALL                         R5 R0 K8 ["_resetAxisAngleData"]
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_updateAxisAngleData"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R2 R0 K1 ["_vertexEditingTool"]
        6 GETTABLEKS                       R4 R0 K2 ["_initialPointLocationData"]
        8 MOVE                             R5 R1
        9 GETTABLEKS                       R6 R0 K3 ["_baseBoundingBoxCenter"]
       11 GETTABLEKS                       R7 R0 K4 ["_axis"]
       13 GETTABLEKS                       R8 R0 K5 ["_totalAngle"]
       15 NAMECALL                         R2 R2 K6 ["transformSelected"]
       17 CALL                             R2 6 0
       18 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_initialPointLocationData"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["_vertexEditingTool"]
        5 GETTABLEKS                       R3 R0 K0 ["_initialPointLocationData"]
        7 NAMECALL                         R1 R1 K2 ["addWaypoint"]
        9 CALL                             R1 2 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["_initialPointLocationData"]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K1 ["_vertexEditingTool"]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["_baseBoundingBoxCenter"]
       19 NAMECALL                         R1 R0 K4 ["_resetAxisAngleData"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["_resetAxisAngleData"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["_updateAxisAngleData"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["beginDrag"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["updateDrag"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["endDrag"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["render"]
       27 RETURN                           R0 1
