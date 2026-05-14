PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R5 K0 ["ShouldImport"]
        8 JUMPIFEQ                         R7 R6 ; [+11]
       10 SETTABLEKS                       R6 R5 K0 ["ShouldImport"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K1 ["assign"]
       15 MOVE                             R8 R1
       16 GETUPVAL                         R9 2
       17 MOVE                             R10 R5
       18 CALL                             R9 1 -1
       19 CALL                             R7 -1 0
       20 FORGLOOP                         R2 2 ; [-15]
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R1
       24 CALL                             R4 1 -1
       25 NAMECALL                         R2 R0 K2 ["dispatch"]
       27 CALL                             R2 -1 0
       28 NAMECALL                         R2 R0 K3 ["getState"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R2 K4 ["Preview"]
       33 GETTABLEKS                       R3 R3 K5 ["importTree"]
       35 GETUPVAL                         R6 4
       36 GETUPVAL                         R7 5
       37 MOVE                             R8 R3
       38 CALL                             R7 1 -1
       39 CALL                             R6 -1 -1
       40 NAMECALL                         R4 R0 K2 ["dispatch"]
       42 CALL                             R4 -1 0
       43 GETUPVAL                         R6 6
       44 GETUPVAL                         R7 7
       45 MOVE                             R8 R3
       46 CALL                             R7 1 -1
       47 CALL                             R6 -1 -1
       48 NAMECALL                         R4 R0 K2 ["dispatch"]
       50 CALL                             R4 -1 0
       51 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Utility"]
       20 GETTABLEKS                       R3 R3 K10 ["GetErrorChecked"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Utility"]
       29 GETTABLEKS                       R4 R4 K11 ["GetCheckedCount"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Actions"]
       38 GETTABLEKS                       R5 R5 K13 ["SetCheckedCount"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Actions"]
       47 GETTABLEKS                       R6 R6 K14 ["SetTreeChecked"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K12 ["Actions"]
       56 GETTABLEKS                       R7 R7 K15 ["SetErrorNodeChecked"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Utility"]
       65 GETTABLEKS                       R8 R8 K16 ["GetCheckedMapForSubtree"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K17 [PROTO_1]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 RETURN                           R8 1
