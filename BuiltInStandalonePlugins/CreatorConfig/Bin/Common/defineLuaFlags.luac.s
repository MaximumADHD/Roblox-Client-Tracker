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

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FixCreatorConfigUrls"]
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
       24 GETIMPORT                        R1 K7 [game]
       26 LOADK                            R3 K11 ["FixCreatorConfigUrls"]
       27 LOADB                            R4 0
       28 NAMECALL                         R1 R1 K9 ["DefineFastFlag"]
       30 CALL                             R1 3 0
       31 DUPTABLE                         R1 K18 [{"getFFlagEnableCreatorConfig", "getFFlagRegisterActionsPluginLoader", "getFFlagEnableCreatorConfigSystemMenu", "getFFlagOnCloseSkipActionTrigger", "getFFlagCreatorConfigDmChangedListener", "getFFlagFixCreatorConfigUrls"}]
       32 MOVE                             R2 R0
       33 LOADK                            R3 K19 ["EnableCreatorConfig"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R1 K12 ["getFFlagEnableCreatorConfig"]
       37 DUPCLOSURE                       R2 K20 [PROTO_0]
       38 SETTABLEKS                       R2 R1 K13 ["getFFlagRegisterActionsPluginLoader"]
       40 MOVE                             R2 R0
       41 LOADK                            R3 K21 ["EnableCreatorConfigSystemMenu"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K14 ["getFFlagEnableCreatorConfigSystemMenu"]
       45 DUPCLOSURE                       R2 K22 [PROTO_1]
       46 SETTABLEKS                       R2 R1 K15 ["getFFlagOnCloseSkipActionTrigger"]
       48 DUPCLOSURE                       R2 K23 [PROTO_2]
       49 SETTABLEKS                       R2 R1 K16 ["getFFlagCreatorConfigDmChangedListener"]
       51 DUPCLOSURE                       R2 K24 [PROTO_3]
       52 SETTABLEKS                       R2 R1 K17 ["getFFlagFixCreatorConfigUrls"]
       54 RETURN                           R1 1
