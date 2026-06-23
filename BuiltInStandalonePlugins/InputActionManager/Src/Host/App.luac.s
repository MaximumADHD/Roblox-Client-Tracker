PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ContextStack"]
        6 DUPTABLE                         R2 K3 [{"providers"}]
        7 NEWTABLE                         R3 0 5
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K4 ["Provider"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K0 ["createElement"]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K4 ["Provider"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K0 ["createElement"]
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R7 R7 K4 ["Provider"]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K0 ["createElement"]
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R8 R8 K4 ["Provider"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K0 ["createElement"]
       40 GETUPVAL                         R9 6
       41 GETTABLEKS                       R9 R9 K4 ["Provider"]
       43 CALL                             R8 1 -1
       44 SETLIST                          R3 R4 -1 [1]
       46 SETTABLEKS                       R3 R2 K2 ["providers"]
       48 DUPTABLE                         R3 K6 [{"Root"}]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K0 ["createElement"]
       52 GETUPVAL                         R5 7
       53 CALL                             R4 1 1
       54 SETTABLEKS                       R4 R3 K5 ["Root"]
       56 CALL                             R0 3 -1
       57 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["FilterConfiguration"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["InputConfiguration"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K13 ["PluginConfiguration"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K10 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K14 ["SchemaConfiguration"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K10 ["Contexts"]
       63 GETTABLEKS                       R8 R8 K15 ["Status"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K16 ["Components"]
       72 GETTABLEKS                       R9 R9 K17 ["Root"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K18 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 RETURN                           R9 1
