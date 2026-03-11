PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R6 R0 K4 ["studioUri"]
       11 JUMPIFNOT                        R6 ; [+24]
       12 GETTABLEKS                       R6 R0 K5 ["pluginGui"]
       14 JUMPIFNOT                        R6 ; [+21]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["createElement"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K6 ["StandaloneDataModelProvider"]
       21 DUPTABLE                         R7 K9 [{"plugin", "pluginGui", "uri"}]
       22 GETTABLEKS                       R8 R0 K7 ["plugin"]
       24 SETTABLEKS                       R8 R7 K7 ["plugin"]
       26 GETTABLEKS                       R8 R0 K5 ["pluginGui"]
       28 SETTABLEKS                       R8 R7 K5 ["pluginGui"]
       30 GETTABLEKS                       R8 R0 K4 ["studioUri"]
       32 SETTABLEKS                       R8 R7 K8 ["uri"]
       34 CALL                             R5 2 1
       35 JUMP                             ; [+7]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K0 ["createElement"]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K10 ["Fragment"]
       42 CALL                             R5 1 1
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K2 ["providers"]
       47 GETTABLEKS                       R4 R0 K11 ["children"]
       49 CALL                             R1 3 -1
       50 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CrossEnvironment"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["MouseContext"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Types"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K11 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 RETURN                           R5 1
