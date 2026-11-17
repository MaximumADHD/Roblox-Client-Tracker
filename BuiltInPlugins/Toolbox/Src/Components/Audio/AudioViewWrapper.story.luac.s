PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["createElement"]
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K3 [{"networkInterface"}]
        9 SETTABLEKS                       R0 R3 K2 ["networkInterface"]
       11 DUPTABLE                         R4 K5 [{"AudioViewWrapper"}]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["createElement"]
       15 GETUPVAL                         R6 3
       16 CALL                             R5 1 1
       17 SETTABLEKS                       R5 R4 K4 ["AudioViewWrapper"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["MockWrapper"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Networking"]
       29 GETTABLEKS                       R4 R4 K12 ["NetworkInterface"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K13 ["Parent"]
       38 GETTABLEKS                       R5 R5 K14 ["AudioViewWrapper"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K16 [{"story"}]
       42 DUPCLOSURE                       R6 K17 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R5 K15 ["story"]
       49 RETURN                           R5 1
