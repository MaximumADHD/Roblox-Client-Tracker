PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["X"]
        2 GETTABLEKS                       R4 R0 K0 ["X"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+11]
        6 GETIMPORT                        R3 K2 [error]
        8 LOADK                            R5 K3 ["pointA (%*) and pointB (%*) have the same X value"]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R1
       11 NAMECALL                         R5 R5 K4 ["format"]
       13 CALL                             R5 3 1
       14 MOVE                             R4 R5
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R5 R1 K5 ["Y"]
       18 GETTABLEKS                       R6 R0 K5 ["Y"]
       20 SUB                              R4 R5 R6
       21 GETTABLEKS                       R6 R1 K0 ["X"]
       23 GETTABLEKS                       R7 R0 K0 ["X"]
       25 SUB                              R5 R6 R7
       26 DIV                              R3 R4 R5
       27 GETTABLEKS                       R5 R0 K5 ["Y"]
       29 GETTABLEKS                       R7 R0 K0 ["X"]
       31 MUL                              R6 R7 R3
       32 SUB                              R4 R5 R6
       33 GETIMPORT                        R5 K8 [Vector2.new]
       35 MOVE                             R6 R2
       36 MUL                              R8 R3 R2
       37 ADD                              R7 R8 R4
       38 CALL                             R5 2 -1
       39 RETURN                           R5 -1

PROTO_1:
        0 MOVE                             R4 R1
        1 GETTABLEKS                       R9 R0 K0 ["Y"]
        3 SUB                              R8 R2 R9
        4 FASTCALL1                        MATH_ABS R8 ; [+2]
        5 GETIMPORT                        R7 K3 [math.abs]
        7 CALL                             R7 1 1
        8 FASTCALL2                        MATH_MIN R4 R7 ; [+4]
       10 MOVE                             R6 R4
       11 GETIMPORT                        R5 K5 [math.min]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 GETTABLEKS                       R9 R0 K0 ["Y"]
       17 SUB                              R8 R3 R9
       18 FASTCALL1                        MATH_ABS R8 ; [+2]
       19 GETIMPORT                        R7 K3 [math.abs]
       21 CALL                             R7 1 1
       22 FASTCALL2                        MATH_MIN R4 R7 ; [+4]
       24 MOVE                             R6 R4
       25 GETIMPORT                        R5 K5 [math.min]
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 RETURN                           R4 1

