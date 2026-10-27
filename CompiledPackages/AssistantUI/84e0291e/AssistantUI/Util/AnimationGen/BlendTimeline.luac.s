PROTO_0:
        0 LOADN                            R1 0
        1 NAMECALL                         R2 R0 K0 ["GetKeyframes"]
        3 CALL                             R2 1 3
        4 FORGPREP                         R2
        5 GETTABLEKS                       R9 R6 K1 ["Time"]
        7 FASTCALL2                        MATH_MAX R1 R9 ; [+4]
        9 MOVE                             R8 R1
       10 GETIMPORT                        R7 K4 [math.max]
       12 CALL                             R7 2 1
       13 MOVE                             R1 R7
       14 FORGLOOP                         R2 2 ; [-10]
       16 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"aiGeneratedDuration", "r6Duration"}]
        1 LOADN                            R4 0
        2 NAMECALL                         R5 R0 K3 ["GetKeyframes"]
        4 CALL                             R5 1 3
        5 FORGPREP                         R5
        6 GETTABLEKS                       R12 R9 K4 ["Time"]
        8 FASTCALL2                        MATH_MAX R4 R12 ; [+4]
       10 MOVE                             R11 R4
       11 GETIMPORT                        R10 K7 [math.max]
       13 CALL                             R10 2 1
       14 MOVE                             R4 R10
       15 FORGLOOP                         R5 2 ; [-10]
       17 MOVE                             R3 R4
       18 SETTABLEKS                       R3 R2 K0 ["aiGeneratedDuration"]
       20 LOADN                            R4 0
       21 NAMECALL                         R5 R1 K3 ["GetKeyframes"]
       23 CALL                             R5 1 3
       24 FORGPREP                         R5
       25 GETTABLEKS                       R12 R9 K4 ["Time"]
       27 FASTCALL2                        MATH_MAX R4 R12 ; [+4]
       29 MOVE                             R11 R4
       30 GETIMPORT                        R10 K7 [math.max]
       32 CALL                             R10 2 1
       33 MOVE                             R4 R10
       34 FORGLOOP                         R5 2 ; [-10]
       36 MOVE                             R3 R4
       37 SETTABLEKS                       R3 R2 K1 ["r6Duration"]
       39 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["aiGeneratedDuration"]
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+8]
        5 GETTABLEKS                       R4 R0 K0 ["aiGeneratedDuration"]
        7 DIV                              R3 R1 R4
        8 GETTABLEKS                       R4 R0 K1 ["r6Duration"]
       10 MUL                              R2 R3 R4
       11 RETURN                           R2 1
       12 LOADN                            R2 0
       13 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["r6Duration"]
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+8]
        5 GETTABLEKS                       R4 R0 K0 ["r6Duration"]
        7 DIV                              R3 R1 R4
        8 GETTABLEKS                       R4 R0 K1 ["aiGeneratedDuration"]
       10 MUL                              R2 R3 R4
       11 RETURN                           R2 1
       12 LOADN                            R2 0
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 NEWTABLE                         R1 4 0
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R1 K2 ["new"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 SETTABLEKS                       R2 R1 K4 ["toR6Time"]
       10 DUPCLOSURE                       R2 K5 [PROTO_3]
       11 SETTABLEKS                       R2 R1 K6 ["fromR6Time"]
       13 RETURN                           R1 1
