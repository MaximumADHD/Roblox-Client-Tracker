PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 LOADNIL                          R2
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R3 R1 K0 ["style"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETIMPORT                        R3 K2 [require]
        9 GETTABLEKS                       R4 R1 K0 ["style"]
       11 CALL                             R3 1 1
       12 MOVE                             R2 R3
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["UI"]
       11 GETTABLEKS                       R2 R2 K6 ["Components"]
       13 GETTABLEKS                       R2 R2 K7 ["UIFolderData"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
