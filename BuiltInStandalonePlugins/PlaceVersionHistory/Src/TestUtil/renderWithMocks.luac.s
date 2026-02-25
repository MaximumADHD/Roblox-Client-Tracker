PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"mockNetworkConfig"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["mockNetworkConfig"]
        8 GETTABLEKS                       R4 R0 K3 ["children"]
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"container", "wrapper"}]
        3 GETUPVAL                         R5 1
        4 SETTABLEKS                       R5 R4 K0 ["container"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R5 R4 K1 ["wrapper"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Packages"]
       18 GETTABLEKS                       R4 R5 K8 ["Dev"]
       20 GETTABLEKS                       R3 R4 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["render"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["TestUtil"]
       31 GETTABLEKS                       R5 R6 K13 ["MockNetwork"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R8 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R8 K12 ["TestUtil"]
       40 GETTABLEKS                       R6 R7 K14 ["MockWrapper"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K16 [game]
       45 LOADK                            R8 K17 ["CoreGui"]
       46 NAMECALL                         R6 R6 K18 ["GetService"]
       48 CALL                             R6 2 1
       49 DUPCLOSURE                       R7 K19 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R5
       54 RETURN                           R7 1
