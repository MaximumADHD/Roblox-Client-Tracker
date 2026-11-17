PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 2
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K4 ["StudioProvider"]
       15 DUPTABLE                         R7 K6 [{"plugin"}]
       16 GETTABLEKS                       R8 R0 K5 ["plugin"]
       18 SETTABLEKS                       R8 R7 K5 ["plugin"]
       20 CALL                             R5 2 1
       21 GETTABLEKS                       R7 R0 K7 ["studioUri"]
       23 JUMPIFNOT                        R7 ; [+24]
       24 GETTABLEKS                       R7 R0 K8 ["pluginGui"]
       26 JUMPIFNOT                        R7 ; [+21]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K0 ["createElement"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K9 ["StandaloneDataModelProvider"]
       33 DUPTABLE                         R8 K11 [{"plugin", "pluginGui", "uri"}]
       34 GETTABLEKS                       R9 R0 K5 ["plugin"]
       36 SETTABLEKS                       R9 R8 K5 ["plugin"]
       38 GETTABLEKS                       R9 R0 K8 ["pluginGui"]
       40 SETTABLEKS                       R9 R8 K8 ["pluginGui"]
       42 GETTABLEKS                       R9 R0 K7 ["studioUri"]
       44 SETTABLEKS                       R9 R8 K10 ["uri"]
       46 CALL                             R6 2 1
       47 JUMP                             ; [+7]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K0 ["createElement"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K12 ["Fragment"]
       54 CALL                             R6 1 1
       55 SETLIST                          R4 R5 2 [1]
       57 SETTABLEKS                       R4 R3 K2 ["providers"]
       59 GETTABLEKS                       R4 R0 K13 ["children"]
       61 CALL                             R1 3 -1
       62 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CrossEnvironment"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["ActionsContext"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["MouseContext"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["Parent"]
       21 GETTABLEKS                       R4 R4 K9 ["React"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K8 ["Parent"]
       28 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K11 ["Types"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K12 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 RETURN                           R6 1
