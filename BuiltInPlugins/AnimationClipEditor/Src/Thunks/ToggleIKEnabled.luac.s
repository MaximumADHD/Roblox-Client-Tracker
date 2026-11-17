PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["RootInstance"]
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R5 R1 K2 ["Status"]
       13 GETTABLEKS                       R5 R5 K4 ["IKEnabled"]
       15 NOT                              R4 R5
       16 GETUPVAL                         R7 0
       17 MOVE                             R8 R4
       18 CALL                             R7 1 -1
       19 NAMECALL                         R5 R0 K5 ["dispatch"]
       21 CALL                             R5 -1 0
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETTABLEKS                       R6 R2 K6 ["Metadata"]
       25 JUMPIFNOT                        R6 ; [+5]
       26 GETTABLEKS                       R5 R2 K6 ["Metadata"]
       28 GETTABLEKS                       R5 R5 K7 ["Guid"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R5
       32 JUMPIFNOT                        R4 ; [+15]
       33 GETUPVAL                         R6 1
       34 LOADK                            R8 K8 ["onIkEnabled"]
       35 MOVE                             R9 R5
       36 NAMECALL                         R6 R6 K9 ["report"]
       38 CALL                             R6 3 0
       39 GETUPVAL                         R8 2
       40 GETIMPORT                        R9 K12 [os.time]
       42 CALL                             R9 0 -1
       43 CALL                             R8 -1 -1
       44 NAMECALL                         R6 R0 K5 ["dispatch"]
       46 CALL                             R6 -1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R6 1
       49 LOADK                            R8 K13 ["onIkDisabled"]
       50 GETIMPORT                        R10 K12 [os.time]
       52 CALL                             R10 0 1
       53 GETTABLEKS                       R11 R1 K2 ["Status"]
       55 GETTABLEKS                       R11 R11 K14 ["IKOpenedTimestamp"]
       57 SUB                              R9 R10 R11
       58 MOVE                             R10 R5
       59 NAMECALL                         R6 R6 K9 ["report"]
       61 CALL                             R6 4 0
       62 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetIKEnabled"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["SetIKOpenedTimestamp"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
