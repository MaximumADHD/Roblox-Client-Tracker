PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUserId"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 2
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["GetNameFromUserIdAsync"]
        8 CALL                             R1 2 1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R0 K0 [""]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 LOADN                            R1 1
        5 CLOSEUPVALS                      R0
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          REF R0
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 1 0
       14 CLOSEUPVALS                      R0
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETIMPORT                        R5 K8 [script]
       17 GETTABLEKS                       R4 R5 K9 ["Parent"]
       19 GETTABLEKS                       R3 R4 K10 ["isCli"]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
