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
       30 GETUPVAL                         R9 5
       31 CALL                             R9 0 1
       32 JUMPIFNOT                        R9 ; [+3]
       33 GETTABLEKS                       R8 R0 K2 ["plugin"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R7 K2 ["plugin"]
       39 GETUPVAL                         R9 5
       40 CALL                             R9 0 1
       41 JUMPIFNOT                        R9 ; [+3]
       42 GETTABLEKS                       R8 R0 K3 ["pluginEnabled"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R8
       46 SETTABLEKS                       R8 R7 K3 ["pluginEnabled"]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K0 ["createElement"]
       52 GETUPVAL                         R7 6
       53 GETTABLEKS                       R7 R7 K1 ["Provider"]
       55 CALL                             R6 1 -1
       56 SETLIST                          R1 R2 -1 [1]
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K0 ["createElement"]
       61 GETUPVAL                         R3 7
       62 GETTABLEKS                       R3 R3 K5 ["ContextStack"]
       64 DUPTABLE                         R4 K7 [{"providers"}]
       65 SETTABLEKS                       R1 R4 K6 ["providers"]
       67 DUPTABLE                         R5 K9 [{"Root"}]
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K0 ["createElement"]
       71 GETUPVAL                         R7 8
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K8 ["Root"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

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
       75 GETTABLEKS                       R9 R0 K9 ["Src"]
       77 GETTABLEKS                       R9 R9 K18 ["Flags"]
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R9 K19 ["getFFlagIAMTelemetry"]
       83 CALL                             R10 1 1
       84 DUPCLOSURE                       R11 K20 [PROTO_0]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 RETURN                           R11 1
