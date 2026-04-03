PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 2
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["createElement"]
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R6 R7 K4 ["Provider"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K0 ["createElement"]
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R7 R8 K5 ["UIDataModelProvider"]
       22 CALL                             R6 1 -1
       23 SETLIST                          R4 R5 -1 [1]
       25 SETTABLEKS                       R4 R3 K2 ["providers"]
       27 GETTABLEKS                       R4 R0 K6 ["children"]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["AssetNameContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K8 ["DebugUiContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
