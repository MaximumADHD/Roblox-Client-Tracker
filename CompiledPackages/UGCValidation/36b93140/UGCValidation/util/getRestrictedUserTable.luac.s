PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 NEWTABLE                         R0 0 1
        4 DUPTABLE                         R1 K3 [{[1] = "User", ["id"]}]
        5 GETUPVAL                         R2 0
        6 NAMECALL                         R2 R2 K4 ["GetUserId"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K2 ["id"]
       11 SETLIST                          R0 R1 1 [1]
       13 RETURN                           R0 1
       14 NEWTABLE                         R0 0 0
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 MOVE                             R2 R1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETIMPORT                        R3 K4 [script]
       11 GETTABLEKS                       R3 R3 K5 ["Parent"]
       13 GETTABLEKS                       R3 R3 K5 ["Parent"]
       15 GETIMPORT                        R4 K7 [require]
       17 GETTABLEKS                       R5 R3 K8 ["util"]
       19 GETTABLEKS                       R5 R5 K9 ["Types"]
       21 CALL                             R4 1 1
       22 DUPCLOSURE                       R5 K10 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 RETURN                           R5 1
