PROTO_0:
        0 NEWTABLE                         R1 0 5
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Provider"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["createElement"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["Provider"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K1 ["Provider"]
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["createElement"]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K1 ["Provider"]
       29 DUPTABLE                         R7 K4 [{"plugin", "pluginEnabled"}]
       30 GETTABLEKS                       R8 R0 K2 ["plugin"]
       32 SETTABLEKS                       R8 R7 K2 ["plugin"]
       34 GETTABLEKS                       R8 R0 K3 ["pluginEnabled"]
       36 SETTABLEKS                       R8 R7 K3 ["pluginEnabled"]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K0 ["createElement"]
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R7 R7 K1 ["Provider"]
       45 CALL                             R6 1 -1
       46 SETLIST                          R1 R2 -1 [1]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K0 ["createElement"]
       51 GETUPVAL                         R3 6
       52 GETTABLEKS                       R3 R3 K5 ["ContextStack"]
       54 DUPTABLE                         R4 K7 [{"providers"}]
       55 SETTABLEKS                       R1 R4 K6 ["providers"]
       57 DUPTABLE                         R5 K9 [{"Root"}]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K0 ["createElement"]
       61 GETUPVAL                         R7 7
       62 CALL                             R6 1 1
       63 SETTABLEKS                       R6 R5 K8 ["Root"]
       65 CALL                             R2 3 -1
       66 RETURN                           R2 -1

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
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R8
       84 RETURN                           R9 1
