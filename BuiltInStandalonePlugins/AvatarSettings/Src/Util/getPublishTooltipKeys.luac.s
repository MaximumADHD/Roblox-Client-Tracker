PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+3]
        3 NEWTABLE                         R2 0 0
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        8 DUPTABLE                         R2 K5 [{["save"] = "SaveChangesNoUniverseTooltip", ["revert"] = "RevertChangesNoUniverseTooltip"}]
        9 RETURN                           R2 1
       10 JUMPIF                           R1 ; [+2]
       11 DUPTABLE                         R2 K8 [{["save"] = "SaveChangesNoChangesTooltip", ["revert"] = "RevertChangesNoChangesTooltip"}]
       12 RETURN                           R2 1
       13 DUPTABLE                         R2 K11 [{["save"] = "SaveChangesTooltip", ["revert"] = "RevertChangesTooltip"}]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarSettingsEditUnsavedPlace"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
