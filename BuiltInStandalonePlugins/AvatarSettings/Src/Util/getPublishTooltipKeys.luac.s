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

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+4]
        7 JUMPIFEQKN                       R0 K0 [0] ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 GETUPVAL                         R5 2
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+6]
       14 JUMPIFNOT                        R2 ; [+5]
       15 JUMPIFNOT                        R1 ; [+4]
       16 JUMPIF                           R4 ; [+3]
       17 LOADK                            R5 K1 ["SaveChangesOutOfRangeTooltip"]
       18 SETTABLEKS                       R5 R3 K2 ["save"]
       20 RETURN                           R3 1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagAvatarSettingsValidateCustomBuildRange"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 DUPCLOSURE                       R4 K11 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 RETURN                           R4 1
