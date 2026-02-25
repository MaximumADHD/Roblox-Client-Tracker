PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 JUMPIFNOTEQ                      R7 R1 ; [+3]
        9 SETTABLE                         R2 R3 R7
       10 JUMP                             ; [+1]
       11 SETTABLE                         R8 R3 R7
       12 FORGLOOP                         R4 2 ; [-6]
       14 RETURN                           R3 1

PROTO_1:
        0 LOADN                            R1 0
        1 GETIMPORT                        R2 K1 [pairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 ADDK                             R1 R1 K2 [1]
        7 FORGLOOP                         R2 2 ; [-2]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["immutableSetExistingDictionaryEntry"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["countDictionaryKeys"]
        9 RETURN                           R0 1