PROTO_2:
        0 SUBK                             R2 R1 K0 [1]
        1 JUMPIFEQKN                       R2 K1 [0] ; [+4]
        3 LENGTH                           R2 R0
        4 JUMPIFNOTLT                      R2 R1 ; [+10]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R4 K4 ["ghost keypoint index (%*) is out of bounds"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R4 R4 K5 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 SUBK                             R3 R1 K0 [1]
       16 GETTABLE                         R2 R0 R3
       17 GETTABLE                         R3 R0 R1
       18 GETIMPORT                        R4 K8 [Vector2.new]
       20 GETTABLEKS                       R5 R2 K9 ["Time"]
       22 GETTABLEKS                       R6 R2 K10 ["Value"]
       24 CALL                             R4 2 1
       25 GETIMPORT                        R5 K8 [Vector2.new]
       27 GETTABLEKS                       R6 R3 K9 ["Time"]
       29 GETTABLEKS                       R7 R3 K10 ["Value"]
       31 CALL                             R5 2 1
       32 LOADNIL                          R6
       33 GETTABLEKS                       R7 R4 K11 ["X"]
       35 GETTABLEKS                       R8 R5 K11 ["X"]
       37 JUMPIFNOTEQ                      R7 R8 ; [+18]
       39 GETTABLEKS                       R8 R4 K12 ["Y"]
       41 GETTABLEKS                       R11 R5 K12 ["Y"]
       43 GETTABLEKS                       R12 R4 K12 ["Y"]
       45 SUB                              R10 R11 R12
       46 DIVK                             R9 R10 K13 [2]
       47 ADD                              R7 R8 R9
       48 GETIMPORT                        R8 K8 [Vector2.new]
       50 GETTABLEKS                       R9 R4 K11 ["X"]
       52 MOVE                             R10 R7
       53 CALL                             R8 2 1
       54 MOVE                             R6 R8
       55 JUMP                             ; [+13]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K14 ["calculatePointOnLine"]
       59 MOVE                             R8 R4
       60 MOVE                             R9 R5
       61 GETTABLEKS                       R12 R2 K9 ["Time"]
       63 GETTABLEKS                       R13 R3 K9 ["Time"]
       65 ADD                              R11 R12 R13
       66 DIVK                             R10 R11 K13 [2]
       67 CALL                             R7 3 1
       68 MOVE                             R6 R7
       69 GETIMPORT                        R7 K16 [NumberSequenceKeypoint.new]
       71 GETTABLEKS                       R8 R6 K11 ["X"]
       73 GETTABLEKS                       R9 R6 K12 ["Y"]
       75 CALL                             R7 2 -1
       76 RETURN                           R7 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["keypoint"]
        2 GETTABLEKS                       R2 R2 K1 ["Time"]
        4 GETTABLEKS                       R3 R1 K0 ["keypoint"]
        6 GETTABLEKS                       R3 R3 K1 ["Time"]
        8 JUMPIFEQ                         R2 R3 ; [+14]
       10 GETTABLEKS                       R3 R0 K0 ["keypoint"]
       12 GETTABLEKS                       R3 R3 K1 ["Time"]
       14 GETTABLEKS                       R4 R1 K0 ["keypoint"]
       16 GETTABLEKS                       R4 R4 K1 ["Time"]
       18 JUMPIFLT                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETTABLEKS                       R3 R0 K2 ["originalIndex"]
       25 GETTABLEKS                       R4 R1 K2 ["originalIndex"]
       27 JUMPIFLT                         R3 R4 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R7 K2 [{"keypoint", "originalIndex"}]
        7 SETTABLEKS                       R6 R7 K0 ["keypoint"]
        9 SETTABLEKS                       R5 R7 K1 ["originalIndex"]
       11 SETTABLE                         R7 R1 R5
       12 FORGLOOP                         R2 2 ; [-7]
       14 GETIMPORT                        R2 K5 [table.sort]
       16 MOVE                             R3 R1
       17 DUPCLOSURE                       R4 K6 [PROTO_3]
       18 CALL                             R2 2 0
       19 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSortedKeypointsWithOriginalIndices"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K1 ["keypoint"]
       13 SETTABLE                         R8 R2 R6
       14 FORGLOOP                         R3 2 ; [-4]
       16 RETURN                           R2 1

PROTO_6:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R5 R0 K0 ["Time"]
        3 GETTABLEKS                       R6 R1 K0 ["Time"]
        5 SUB                              R4 R5 R6
        6 FASTCALL1                        MATH_ABS R4 ; [+2]
        7 GETIMPORT                        R3 K3 [math.abs]
        9 CALL                             R3 1 1
       10 LOADK                            R4 K4 [0.0001]
       11 JUMPIFNOTLT                      R3 R4 ; [+28]
       13 LOADB                            R2 0
       14 GETTABLEKS                       R5 R0 K5 ["Value"]
       16 GETTABLEKS                       R6 R1 K5 ["Value"]
       18 SUB                              R4 R5 R6
       19 FASTCALL1                        MATH_ABS R4 ; [+2]
       20 GETIMPORT                        R3 K3 [math.abs]
       22 CALL                             R3 1 1
       23 LOADK                            R4 K4 [0.0001]
       24 JUMPIFNOTLT                      R3 R4 ; [+15]
       26 GETTABLEKS                       R5 R0 K6 ["Envelope"]
       28 GETTABLEKS                       R6 R1 K6 ["Envelope"]
       30 SUB                              R4 R5 R6
       31 FASTCALL1                        MATH_ABS R4 ; [+2]
       32 GETIMPORT                        R3 K3 [math.abs]
       34 CALL                             R3 1 1
       35 LOADK                            R4 K4 [0.0001]
       36 JUMPIFLT                         R3 R4 ; [+2]
       38 LOADB                            R2 0 +1
       39 LOADB                            R2 1
       40 RETURN                           R2 1

PROTO_7:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["isKeypointEqual"]
        7 MOVE                             R8 R1
        8 MOVE                             R9 R6
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+1]
       11 RETURN                           R5 1
       12 FORGLOOP                         R2 2 ; [-9]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R4 K2 [table.clone]
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 LOADB                            R5 0
        5 MOVE                             R6 R4
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 FORGPREP                         R6
        9 JUMPIFNOT                        R3 ; [+27]
       10 LENGTH                           R11 R3
       11 JUMPIFNOTLE                      R9 R11 ; [+25]
       13 GETTABLE                         R11 R3 R9
       14 GETTABLEKS                       R12 R11 K3 ["Value"]
       16 JUMPIFNOTLE                      R12 R2 ; [+7]
       18 GETTABLEKS                       R12 R10 K3 ["Value"]
       20 GETTABLEKS                       R13 R11 K3 ["Value"]
       22 JUMPIFLT                         R12 R13 ; [+11]
       24 GETTABLEKS                       R12 R11 K3 ["Value"]
       26 JUMPIFNOTLE                      R1 R12 ; [+10]
       28 GETTABLEKS                       R12 R10 K3 ["Value"]
       30 GETTABLEKS                       R13 R11 K3 ["Value"]
       32 JUMPIFNOTLT                      R13 R12 ; [+4]
       34 SETTABLE                         R11 R4 R9
       35 LOADB                            R5 1
       36 JUMP                             ; [+39]
       37 GETTABLEKS                       R12 R10 K3 ["Value"]
       39 FASTCALL3                        MATH_CLAMP R12 R1 R2
       41 MOVE                             R13 R1
       42 MOVE                             R14 R2
       43 GETIMPORT                        R11 K6 [math.clamp]
       45 CALL                             R11 3 1
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K7 ["calculateBoundedEnvelope"]
       49 GETIMPORT                        R13 K10 [Vector2.new]
       51 GETTABLEKS                       R14 R10 K11 ["Time"]
       53 MOVE                             R15 R11
       54 CALL                             R13 2 1
       55 GETTABLEKS                       R14 R10 K12 ["Envelope"]
       57 MOVE                             R15 R1
       58 MOVE                             R16 R2
       59 CALL                             R12 4 1
       60 GETIMPORT                        R13 K14 [NumberSequenceKeypoint.new]
       62 GETTABLEKS                       R14 R10 K11 ["Time"]
       64 MOVE                             R15 R11
       65 MOVE                             R16 R12
       66 CALL                             R13 3 1
       67 GETUPVAL                         R14 0
       68 GETTABLEKS                       R14 R14 K15 ["isKeypointEqual"]
       70 MOVE                             R15 R10
       71 MOVE                             R16 R13
       72 CALL                             R14 2 1
       73 JUMPIF                           R14 ; [+2]
       74 SETTABLE                         R13 R4 R9
       75 LOADB                            R5 1
       76 FORGLOOP                         R6 2 ; [-68]
       78 RETURN                           R4 2

