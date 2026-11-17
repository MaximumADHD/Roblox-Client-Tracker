PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        5 LOADK                            R2 K1 ["CreatePlaceSettingsNoUniverseTooltip"]
        6 RETURN                           R2 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADK                            R2 K2 ["CreatePlaceSettingsTooltip"]
        9 RETURN                           R2 1
       10 LOADK                            R2 K3 ["CreatePlaceSettingsNoChangesTooltip"]
       11 RETURN                           R2 1

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
