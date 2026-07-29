PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["DISCRETE_SCALES"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K1 ["EPSILON"]
       10 SUB                              R7 R0 R8
       11 JUMPIFNOTLT                      R6 R7 ; [+2]
       13 MOVE                             R1 R6
       14 FORGLOOP                         R2 2 ; [-8]
       16 LOADNIL                          R2
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["DISCRETE_SCALES"]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K1 ["EPSILON"]
       26 ADD                              R8 R0 R9
       27 JUMPIFNOTLT                      R8 R7 ; [+3]
       29 MOVE                             R2 R7
       30 RETURN                           R1 2
       31 FORGLOOP                         R3 2 ; [-9]
       33 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findScaleNeighbors"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findScaleNeighbors"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%d%%"]
        3 MULK                             R4 R0 K4 [100]
        4 FASTCALL1                        MATH_ROUND R4 ; [+2]
        5 GETIMPORT                        R3 K7 [math.round]
        7 CALL                             R3 1 1
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 NEWTABLE                         R1 0 3
        5 LOADK                            R2 K0 [0.5]
        6 LOADN                            R3 1
        7 LOADN                            R4 2
        8 SETLIST                          R1 R2 3 [1]
       10 SETTABLEKS                       R1 R0 K1 ["DISCRETE_SCALES"]
       12 LOADK                            R1 K2 [0.001]
       13 SETTABLEKS                       R1 R0 K3 ["EPSILON"]
       15 DUPCLOSURE                       R1 K4 [PROTO_0]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["findScaleNeighbors"]
       19 DUPCLOSURE                       R1 K6 [PROTO_1]
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K7 ["canZoomIn"]
       23 DUPCLOSURE                       R1 K8 [PROTO_2]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K9 ["canZoomOut"]
       27 DUPCLOSURE                       R1 K10 [PROTO_3]
       28 SETTABLEKS                       R1 R0 K11 ["formatZoomPercent"]
       30 RETURN                           R0 1
