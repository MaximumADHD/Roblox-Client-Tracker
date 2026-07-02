PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K6 [{["LayoutOrder"] = 2, ["tag"] = "size-full-0 auto-y shrink", ["testId"]}]
        7 LOADK                            R6 K7 ["%*--footer"]
        8 GETTABLEKS                       R8 R1 K5 ["testId"]
       10 NAMECALL                         R6 R6 K8 ["format"]
       12 CALL                             R6 2 1
       13 MOVE                             R5 R6
       14 SETTABLEKS                       R5 R4 K5 ["testId"]
       16 GETTABLEKS                       R5 R0 K9 ["children"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Tile"]
       27 GETTABLEKS                       R5 R5 K11 ["useTile"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
