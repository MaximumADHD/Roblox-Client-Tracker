PROTO_0:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K6 [{"Warning", "Critical", "Success"}]
        3 GETIMPORT                        R2 K2 [table.freeze]
        5 DUPTABLE                         R3 K9 [{"icon", "color"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K10 ["Icon"]
        9 GETTABLEKS                       R4 R4 K11 ["TriangleExclamation"]
       11 SETTABLEKS                       R4 R3 K7 ["icon"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K12 ["Color"]
       16 GETTABLEKS                       R4 R4 K13 ["System"]
       18 GETTABLEKS                       R4 R4 K3 ["Warning"]
       20 SETTABLEKS                       R4 R3 K8 ["color"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K3 ["Warning"]
       25 GETIMPORT                        R2 K2 [table.freeze]
       27 DUPTABLE                         R3 K9 [{"icon", "color"}]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K10 ["Icon"]
       31 GETTABLEKS                       R4 R4 K14 ["CircleX"]
       33 SETTABLEKS                       R4 R3 K7 ["icon"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K12 ["Color"]
       38 GETTABLEKS                       R4 R4 K13 ["System"]
       40 GETTABLEKS                       R4 R4 K15 ["Alert"]
       42 SETTABLEKS                       R4 R3 K8 ["color"]
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R1 K4 ["Critical"]
       47 GETIMPORT                        R2 K2 [table.freeze]
       49 DUPTABLE                         R3 K9 [{"icon", "color"}]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K10 ["Icon"]
       53 GETTABLEKS                       R4 R4 K16 ["CircleCheck"]
       55 SETTABLEKS                       R4 R3 K7 ["icon"]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R4 R4 K12 ["Color"]
       60 GETTABLEKS                       R4 R4 K13 ["System"]
       62 GETTABLEKS                       R4 R4 K5 ["Success"]
       64 SETTABLEKS                       R4 R3 K8 ["color"]
       66 CALL                             R2 1 1
       67 SETTABLEKS                       R2 R1 K5 ["Success"]
       69 CALL                             R0 1 -1
       70 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R4 0 1
        8 MOVE                             R5 R0
        9 SETLIST                          R4 R5 1 [1]
       11 CALL                             R2 2 1
       12 GETTABLE                         R3 R2 R1
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Types"]
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K11 [PROTO_1]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 RETURN                           R6 1
