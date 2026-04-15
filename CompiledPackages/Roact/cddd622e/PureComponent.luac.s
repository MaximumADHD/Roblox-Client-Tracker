PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R3 1
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R0 K1 ["props"]
        8 JUMPIFNOTEQ                      R1 R3 ; [+3]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETIMPORT                        R3 K3 [pairs]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 3
       16 FORGPREP_NEXT                    R3
       17 GETTABLEKS                       R9 R0 K1 ["props"]
       19 GETTABLE                         R8 R9 R6
       20 JUMPIFEQ                         R8 R7 ; [+3]
       22 LOADB                            R8 1
       23 RETURN                           R8 1
       24 FORGLOOP                         R3 2 ; [-8]
       26 GETIMPORT                        R3 K3 [pairs]
       28 GETTABLEKS                       R4 R0 K1 ["props"]
       30 CALL                             R3 1 3
       31 FORGPREP_NEXT                    R3
       32 GETTABLE                         R8 R1 R6
       33 JUMPIFEQ                         R8 R7 ; [+3]
       35 LOADB                            R8 1
       36 RETURN                           R8 1
       37 FORGLOOP                         R3 2 ; [-6]
       39 LOADB                            R3 0
       40 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Component"]
        9 CALL                             R0 1 1
       10 LOADK                            R3 K6 ["PureComponent"]
       11 NAMECALL                         R1 R0 K7 ["extend"]
       13 CALL                             R1 2 1
       14 GETTABLEKS                       R2 R0 K7 ["extend"]
       16 SETTABLEKS                       R2 R1 K7 ["extend"]
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 SETTABLEKS                       R2 R1 K9 ["shouldUpdate"]
       21 RETURN                           R1 1
