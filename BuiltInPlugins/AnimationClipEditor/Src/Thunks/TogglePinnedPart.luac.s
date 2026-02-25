PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["PinnedParts"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["Dictionary"]
       10 GETTABLEKS                       R3 R4 K4 ["join"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 1
       15 GETTABLE                         R4 R3 R5
       16 JUMPIFEQKNIL                     R4 ; [+7]
       18 GETUPVAL                         R4 1
       19 GETUPVAL                         R7 1
       20 GETTABLE                         R6 R3 R7
       21 NOT                              R5 R6
       22 SETTABLE                         R5 R3 R4
       23 JUMP                             ; [+3]
       24 GETUPVAL                         R4 1
       25 LOADB                            R5 1
       26 SETTABLE                         R5 R3 R4
       27 GETUPVAL                         R6 2
       28 MOVE                             R7 R3
       29 CALL                             R6 1 -1
       30 NAMECALL                         R4 R0 K5 ["dispatch"]
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Actions"]
       20 GETTABLEKS                       R3 R4 K10 ["SetPinnedParts"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
