PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 MOVE                             R5 R0
        5 CALL                             R2 3 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["use"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R1 R1 K1 ["networkInterface"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["use"]
       11 CALL                             R2 0 1
       12 LOADK                            R4 K2 ["Plugin"]
       13 NAMECALL                         R2 R2 K3 ["get"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 3
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R5 0 2
       24 MOVE                             R6 R0
       25 MOVE                             R7 R1
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["ContextServices"]
       20 GETTABLEKS                       R3 R3 K10 ["NetworkContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Networking"]
       29 GETTABLEKS                       R4 R4 K12 ["Requests"]
       31 GETTABLEKS                       R4 R4 K13 ["SelectCategoryRequest"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["ContextServices"]
       40 GETTABLEKS                       R5 R5 K14 ["Settings"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K15 ["Hooks"]
       49 GETTABLEKS                       R6 R6 K16 ["useDispatch"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R1 K17 ["useCallback"]
       54 DUPCLOSURE                       R7 K18 [PROTO_1]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 RETURN                           R7 1
