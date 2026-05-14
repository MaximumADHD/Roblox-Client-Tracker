PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K1 ["children"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

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
       31 GETTABLEKS                       R5 R5 K13 ["MockWrapper"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K15 [game]
       36 LOADK                            R7 K16 ["CoreGui"]
       37 NAMECALL                         R5 R5 K17 ["GetService"]
       39 CALL                             R5 2 1
       40 DUPCLOSURE                       R6 K18 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 RETURN                           R6 1
