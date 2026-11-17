PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K1 [game]
        8 MOVE                             R10 R6
        9 MOVE                             R11 R7
       10 NAMECALL                         R8 R8 K2 ["SetFastFlagForTesting"]
       12 CALL                             R8 3 1
       13 SETTABLE                         R8 R2 R6
       14 FORGLOOP                         R3 2 ; [-9]
       16 MOVE                             R3 R1
       17 CALL                             R3 0 0
       18 MOVE                             R3 R2
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETIMPORT                        R8 K1 [game]
       24 MOVE                             R10 R6
       25 MOVE                             R11 R7
       26 NAMECALL                         R8 R8 K2 ["SetFastFlagForTesting"]
       28 CALL                             R8 3 0
       29 FORGLOOP                         R3 2 ; [-8]
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
