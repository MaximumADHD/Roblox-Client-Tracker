PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 3
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K4 ["Provider"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["createElement"]
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K5 ["UIDataModelProvider"]
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K0 ["createElement"]
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K5 ["UIDataModelProvider"]
       29 CALL                             R7 1 -1
       30 SETLIST                          R4 R5 -1 [1]
       32 SETTABLEKS                       R4 R3 K2 ["providers"]
       34 GETTABLEKS                       R4 R0 K6 ["children"]
       36 CALL                             R1 3 -1
       37 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetNameContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["DebugUiContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K9 ["NodesSelectedContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 RETURN                           R6 1
