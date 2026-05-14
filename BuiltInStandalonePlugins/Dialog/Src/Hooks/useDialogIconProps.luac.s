PROTO_0:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K5 [{"Warning", "Critical"}]
        3 GETIMPORT                        R2 K2 [table.freeze]
        5 DUPTABLE                         R3 K8 [{"icon", "color"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K9 ["Icon"]
        9 GETTABLEKS                       R4 R4 K10 ["TriangleExclamation"]
       11 SETTABLEKS                       R4 R3 K6 ["icon"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K11 ["Color"]
       16 GETTABLEKS                       R4 R4 K12 ["System"]
       18 GETTABLEKS                       R4 R4 K3 ["Warning"]
       20 SETTABLEKS                       R4 R3 K7 ["color"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K3 ["Warning"]
       25 GETIMPORT                        R2 K2 [table.freeze]
       27 DUPTABLE                         R3 K8 [{"icon", "color"}]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K9 ["Icon"]
       31 GETTABLEKS                       R4 R4 K13 ["CircleX"]
       33 SETTABLEKS                       R4 R3 K6 ["icon"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K11 ["Color"]
       38 GETTABLEKS                       R4 R4 K12 ["System"]
       40 GETTABLEKS                       R4 R4 K14 ["Alert"]
       42 SETTABLEKS                       R4 R3 K7 ["color"]
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R1 K4 ["Critical"]
       47 CALL                             R0 1 -1
       48 RETURN                           R0 -1

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
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["BuilderIcons"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 RETURN                           R5 1
