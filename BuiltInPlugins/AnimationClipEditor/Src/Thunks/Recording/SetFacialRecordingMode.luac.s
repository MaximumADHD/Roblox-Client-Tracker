PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["PLAY_STATE"]
        5 GETTABLEKS                       R1 R2 K1 ["Record"]
        7 JUMPIF                           R1 ; [+5]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K0 ["PLAY_STATE"]
       11 GETTABLEKS                       R1 R2 K2 ["Pause"]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R1
       15 CALL                             R4 1 -1
       16 NAMECALL                         R2 R0 K3 ["dispatch"]
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Actions"]
       22 GETTABLEKS                       R3 R4 K10 ["SetPlayState"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
