PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"mockNetworkConfig", "universeId"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["mockNetworkConfig"]
        8 GETUPVAL                         R4 3
        9 SETTABLEKS                       R4 R3 K2 ["universeId"]
       11 GETTABLEKS                       R4 R0 K4 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K2 [{"container", "wrapper"}]
        3 GETUPVAL                         R6 1
        4 SETTABLEKS                       R6 R5 K0 ["container"]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 SETTABLEKS                       R6 R5 K1 ["wrapper"]
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["render"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["TestUtil"]
       31 GETTABLEKS                       R5 R5 K13 ["MockNetwork"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["TestUtil"]
       40 GETTABLEKS                       R6 R6 K14 ["MockWrapper"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K12 ["TestUtil"]
       49 GETTABLEKS                       R7 R7 K15 ["testContainer"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K16 [PROTO_1]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 RETURN                           R7 1
