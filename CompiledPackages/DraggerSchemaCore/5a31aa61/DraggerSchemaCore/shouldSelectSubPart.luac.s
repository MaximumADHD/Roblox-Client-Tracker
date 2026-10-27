PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["areConstraintsEnabled"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["shouldSelectScopeByDefault"]
        6 CALL                             R1 1 1
        7 NAMECALL                         R3 R0 K2 ["isAltKeyDown"]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R1 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
