PROTO_0:
        0 GETIMPORT                        R3 K1 [game]
        2 LOADK                            R5 K2 ["AsyncRenamesUsedInLuaApps"]
        3 NAMECALL                         R3 R3 K3 ["GetEngineFeature"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+6]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 NAMECALL                         R3 R0 K4 ["ApplyDescriptionResetAsync"]
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 NAMECALL                         R3 R0 K5 ["ApplyDescriptionReset"]
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
