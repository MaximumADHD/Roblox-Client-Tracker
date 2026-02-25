PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["homeConfiguration"]
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["homeConfiguration"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["Name"]
        8 GETTABLE                         R1 R2 R3
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R1 3 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["use"]
        3 CALL                             R3 0 1
        4 GETTABLEKS                       R2 R3 K1 ["networkInterface"]
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 2
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R7 0 4
       23 MOVE                             R8 R3
       24 MOVE                             R9 R2
       25 MOVE                             R10 R0
       26 MOVE                             R11 R1
       27 SETLIST                          R7 R8 4 [1]
       29 CALL                             R5 2 0
       30 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["ContextServices"]
       20 GETTABLEKS                       R3 R4 K10 ["NetworkContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Networking"]
       29 GETTABLEKS                       R5 R6 K12 ["Requests"]
       31 GETTABLEKS                       R4 R5 K13 ["GetHomeConfigurationRequest"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Src"]
       38 GETTABLEKS                       R6 R7 K14 ["Hooks"]
       40 GETTABLEKS                       R5 R6 K15 ["useDispatch"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R8 K14 ["Hooks"]
       49 GETTABLEKS                       R6 R7 K16 ["useSelector"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Src"]
       56 GETTABLEKS                       R8 R9 K17 ["Types"]
       58 GETTABLEKS                       R7 R8 K18 ["HomeTypes"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K19 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R3
       67 RETURN                           R7 1