PROTO_9:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 2
        2 JUMPIFNOTLT                      R2 R3 ; [+4]
        4 LOADN                            R2 0
        5 MOVE                             R3 R1
        6 RETURN                           R2 2
        7 GETTABLEN                        R3 R0 1
        8 GETTABLEKS                       R3 R3 K0 ["Value"]
       10 GETTABLEN                        R4 R0 1
       11 GETTABLEKS                       R4 R4 K1 ["Envelope"]
       13 SUB                              R2 R3 R4
       14 GETTABLEN                        R4 R0 1
       15 GETTABLEKS                       R4 R4 K0 ["Value"]
       17 GETTABLEN                        R5 R0 1
       18 GETTABLEKS                       R5 R5 K1 ["Envelope"]
       20 ADD                              R3 R4 R5
       21 MOVE                             R4 R0
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETTABLEKS                       R12 R8 K0 ["Value"]
       27 GETTABLEKS                       R13 R8 K1 ["Envelope"]
       29 SUB                              R11 R12 R13
       30 FASTCALL2                        MATH_MIN R2 R11 ; [+4]
       32 MOVE                             R10 R2
       33 GETIMPORT                        R9 K4 [math.min]
       35 CALL                             R9 2 1
       36 MOVE                             R2 R9
       37 GETTABLEKS                       R12 R8 K0 ["Value"]
       39 GETTABLEKS                       R13 R8 K1 ["Envelope"]
       41 ADD                              R11 R12 R13
       42 FASTCALL2                        MATH_MAX R3 R11 ; [+4]
       44 MOVE                             R10 R3
       45 GETIMPORT                        R9 K6 [math.max]
       47 CALL                             R9 2 1
       48 MOVE                             R3 R9
       49 FORGLOOP                         R4 2 ; [-25]
       51 DIV                              R6 R3 R1
       52 FASTCALL1                        MATH_CEIL R6 ; [+2]
       53 GETIMPORT                        R5 K8 [math.ceil]
       55 CALL                             R5 1 1
       56 MUL                              R4 R5 R1
       57 LOADN                            R6 0
       58 JUMPIFNOTLT                      R2 R6 ; [+8]
       60 DIV                              R7 R2 R1
       61 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       62 GETIMPORT                        R6 K10 [math.floor]
       64 CALL                             R6 1 1
       65 MUL                              R5 R6 R1
       66 JUMP                             ; [+1]
       67 LOADN                            R5 0
       68 JUMPIFNOTLE                      R4 R5 ; [+4]
       70 MOVE                             R6 R5
       71 ADD                              R7 R5 R1
       72 RETURN                           R6 2
       73 MOVE                             R6 R5
       74 MOVE                             R7 R4
       75 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["calculatePointOnLine"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["calculateBoundedEnvelope"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["calculateGhostKeypoint"]
       13 DUPCLOSURE                       R1 K6 [PROTO_4]
       14 SETTABLEKS                       R1 R0 K7 ["getSortedKeypointsWithOriginalIndices"]
       16 DUPCLOSURE                       R1 K8 [PROTO_5]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K9 ["fromUnorderedKeypoints"]
       20 DUPCLOSURE                       R1 K10 [PROTO_6]
       21 SETTABLEKS                       R1 R0 K11 ["isKeypointEqual"]
       23 DUPCLOSURE                       R1 K12 [PROTO_7]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K13 ["findKeypoint"]
       27 DUPCLOSURE                       R1 K14 [PROTO_8]
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K15 ["clampKeypointsToYRange"]
       31 DUPCLOSURE                       R1 K16 [PROTO_9]
       32 SETTABLEKS                       R1 R0 K17 ["calculateInitialYRange"]
       34 RETURN                           R0 1
