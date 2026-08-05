PROTO_0:
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

PROTO_1:
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
       17 DUPCLOSURE                       R4 K6 [PROTO_0]
       18 CALL                             R2 2 0
       19 NEWTABLE                         R2 0 0
       21 MOVE                             R3 R1
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLEKS                       R8 R7 K0 ["keypoint"]
       27 SETTABLE                         R8 R2 R6
       28 FORGLOOP                         R3 2 ; [-4]
       30 RETURN                           R2 1

PROTO_2:
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

PROTO_3:
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

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["fromUnorderedKeypoints"]
        6 DUPCLOSURE                       R1 K2 [PROTO_2]
        7 SETTABLEKS                       R1 R0 K3 ["isKeypointEqual"]
        9 DUPCLOSURE                       R1 K4 [PROTO_3]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["findKeypoint"]
       13 RETURN                           R0 1
