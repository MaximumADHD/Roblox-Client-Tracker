PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableInputActionManager"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RegisterActionsPluginLoader"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableInputActionManager"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K6 [{"getFFlagEnableInputActionManager", "getFFlagRegisterActionsPluginLoader"}]
        9 DUPCLOSURE                       R1 K7 [PROTO_0]
       10 SETTABLEKS                       R1 R0 K4 ["getFFlagEnableInputActionManager"]
       12 DUPCLOSURE                       R1 K8 [PROTO_1]
       13 SETTABLEKS                       R1 R0 K5 ["getFFlagRegisterActionsPluginLoader"]
       15 RETURN                           R0 1
