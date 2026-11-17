PROTO_0:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADK                            R9 K0 ["AnimationClip"]
        5 NAMECALL                         R7 R6 K1 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+4]
        9 MOVE                             R9 R6
       10 NAMECALL                         R7 R0 K2 ["TagEmoteAnimation"]
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-10]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
