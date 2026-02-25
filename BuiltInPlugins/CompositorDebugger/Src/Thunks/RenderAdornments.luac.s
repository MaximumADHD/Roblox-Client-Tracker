PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["DebugData"]
        5 GETTABLEKS                       R3 R2 K2 ["FrameBuffer"]
        7 GETTABLEKS                       R4 R1 K3 ["Status"]
        9 GETTABLEKS                       R5 R4 K4 ["Adornments"]
       11 GETTABLEKS                       R6 R4 K5 ["HistoryFrame"]
       13 JUMPIFNOT                        R3 ; [+3]
       14 ORK                              R8 R6 K6 [1]
       15 GETTABLE                         R7 R3 R8
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 JUMPIFNOT                        R7 ; [+38]
       19 MOVE                             R8 R5
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 FORGPREP                         R8
       23 GETTABLEKS                       R13 R12 K7 ["gizmo"]
       25 JUMPIFNOT                        R13 ; [+29]
       26 GETTABLEKS                       R15 R7 K8 ["layerMap"]
       28 GETTABLE                         R14 R15 R11
       29 JUMPIFNOT                        R14 ; [+22]
       30 GETTABLEKS                       R15 R14 K9 ["weight"]
       32 LOADN                            R16 0
       33 JUMPIFNOTLT                      R16 R15 ; [+18]
       35 GETTABLEKS                       R15 R12 K10 ["enabled"]
       37 JUMPIFNOT                        R15 ; [+14]
       38 GETTABLEKS                       R18 R12 K11 ["colorEntry"]
       40 GETTABLEKS                       R17 R18 K12 ["color"]
       42 NAMECALL                         R15 R13 K13 ["SetColor"]
       44 CALL                             R15 2 0
       45 GETTABLEKS                       R17 R14 K14 ["animationPose"]
       47 GETTABLEKS                       R18 R14 K15 ["animationMask"]
       49 NAMECALL                         R15 R13 K16 ["DrawPose"]
       51 CALL                             R15 3 0
       52 NAMECALL                         R15 R13 K17 ["Update"]
       54 CALL                             R15 1 0
       55 FORGLOOP                         R8 2 ; [-33]
       57 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
