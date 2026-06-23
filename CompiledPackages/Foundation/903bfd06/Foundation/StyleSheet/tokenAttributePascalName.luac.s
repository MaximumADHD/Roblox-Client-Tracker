PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["upper"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["upper"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R3 K0 ["^%-?(.)"]
        1 DUPCLOSURE                       R4 K1 [PROTO_0]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K3 ["%-(.)"]
        6 DUPCLOSURE                       R5 K4 [PROTO_1]
        7 NAMECALL                         R2 R1 K2 ["gsub"]
        9 CALL                             R2 3 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R0
        5 JUMPIFNOT                        R3 ; [+19]
        6 LOADN                            R5 1
        7 LENGTH                           R6 R0
        8 FASTCALL3                        STRING_SUB R2 R5 R6
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K2 [string.sub]
       13 CALL                             R3 3 1
       14 JUMPIFNOTEQ                      R3 R0 ; [+10]
       16 LENGTH                           R6 R0
       17 ADDK                             R5 R6 K3 [1]
       18 FASTCALL2                        STRING_SUB R2 R5 ; [+4]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K2 [string.sub]
       23 CALL                             R3 2 1
       24 RETURN                           R3 1
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["colorScopeKeepPrefix"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_2]
       11 DUPCLOSURE                       R2 K7 [PROTO_3]
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 RETURN                           R2 1
