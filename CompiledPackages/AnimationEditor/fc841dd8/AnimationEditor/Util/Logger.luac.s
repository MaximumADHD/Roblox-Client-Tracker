PROTO_0:
        0 GETIMPORT                        R3 K1 [print]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["lumberyak"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Logger"]
       16 GETTABLEKS                       R2 R3 K9 ["new"]
       18 LOADNIL                          R3
       19 LOADK                            R4 K2 ["AnimationEditor"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R5 K12 [_G]
       23 GETTABLEKS                       R4 R5 K13 ["__COMPOSITOR_DEBUGGER_LOG_LEVEL__"]
       25 ORK                              R3 R4 K10 ["Error"]
       26 DUPTABLE                         R4 K16 [{"maxLevel", "log"}]
       27 GETTABLEKS                       R6 R2 K17 ["Levels"]
       29 GETTABLEKS                       R5 R6 K18 ["fromString"]
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K14 ["maxLevel"]
       35 DUPCLOSURE                       R5 K19 [PROTO_0]
       36 SETTABLEKS                       R5 R4 K15 ["log"]
       38 DUPTABLE                         R7 K21 [{"prefix"}]
       39 LOADK                            R8 K22 ["[AnimationEditor {loggerName} - {level}] - "]
       40 SETTABLEKS                       R8 R7 K20 ["prefix"]
       42 NAMECALL                         R5 R2 K23 ["setContext"]
       44 CALL                             R5 2 0
       45 MOVE                             R7 R4
       46 NAMECALL                         R5 R2 K24 ["addSink"]
       48 CALL                             R5 2 0
       49 LOADK                            R7 K25 ["Logger initialized with level {}"]
       50 MOVE                             R8 R3
       51 NAMECALL                         R5 R2 K26 ["warning"]
       53 CALL                             R5 3 0
       54 RETURN                           R2 1
