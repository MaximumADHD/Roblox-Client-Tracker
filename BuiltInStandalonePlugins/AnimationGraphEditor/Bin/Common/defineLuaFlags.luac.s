PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableAnimationGraphEditor"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RegisterActionsPluginLoader"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getFFlagRegisterActionsPluginLoader"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAnimationGraphEditor"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 NEWTABLE                         R0 4 0
       10 DUPCLOSURE                       R1 K4 [PROTO_0]
       11 SETTABLEKS                       R1 R0 K5 ["getFFlagEnableAnimationGraphEditor"]
       13 DUPCLOSURE                       R1 K6 [PROTO_1]
       14 SETTABLEKS                       R1 R0 K7 ["getFFlagRegisterActionsPluginLoader"]
       16 DUPCLOSURE                       R1 K8 [PROTO_2]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K9 ["getMigratePluginToggleToActions"]
       20 RETURN                           R0 1
