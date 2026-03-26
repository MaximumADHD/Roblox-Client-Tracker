PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 LOADN                            R1 1
        5 CLOSEUPVALS                      R0
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K1 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R1 1 0
       13 CLOSEUPVALS                      R0
       14 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K7 [script]
       11 GETTABLEKS                       R3 R4 K8 ["Parent"]
       13 GETTABLEKS                       R2 R3 K9 ["isCli"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K10 [PROTO_1]
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 RETURN                           R2 1
