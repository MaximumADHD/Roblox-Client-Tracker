PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["Tracks"]
        7 GETUPVAL                         R4 0
        8 LOADN                            R5 1
        9 LOADN                            R7 1
       10 LENGTH                           R8 R2
       11 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       13 GETIMPORT                        R6 K5 [math.max]
       15 CALL                             R6 2 1
       16 FASTCALL                         MATH_CLAMP ; [+2]
       17 GETIMPORT                        R3 K7 [math.clamp]
       19 CALL                             R3 3 1
       20 SETUPVAL                         R3 0
       21 GETUPVAL                         R5 1
       22 GETUPVAL                         R6 0
       23 CALL                             R5 1 -1
       24 NAMECALL                         R3 R0 K8 ["dispatch"]
       26 CALL                             R3 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          REF R0
        2 CAPTURE                          UPVAL U0
        3 CLOSEUPVALS                      R0
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetTopTrackIndex"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
