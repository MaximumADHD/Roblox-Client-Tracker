PROTO_0:
        0 LOADK                            R3 K0 [0.5]
        1 LOADK                            R4 K1 [1.5]
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K4 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 SUBK                             R4 R0 K1 [0.5]
        1 DIVK                             R3 R4 K0 [0.1]
        2 FASTCALL1                        MATH_ROUND R3 ; [+2]
        3 GETIMPORT                        R2 K4 [math.round]
        5 CALL                             R2 1 1
        6 LOADN                            R3 0
        7 LOADN                            R4 10
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R1 K6 [math.clamp]
       11 CALL                             R1 3 1
       12 SUBRK                            R3 K7 [10] R1
       13 MULK                             R2 R3 K7 [10]
       14 RETURN                           R2 1

PROTO_2:
        0 DIVK                             R3 R0 K0 [10]
        1 FASTCALL1                        MATH_ROUND R3 ; [+2]
        2 GETIMPORT                        R2 K3 [math.round]
        4 CALL                             R2 1 1
        5 LOADN                            R3 0
        6 LOADN                            R4 10
        7 FASTCALL                         MATH_CLAMP ; [+2]
        8 GETIMPORT                        R1 K5 [math.clamp]
       10 CALL                             R1 3 1
       11 SUBRK                            R7 K0 [10] R1
       12 MULK                             R6 R7 K7 [0.1]
       13 ADDK                             R5 R6 K6 [0.5]
       14 MULK                             R4 R5 K0 [10]
       15 FASTCALL1                        MATH_ROUND R4 ; [+2]
       16 GETIMPORT                        R3 K3 [math.round]
       18 CALL                             R3 1 1
       19 DIVK                             R2 R3 K0 [10]
       20 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toPercent"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["fromPercent"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NEUTRAL"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["NEUTRAL"]
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKNIL                  R0 ; [+7]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["clamp"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
       17 LOADNIL                          R2
       18 LOADK                            R3 K2 [∞]
       19 MOVE                             R4 R0
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 SUB                              R10 R7 R1
       24 FASTCALL1                        MATH_ABS R10 ; [+2]
       25 GETIMPORT                        R9 K5 [math.abs]
       27 CALL                             R9 1 1
       28 JUMPIFNOTLT                      R9 R3 ; [+3]
       30 MOVE                             R3 R9
       31 MOVE                             R2 R7
       32 FORGLOOP                         R4 1 ; [-10]
       34 MOVE                             R4 R2
       35 JUMPIF                           R4 ; [+3]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K0 ["NEUTRAL"]
       39 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = 1}]
        2 DUPCLOSURE                       R1 K3 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K4 ["clamp"]
        5 DUPCLOSURE                       R1 K5 [PROTO_1]
        6 SETTABLEKS                       R1 R0 K6 ["toPercent"]
        8 DUPCLOSURE                       R1 K7 [PROTO_2]
        9 SETTABLEKS                       R1 R0 K8 ["fromPercent"]
       11 DUPCLOSURE                       R1 K9 [PROTO_3]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K10 ["snapPercent"]
       15 DUPCLOSURE                       R1 K11 [PROTO_4]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K12 ["snap"]
       19 RETURN                           R0 1
