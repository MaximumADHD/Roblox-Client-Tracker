PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RegisterActionsPluginLoader"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CreatorConfigOnCloseSkipActionTrigger"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["CreatorConfigDmChangedListener"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["createGetSafeFFlag"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["CreatorConfigOnCloseSkipActionTrigger"]
       13 LOADB                            R4 0
       14 NAMECALL                         R1 R1 K9 ["DefineFastFlag"]
       16 CALL                             R1 3 0
       17 GETIMPORT                        R1 K7 [game]
       19 LOADK                            R3 K10 ["CreatorConfigDmChangedListener"]
       20 LOADB                            R4 0
       21 NAMECALL                         R1 R1 K9 ["DefineFastFlag"]
       23 CALL                             R1 3 0
       24 DUPTABLE                         R1 K16 [{"getFFlagEnableCreatorConfig", "getFFlagRegisterActionsPluginLoader", "getFFlagEnableCreatorConfigSystemMenu", "getFFlagOnCloseSkipActionTrigger", "getFFlagCreatorConfigDmChangedListener"}]
       25 MOVE                             R2 R0
       26 LOADK                            R3 K17 ["EnableCreatorConfig"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K11 ["getFFlagEnableCreatorConfig"]
       30 DUPCLOSURE                       R2 K18 [PROTO_0]
       31 SETTABLEKS                       R2 R1 K12 ["getFFlagRegisterActionsPluginLoader"]
       33 MOVE                             R2 R0
       34 LOADK                            R3 K19 ["EnableCreatorConfigSystemMenu"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K13 ["getFFlagEnableCreatorConfigSystemMenu"]
       38 DUPCLOSURE                       R2 K20 [PROTO_1]
       39 SETTABLEKS                       R2 R1 K14 ["getFFlagOnCloseSkipActionTrigger"]
       41 DUPCLOSURE                       R2 K21 [PROTO_2]
       42 SETTABLEKS                       R2 R1 K15 ["getFFlagCreatorConfigDmChangedListener"]
       44 RETURN                           R1 1
