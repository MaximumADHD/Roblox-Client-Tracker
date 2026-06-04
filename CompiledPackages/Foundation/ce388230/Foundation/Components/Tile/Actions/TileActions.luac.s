PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K5 [{"Visible", "LayoutOrder", "tag", "testId"}]
        7 GETTABLEKS                       R5 R0 K1 ["Visible"]
        9 SETTABLEKS                       R5 R4 K1 ["Visible"]
       11 LOADN                            R5 3
       12 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       14 LOADK                            R5 K6 ["auto-y size-full-0 shrink"]
       15 SETTABLEKS                       R5 R4 K3 ["tag"]
       17 LOADK                            R6 K7 ["%*--actions"]
       18 GETTABLEKS                       R8 R1 K4 ["testId"]
       20 NAMECALL                         R6 R6 K8 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 SETTABLEKS                       R5 R4 K4 ["testId"]
       26 GETTABLEKS                       R5 R0 K9 ["children"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Tile"]
       20 GETTABLEKS                       R4 R4 K10 ["useTile"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R6 K12 ["View"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K13 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 RETURN                           R6 1
