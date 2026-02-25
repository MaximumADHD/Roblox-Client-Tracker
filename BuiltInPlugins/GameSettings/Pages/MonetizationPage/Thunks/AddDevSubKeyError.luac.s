PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R5 R2 K1 ["Settings"]
        5 GETTABLEKS                       R4 R5 K2 ["Errors"]
        7 GETTABLEKS                       R3 R4 K3 ["DeveloperSubscriptions"]
        9 JUMPIF                           R3 ; [+2]
       10 NEWTABLE                         R3 0 0
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R3
       14 NEWTABLE                         R6 1 0
       16 GETUPVAL                         R7 1
       17 NEWTABLE                         R8 1 0
       19 GETUPVAL                         R9 2
       20 GETUPVAL                         R10 3
       21 SETTABLE                         R10 R8 R9
       22 SETTABLE                         R8 R6 R7
       23 CALL                             R4 2 1
       24 GETUPVAL                         R7 4
       25 DUPTABLE                         R8 K4 [{"DeveloperSubscriptions"}]
       26 SETTABLEKS                       R4 R8 K3 ["DeveloperSubscriptions"]
       28 CALL                             R7 1 -1
       29 NAMECALL                         R5 R0 K5 ["dispatch"]
       31 CALL                             R5 -1 0
       32 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Packages"]
       15 GETTABLEKS                       R4 R5 K6 ["Framework"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETTABLEKS                       R1 R2 K8 ["deepJoin"]
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R5 K10 ["Actions"]
       28 GETTABLEKS                       R3 R4 K11 ["AddErrors"]
       30 CALL                             R2 1 1
       31 DUPCLOSURE                       R3 K12 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 RETURN                           R3 1
