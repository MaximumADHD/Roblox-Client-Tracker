PROTO_0:
        0 MOVE                             R3 R2
        1 JUMPIFNOT                        R3 ; [+9]
        2 LOADK                            R5 K0 ["Attachment"]
        3 NAMECALL                         R3 R2 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+4]
        7 NAMECALL                         R4 R0 K2 ["shouldExtendSelection"]
        9 CALL                             R4 1 1
       10 NOT                              R3 R4
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
