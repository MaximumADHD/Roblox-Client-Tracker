PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K2 [{"manageableGroups"}]
        5 GETTABLEKS                       R5 R1 K1 ["manageableGroups"]
        7 SETTABLEKS                       R5 R4 K1 ["manageableGroups"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Rodux"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R6 K11 ["Types"]
       30 GETTABLEKS                       R6 R6 K12 ["GroupTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Actions"]
       39 GETTABLEKS                       R7 R7 K14 ["SetManageableGroups"]
       41 CALL                             R6 1 1
       42 DUPTABLE                         R7 K16 [{"manageableGroups"}]
       43 LOADNIL                          R8
       44 SETTABLEKS                       R8 R7 K15 ["manageableGroups"]
       46 GETTABLEKS                       R8 R2 K17 ["createReducer"]
       48 MOVE                             R9 R7
       49 NEWTABLE                         R10 1 0
       51 GETTABLEKS                       R11 R6 K18 ["name"]
       53 DUPCLOSURE                       R12 K19 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 SETTABLE                         R12 R10 R11
       56 CALL                             R8 2 -1
       57 RETURN                           R8 -1
