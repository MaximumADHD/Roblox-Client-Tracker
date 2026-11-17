PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ModerationDialogEnabled"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"getFFlagEnableModerationDialog"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["getFFlagEnableModerationDialog"]
        5 RETURN                           R0 1
