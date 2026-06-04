PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 MOVE                             R9 R6
        6 NAMECALL                         R7 R0 K2 ["FindFirstChild"]
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+7]
       10 LOADK                            R10 K3 ["Attachment"]
       11 NAMECALL                         R8 R7 K4 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+1]
       15 RETURN                           R7 1
       16 RETURN                           R7 1
       17 FORGLOOP                         R2 2 ; [-13]
       19 LOADNIL                          R2
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
