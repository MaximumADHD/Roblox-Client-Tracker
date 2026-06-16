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
       47 GETUPVAL                         R3 2
       48 JUMPIFNOT                        R3 ; [+21]
       49 GETIMPORT                        R2 K2 [table.freeze]
       51 DUPTABLE                         R3 K9 [{"icon", "color"}]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K10 ["Icon"]
       55 GETTABLEKS                       R4 R4 K16 ["CircleCheck"]
       57 SETTABLEKS                       R4 R3 K7 ["icon"]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K12 ["Color"]
       62 GETTABLEKS                       R4 R4 K13 ["System"]
       64 GETTABLEKS                       R4 R4 K5 ["Success"]
       66 SETTABLEKS                       R4 R3 K8 ["color"]
       68 CALL                             R2 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R2
       71 SETTABLEKS                       R2 R1 K5 ["Success"]
       73 CALL                             R0 1 -1
       74 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R4 0 1
        9 MOVE                             R5 R0
       10 SETLIST                          R4 R5 1 [1]
       12 CALL                             R2 2 1
       13 GETTABLE                         R3 R2 R1
       14 RETURN                           R3 1

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
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Flags"]
       41 GETTABLEKS                       R6 R6 K13 ["getFFlagDialogManagerSuccessType"]
       43 CALL                             R5 1 1
       44 MOVE                             R6 R5
       45 CALL                             R6 0 1
       46 DUPCLOSURE                       R7 K14 [PROTO_1]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R6
       50 RETURN                           R7 1
